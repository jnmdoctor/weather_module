// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsApiResponse _$$_NewsApiResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_NewsApiResponse',
      json,
      ($checkedConvert) {
        final val = _$_NewsApiResponse(
          totalResults: $checkedConvert('totalResults', (v) => v as int),
          status: $checkedConvert('status', (v) => v as String),
          articles: $checkedConvert(
              'articles',
              (v) => (v as List<dynamic>)
                  .map((e) => NewsDto.fromJson(e as Map<String, dynamic>))
                  .toList()),
          message: $checkedConvert('message', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_NewsApiResponseToJson(_$_NewsApiResponse instance) =>
    <String, dynamic>{
      'totalResults': instance.totalResults,
      'status': instance.status,
      'articles': instance.articles,
      'message': instance.message,
    };
