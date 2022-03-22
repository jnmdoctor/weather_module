// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationDto _$$_LocationDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_LocationDto',
      json,
      ($checkedConvert) {
        final val = _$_LocationDto(
          title: $checkedConvert('title', (v) => v as String),
          woeid: $checkedConvert('woeid', (v) => v as int),
          locationType: $checkedConvert(
              'location_type', (v) => $enumDecode(_$LocationTypeEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'locationType': 'location_type'},
    );

Map<String, dynamic> _$$_LocationDtoToJson(_$_LocationDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'woeid': instance.woeid,
      'location_type': _$LocationTypeEnumMap[instance.locationType],
    };

const _$LocationTypeEnumMap = {
  LocationType.city: 'City',
  LocationType.region: 'Region',
  LocationType.state: 'State',
  LocationType.province: 'Province',
  LocationType.country: 'Country',
  LocationType.continent: 'Continent',
};
