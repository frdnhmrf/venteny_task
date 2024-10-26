import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../entity/media.dart';

abstract class VideoPlayerRepository {
  Future<Either<Failure, List<Media>>> getAllMedia(
      String term, MediaType entity);
}
