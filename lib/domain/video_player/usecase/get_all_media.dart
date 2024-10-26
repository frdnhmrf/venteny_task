import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:venteny_test/domain/video_player/repository/video_player_repository.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entity/media.dart';

@lazySingleton
class GetAllMedia extends UseCase<List<Media>, GetProductsParams> {
  final VideoPlayerRepository productRepository;
  GetAllMedia({
    required this.productRepository,
  });

  @override
  Future<Either<Failure, List<Media>>> call(GetProductsParams params) {
    return productRepository.getAllMedia(params.term, params.entity);
  }
}

class GetProductsParams {
  final String term;
  final MediaType entity;
  GetProductsParams({
    this.term = 'jack',
    this.entity = MediaType.movie,
  });
}
