import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:venteny_test/core/bloc_status.dart';
import 'package:venteny_test/domain/video_player/entity/media.dart';
import 'package:venteny_test/domain/video_player/usecase/get_all_media.dart';

part 'media_state.dart';
part 'media_cubit.freezed.dart';

@lazySingleton
class MediaCubit extends Cubit<MediaState> {
  final GetAllMedia _getAllMedia;
  MediaCubit(this._getAllMedia) : super(const MediaState()) {
    getAllMedia();
  }

  void getAllMedia() async {
    var params = GetAllMediaParams();
    var response = await _getAllMedia(params);

    response.fold((l) => emit(state.copyWith(message: l.messages)),
        (r) => emit(state.copyWith(data: r)));
  }
}
