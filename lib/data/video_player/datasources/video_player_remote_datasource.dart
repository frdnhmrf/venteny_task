import 'package:flutter/material.dart';
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
      Map<dynamic, dynamic> data = await get(
        'search',
        queryParameters: {
          'term': term,
          'entity': entity.name,
        },
      );

      List<dynamic> list = data['results'];

      return list.map((e) => MediaModel.fromJson(e)).toList();
    } on CustomException {
      rethrow;
    } catch (e) {
      debugPrint('error $e');
      throw CustomException('Connection Error');
    }
  }
}
