part of 'video_control_cubit.dart';

@freezed
class VideoControlState with _$VideoControlState {
  const VideoControlState._();
  const factory VideoControlState({
    @Default(BlocStatus.Initial) BlocStatus status,
    VideoPlayerController? controller,
    Media? media,
    @Default(false) bool isPlaying,
    @Default(false) bool isShowButton,
  }) = _VideoControlState;
}
