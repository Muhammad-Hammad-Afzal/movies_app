import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies.freezed.dart';
part 'movies.g.dart';

@freezed
class Movies with _$Movies{
  const factory Movies({
    required int rank,
    required String  title,
    required String  description,
    required String  image,
    required String  big_image,
    required List  genre,
    required String thumbnail,
    required String rating,
    required String id,
    required int year,
    required String imdbid,
    required String imdb_link,


}) = _Movies;

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);
}