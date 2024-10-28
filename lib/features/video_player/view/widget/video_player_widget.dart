// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venteny_test/core/resources/styles.dart';
import 'package:venteny_test/core/widgets/loader.dart';
import 'package:video_player/video_player.dart';

import 'package:venteny_test/features/video_player/view/cubit/video_control_cubit.dart';

import 'full_screen_video_player_widget.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String path;
  const VideoPlayerWidget({
    super.key,
    required this.path,
  });

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget>
    with WidgetsBindingObserver {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.path),
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    );

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.play();
    _initializeVideoPlayerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controller.dispose();
    super.dispose();
  }

  void _toggleFullScreen() {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    if (isPortrait) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              FullScreenVideoPlayerWidget(controller: _controller),
        ),
      );

      context
          .read<VideoControlCubit>()
          .isShowButton(_controller.value.isPlaying, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          bool isShowButton = context
              .select((VideoControlCubit cubit) => cubit.state.isShowButton);
          return AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: BlocSelector<VideoControlCubit, VideoControlState, bool>(
              selector: (state) {
                return state.isShowButton;
              },
              builder: (context, showButton) {
                return GestureDetector(
                  onTap: () => showButton
                      ? context
                          .read<VideoControlCubit>()
                          .isShowButton(_controller.value.isPlaying, false)
                      : context
                          .read<VideoControlCubit>()
                          .isShowButton(_controller.value.isPlaying, true),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      VideoPlayer(_controller),
                      isShowButton
                          ? ControlsOverlay(
                              controller: _controller,
                              toggleFullScreen: _toggleFullScreen,
                            )
                          : const SizedBox(),
                      VideoProgressIndicator(_controller, allowScrubbing: true),
                    ],
                  ),
                );
              },
            ),
          );
        } else {
          return const Center(
            child: LoadingScreen(
              size: 100,
            ),
          );
        }
      },
    );
  }
}

class ControlsOverlay extends StatelessWidget {
  const ControlsOverlay({
    super.key,
    required this.controller,
    required this.toggleFullScreen,
  });

  final VideoPlayerController controller;
  final VoidCallback toggleFullScreen;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<VideoControlCubit, VideoControlState, bool>(
      selector: (state) {
        return state.isShowButton;
      },
      builder: (context, showButton) {
        return Stack(
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 50),
              reverseDuration: const Duration(milliseconds: 200),
              child: ColoredBox(
                color: Colors.black26,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: controller.value.position.inSeconds <= 0
                            ? null
                            : () {
                                controller.seekTo(Duration(
                                    seconds:
                                        controller.value.position.inSeconds -
                                            10));
                              },
                        icon: const Icon(
                          Icons.replay_10,
                          color: Colors.white,
                          size: 30.0,
                          semanticLabel: 'Replay 10',
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          void pauseVideo() {
                            controller.pause();
                            context
                                .read<VideoControlCubit>()
                                .isShowButton(controller.value.isPlaying, true);
                          }

                          void playVideo() {
                            controller.play();
                            context.read<VideoControlCubit>().isShowButton(
                                controller.value.isPlaying, false);
                          }

                          controller.value.isPlaying
                              ? pauseVideo()
                              : playVideo();
                        },
                        icon: Icon(
                          controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          color: Colors.white,
                          size: 100.0,
                          semanticLabel: 'Play',
                        ),
                      ),
                      IconButton(
                        onPressed: controller.value.position.inSeconds ==
                                controller.value.duration.inSeconds
                            ? null
                            : () {
                                controller.seekTo(Duration(
                                    seconds:
                                        controller.value.position.inSeconds +
                                            10));
                              },
                        icon: const Icon(
                          Icons.forward_10,
                          color: Colors.white,
                          size: 30.0,
                          semanticLabel: 'Forward 10',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                onPressed: toggleFullScreen,
                icon: Icon(
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? Icons.fullscreen
                      : Icons.fullscreen_exit,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                color: Colors.white.withOpacity(0.1),
                padding: const EdgeInsets.all(0.5),
                child: PopupMenuButton<double>(
                  initialValue: controller.value.playbackSpeed,
                  tooltip: 'Playback speed',
                  onSelected: (double speed) {
                    controller.setPlaybackSpeed(speed);
                  },
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuItem<double>>[
                      for (final double speed in [0.5, 1.0, 1.5, 2.0, 3.0, 5.0])
                        PopupMenuItem<double>(
                          value: speed,
                          child: Text(
                            '${speed}x',
                            style: TextStyles.labelSm(context),
                          ),
                        )
                    ];
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                    child: Text('${controller.value.playbackSpeed}x'),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
