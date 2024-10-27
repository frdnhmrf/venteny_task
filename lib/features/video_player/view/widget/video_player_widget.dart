// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venteny_test/features/video_player/view/widget/cubit/video_control_cubit.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String path;
  const VideoPlayerWidget({
    super.key,
    required this.path,
  });

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
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
    _controller.dispose();
    super.dispose();
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
                            ? _ControlsOverlay(controller: _controller)
                            : const SizedBox(),
                        VideoProgressIndicator(_controller,
                            allowScrubbing: true),
                      ],
                    ),
                  );
                },
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}

class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({required this.controller});

  static const List<double> _examplePlaybackRates = <double>[
    0.25,
    0.5,
    1.0,
    1.5,
    2.0,
    3.0,
    5.0,
    10.0,
  ];

  final VideoPlayerController controller;

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

            // Align(
            //   alignment: Alignment.topLeft,
            //   child: PopupMenuButton<Duration>(
            //     initialValue: controller.value.captionOffset,
            //     tooltip: 'Caption Offset',
            //     onSelected: (Duration delay) {
            //       controller.setCaptionOffset(delay);
            //     },
            //     itemBuilder: (BuildContext context) {
            //       return <PopupMenuItem<Duration>>[
            //         for (final Duration offsetDuration in _exampleCaptionOffsets)
            //           PopupMenuItem<Duration>(
            //             value: offsetDuration,
            //             child: Text('${offsetDuration.inMilliseconds}ms'),
            //           )
            //       ];
            //     },
            //     child: Padding(
            //       padding: const EdgeInsets.symmetric(
            //         vertical: 12,
            //         horizontal: 16,
            //       ),
            //       child: Text('${controller.value.captionOffset.inMilliseconds}ms'),
            //     ),
            //   ),
            // ),
            Align(
              alignment: Alignment.topRight,
              child: PopupMenuButton<double>(
                initialValue: controller.value.playbackSpeed,
                tooltip: 'Playback speed',
                onSelected: (double speed) {
                  controller.setPlaybackSpeed(speed);
                },
                itemBuilder: (BuildContext context) {
                  return <PopupMenuItem<double>>[
                    for (final double speed in _examplePlaybackRates)
                      PopupMenuItem<double>(
                        value: speed,
                        child: Text('${speed}x'),
                      )
                  ];
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    // Using less vertical padding as the text is also longer
                    // horizontally, so it feels like it would need more spacing
                    // horizontally (matching the aspect ratio of the video).
                    vertical: 12,
                    horizontal: 16,
                  ),
                  child: Text('${controller.value.playbackSpeed}x'),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
