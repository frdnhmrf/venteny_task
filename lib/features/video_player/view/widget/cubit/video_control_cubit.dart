import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:venteny_test/core/bloc_status.dart';
import 'package:venteny_test/domain/video_player/entity/media.dart';
import 'package:video_player/video_player.dart';

part 'video_control_state.dart';
part 'video_control_cubit.freezed.dart';

class VideoControlCubit extends Cubit<VideoControlState> {
  VideoControlCubit() : super(const VideoControlState());

  void playMedia({Media? media}) {
    if (state.media != null) {
      if (media?.trackId != state.media!.trackId) {
        emit(state.copyWith(
          isPlaying: false,
          isShowButton: false,
          media: null,
          status: BlocStatus.Initial,
        ));
      }
    }
    emit(state.copyWith(status: BlocStatus.Loading));

    emit(
      state.copyWith(
        media: media,
        status: BlocStatus.Loaded,
      ),
    );
  }

  void exitPlay() {
    emit(state.copyWith(
      isPlaying: false,
      isShowButton: false,
      media: null,
      status: BlocStatus.Initial,
    ));
  }

  void isShowButton(bool isPlaying, bool isShowButton) {
    emit(
      state.copyWith(
        isPlaying: isPlaying,
        isShowButton: isShowButton,
      ),
    );
  }
}
