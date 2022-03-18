// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsSource _$$_NewsSourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_NewsSource',
      json,
      ($checkedConvert) {
        final val = _$_NewsSource(
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_NewsSourceToJson(_$_NewsSource instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
