// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsDto _$$_NewsDtoFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_NewsDto',
      json,
      ($checkedConvert) {
        final val = _$_NewsDto(
          url: $checkedConvert('url', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          source: $checkedConvert(
              'source', (v) => NewsSource.fromJson(v as Map<String, dynamic>)),
          publishedAt: $checkedConvert(
              'publishedAt', (v) => DateTime.parse(v as String)),
          description: $checkedConvert('description', (v) => v as String?),
          urlToImage: $checkedConvert('urlToImage', (v) => v as String?),
          content: $checkedConvert('content', (v) => v as String?),
          author: $checkedConvert('author', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_NewsDtoToJson(_$_NewsDto instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'source': instance.source,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'description': instance.description,
      'urlToImage': instance.urlToImage,
      'content': instance.content,
      'author': instance.author,
    };
