import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../cubit/video_control_cubit.dart';
import 'video_player_widget.dart';

class FullScreenVideoPlayerWidget extends StatelessWidget {
  final VideoPlayerController controller;
  const FullScreenVideoPlayerWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    void toggleFullScreen() {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      Navigator.pop(context);
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocSelector<VideoControlCubit, VideoControlState, bool>(
        selector: (state) {
          return state.isShowButton;
        },
        builder: (context, showButton) {
          return GestureDetector(
            onTap: () => showButton
                ? context
                    .read<VideoControlCubit>()
                    .isShowButton(controller.value.isPlaying, false)
                : context
                    .read<VideoControlCubit>()
                    .isShowButton(controller.value.isPlaying, true),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Center(
                  child: AspectRatio(
                      aspectRatio: controller.value.aspectRatio,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          VideoPlayer(controller),
                        ],
                      )),
                ),
                showButton
                    ? ControlsOverlay(
                        controller: controller,
                        toggleFullScreen: toggleFullScreen,
                      )
                    : const SizedBox(),
                VideoProgressIndicator(controller, allowScrubbing: true),
              ],
            ),
          );
        },
      ),
    );
  }
}
