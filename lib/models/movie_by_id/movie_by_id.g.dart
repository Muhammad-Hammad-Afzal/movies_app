// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_by_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesByIdImpl _$$MoviesByIdImplFromJson(Map<String, dynamic> json) =>
    _$MoviesByIdImpl(
      rank: (json['rank'] as num).toInt(),
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      rating: json['rating'] as String,
      id: json['id'] as String,
      year: (json['year'] as num).toInt(),
      image: json['image'] as String,
      big_image: json['big_image'] as String,
      description: json['description'] as String,
      trailer: json['trailer'] as String,
      trailer_embed_link: json['trailer_embed_link'] as String,
      trailer_youtube_id: json['trailer_youtube_id'] as String,
      genre: (json['genre'] as List<dynamic>).map((e) => e as String).toList(),
      director:
          (json['director'] as List<dynamic>).map((e) => e as String).toList(),
      writers:
          (json['writers'] as List<dynamic>).map((e) => e as String).toList(),
      imdbid: json['imdbid'] as String,
      imdb_link: json['imdb_link'] as String,
    );

Map<String, dynamic> _$$MoviesByIdImplToJson(_$MoviesByIdImpl instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'rating': instance.rating,
      'id': instance.id,
      'year': instance.year,
      'image': instance.image,
      'big_image': instance.big_image,
      'description': instance.description,
      'trailer': instance.trailer,
      'trailer_embed_link': instance.trailer_embed_link,
      'trailer_youtube_id': instance.trailer_youtube_id,
      'genre': instance.genre,
      'director': instance.director,
      'writers': instance.writers,
      'imdbid': instance.imdbid,
      'imdb_link': instance.imdb_link,
    };
