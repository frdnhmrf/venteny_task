// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Media extends Equatable {
  final String? wrapperType;
  final String? kind;
  final int? collectionId;
  final int? trackId;
  final String? artistName;
  final String? collectionName;
  final String? trackName;
  final String? collectionCensoredName;
  final String? trackCensoredName;
  final int? collectionArtistId;
  final String? collectionArtistViewUrl;
  final String? collectionViewUrl;
  final String? trackViewUrl;
  final String? previewUrl;
  final String? artworkUrl30;
  final String? artworkUrl60;
  final String? artworkUrl100;
  final int? collectionPrice;
  final int? trackPrice;
  final int? trackRentalPrice;
  final int? collectionHdPrice;
  final int? trackHdPrice;
  final int? trackHdRentalPrice;
  final DateTime? releaseDate;
  final String? collectionExplicitness;
  final String? trackExplicitness;
  final int? discCount;
  final int? discNumber;
  final int? trackCount;
  final int? trackNumber;
  final int? trackTimeMillis;
  final String? country;
  final String? currency;
  final String? primaryGenreName;
  final String? contentAdvisoryRating;
  final String? shortDescription;
  final String? longDescription;

  const Media({
    this.wrapperType,
    this.kind,
    this.collectionId,
    this.trackId,
    this.artistName,
    this.collectionName,
    this.trackName,
    this.collectionCensoredName,
    this.trackCensoredName,
    this.collectionArtistId,
    this.collectionArtistViewUrl,
    this.collectionViewUrl,
    this.trackViewUrl,
    this.previewUrl,
    this.artworkUrl30,
    this.artworkUrl60,
    this.artworkUrl100,
    this.collectionPrice,
    this.trackPrice,
    this.trackRentalPrice,
    this.collectionHdPrice,
    this.trackHdPrice,
    this.trackHdRentalPrice,
    this.releaseDate,
    this.collectionExplicitness,
    this.trackExplicitness,
    this.discCount,
    this.discNumber,
    this.trackCount,
    this.trackNumber,
    this.trackTimeMillis,
    this.country,
    this.currency,
    this.primaryGenreName,
    this.contentAdvisoryRating,
    this.shortDescription,
    this.longDescription,
  });

  @override
  List<Object?> get props {
    return [
      wrapperType,
      kind,
      collectionId,
      trackId,
      artistName,
      collectionName,
      trackName,
      collectionCensoredName,
      trackCensoredName,
      collectionArtistId,
      collectionArtistViewUrl,
      collectionViewUrl,
      trackViewUrl,
      previewUrl,
      artworkUrl30,
      artworkUrl60,
      artworkUrl100,
      collectionPrice,
      trackPrice,
      trackRentalPrice,
      collectionHdPrice,
      trackHdPrice,
      trackHdRentalPrice,
      releaseDate,
      collectionExplicitness,
      trackExplicitness,
      discCount,
      discNumber,
      trackCount,
      trackNumber,
      trackTimeMillis,
      country,
      currency,
      primaryGenreName,
      contentAdvisoryRating,
      shortDescription,
      longDescription,
    ];
  }
}

enum MediaType {
  movie,
  musicVideo,
}
