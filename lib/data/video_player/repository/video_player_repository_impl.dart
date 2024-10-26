import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:venteny_test/core/error/failures.dart';
import 'package:venteny_test/data/video_player/datasources/video_player_remote_datasource.dart';
import 'package:venteny_test/domain/video_player/entity/media.dart';

import '../../../core/error/exception.dart';
import '../../../domain/video_player/repository/video_player_repository.dart';

@Injectable(as: VideoPlayerRepository)
class VideoPlayerRepositoryImpl implements VideoPlayerRepository {
  final VideoPlayerRemoteDatasource _datasource;

  VideoPlayerRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, List<Media>>> getAllMedia(
      String term, MediaType entity) async {
    try {
      var response = await _datasource.getAllMedia(term, entity);
      return right(response.map((model) => model.toEntity()).toList());
    } catch (e, st) {
      return ExceptionHandler<List<Media>>().onRepo(e, st);
    }
  }
}
