part of 'media_cubit.dart';

@freezed
class MediaState with _$MediaState {
  const MediaState._();
  const factory MediaState({
    @Default(BlocStatus.Loading) BlocStatus status,
    @Default([]) List<Media> data,
    String? message,
  }) = _MediaState;
}
