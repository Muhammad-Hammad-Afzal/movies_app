import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_by_id.freezed.dart';
part 'movie_by_id.g.dart';

@freezed
class MoviesById with _$MoviesById{
  const factory MoviesById({
    required int rank,
    required String title,
    required String thumbnail,
    required String rating,
    required String id,
    required int year,
    required String image,
    required String big_image,
    required String description,
    required String trailer,
    required String trailer_embed_link,
    required String trailer_youtube_id,
    required List<String> genre,
    required List<String> director,
    required List<String> writers,
    required String imdbid,
    required String imdb_link,

}) = _MoviesById;

  factory MoviesById.fromJson(Map<String, dynamic> json) => _$MoviesByIdFromJson(json);

}