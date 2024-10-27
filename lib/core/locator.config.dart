// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:venteny_test/core/services/database/db_connection.dart'
    as _i207;
import 'package:venteny_test/data/video_player/datasources/video_player_remote_datasource.dart'
    as _i297;
import 'package:venteny_test/data/video_player/repository/video_player_repository_impl.dart'
    as _i34;
import 'package:venteny_test/domain/video_player/repository/video_player_repository.dart'
    as _i937;
import 'package:venteny_test/domain/video_player/usecase/get_all_media.dart'
    as _i887;
import 'package:venteny_test/features/video_player/cubit/media_cubit.dart'
    as _i609;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i207.DBConnection>(() => _i207.DBConnection());
    gh.singleton<_i297.VideoPlayerRemoteDatasource>(
        () => _i297.VideoPlayerRemoteDatasourceImpl());
    gh.factory<_i937.VideoPlayerRepository>(() =>
        _i34.VideoPlayerRepositoryImpl(
            gh<_i297.VideoPlayerRemoteDatasource>()));
    gh.lazySingleton<_i887.GetAllMedia>(() => _i887.GetAllMedia(
        productRepository: gh<_i937.VideoPlayerRepository>()));
    gh.lazySingleton<_i609.MediaCubit>(
        () => _i609.MediaCubit(gh<_i887.GetAllMedia>()));
    return this;
  }
}
