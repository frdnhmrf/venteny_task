import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:venteny_test/domain/video_player/entity/media.dart';

part 'media_model.freezed.dart';
part 'media_model.g.dart';

@freezed
class MediaModel with _$MediaModel {
  const MediaModel._();
  const factory MediaModel({
    @JsonKey(name: "wrapperType") String? wrapperType,
    @JsonKey(name: "kind") String? kind,
    @JsonKey(name: "collectionId") int? collectionId,
    @JsonKey(name: "trackId") int? trackId,
    @JsonKey(name: "artistName") String? artistName,
    @JsonKey(name: "collectionName") String? collectionName,
    @JsonKey(name: "trackName") String? trackName,
    @JsonKey(name: "collectionCensoredName") String? collectionCensoredName,
    @JsonKey(name: "trackCensoredName") String? trackCensoredName,
    @JsonKey(name: "collectionArtistId") int? collectionArtistId,
    @JsonKey(name: "collectionArtistViewUrl") String? collectionArtistViewUrl,
    @JsonKey(name: "collectionViewUrl") String? collectionViewUrl,
    @JsonKey(name: "trackViewUrl") String? trackViewUrl,
    @JsonKey(name: "previewUrl") String? previewUrl,
    @JsonKey(name: "artworkUrl30") String? artworkUrl30,
    @JsonKey(name: "artworkUrl60") String? artworkUrl60,
    @JsonKey(name: "artworkUrl100") String? artworkUrl100,
    @JsonKey(name: "collectionPrice") int? collectionPrice,
    @JsonKey(name: "trackPrice") int? trackPrice,
    @JsonKey(name: "trackRentalPrice") int? trackRentalPrice,
    @JsonKey(name: "collectionHdPrice") int? collectionHdPrice,
    @JsonKey(name: "trackHdPrice") int? trackHdPrice,
    @JsonKey(name: "trackHdRentalPrice") int? trackHdRentalPrice,
    @JsonKey(name: "releaseDate") DateTime? releaseDate,
    @JsonKey(name: "collectionExplicitness") String? collectionExplicitness,
    @JsonKey(name: "trackExplicitness") String? trackExplicitness,
    @JsonKey(name: "discCount") int? discCount,
    @JsonKey(name: "discNumber") int? discNumber,
    @JsonKey(name: "trackCount") int? trackCount,
    @JsonKey(name: "trackNumber") int? trackNumber,
    @JsonKey(name: "trackTimeMillis") int? trackTimeMillis,
    @JsonKey(name: "country") String? country,
    @JsonKey(name: "currency") String? currency,
    @JsonKey(name: "primaryGenreName") String? primaryGenreName,
    @JsonKey(name: "contentAdvisoryRating") String? contentAdvisoryRating,
    @JsonKey(name: "shortDescription") String? shortDescription,
    @JsonKey(name: "longDescription") String? longDescription,
  }) = _MediaModel;

  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      _$MediaModelFromJson(json);

  Media toEntity() => Media(
        artistName: artistName,
        wrapperType: wrapperType,
        kind: kind,
        trackId: trackId,
        artworkUrl100: artworkUrl100,
        artworkUrl30: artworkUrl30,
        artworkUrl60: artworkUrl60,
        contentAdvisoryRating: contentAdvisoryRating,
        collectionArtistId: collectionArtistId,
        collectionArtistViewUrl: collectionArtistViewUrl,
        collectionCensoredName: collectionCensoredName,
        collectionExplicitness: collectionExplicitness,
        collectionHdPrice: collectionHdPrice,
        collectionId: collectionId,
        collectionName: collectionName,
        collectionPrice: collectionPrice,
        collectionViewUrl: collectionViewUrl,
        country: country,
        currency: currency,
        discCount: discCount,
        discNumber: discNumber,
        trackCensoredName: trackCensoredName,
        trackCount: trackCount,
        trackExplicitness: trackExplicitness,
        trackHdPrice: trackHdPrice,
        trackHdRentalPrice: trackHdRentalPrice,
        trackName: trackName,
        trackNumber: trackNumber,
        trackPrice: trackPrice,
        trackRentalPrice: trackHdRentalPrice,
        trackTimeMillis: trackTimeMillis,
        trackViewUrl: trackViewUrl,
        shortDescription: shortDescription,
        longDescription: longDescription,
        releaseDate: releaseDate,
        primaryGenreName: primaryGenreName,
        previewUrl: previewUrl,
      );
}
