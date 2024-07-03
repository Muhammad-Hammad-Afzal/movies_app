// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesImpl _$$MoviesImplFromJson(Map<String, dynamic> json) => _$MoviesImpl(
      rank: (json['rank'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      big_image: json['big_image'] as String,
      genre: json['genre'] as List<dynamic>,
      thumbnail: json['thumbnail'] as String,
      rating: json['rating'] as String,
      id: json['id'] as String,
      year: (json['year'] as num).toInt(),
      imdbid: json['imdbid'] as String,
      imdb_link: json['imdb_link'] as String,
    );

Map<String, dynamic> _$$MoviesImplToJson(_$MoviesImpl instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'big_image': instance.big_image,
      'genre': instance.genre,
      'thumbnail': instance.thumbnail,
      'rating': instance.rating,
      'id': instance.id,
      'year': instance.year,
      'imdbid': instance.imdbid,
      'imdb_link': instance.imdb_link,
    };
