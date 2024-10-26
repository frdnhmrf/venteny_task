import 'package:injectable/injectable.dart';
import 'package:venteny_test/data/video_player/model/media_model.dart';

import '../../../core/error/exception.dart';
import '../../../core/services/database/db_connection.dart';
import '../../../domain/video_player/entity/media.dart';

abstract class VideoPlayerRemoteDatasource {
  Future<List<MediaModel>> getAllMedia(String term, MediaType entity);
}

@Singleton(as: VideoPlayerRemoteDatasource)
class VideoPlayerRemoteDatasourceImpl extends DBConnection
    implements VideoPlayerRemoteDatasource {
  VideoPlayerRemoteDatasourceImpl();

  @override
  Future<List<MediaModel>> getAllMedia(String term, MediaType entity) async {
    try {
      Map<String, dynamic> data = await get(
        'search',
        queryParameters: {
          'term': term,
          'entity': entity,
        },
      );

      if (data['resultCount'] != 0) {
        return data['results']
            .map(
              (val) => MediaModel.fromJson(val),
            )
            .toList();
      }
      return [];
    } on CustomException {
      rethrow;
    } catch (e) {
      throw CustomException('Connection Error');
    }
  }
}
