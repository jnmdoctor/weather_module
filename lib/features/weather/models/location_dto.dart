import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_module/features/weather/models/location_model.dart';

part 'location_dto.freezed.dart';
part 'location_dto.g.dart';

enum LocationType {
  @JsonValue('City')
  city,
  @JsonValue('Region')
  region,
  @JsonValue('State')
  state,
  @JsonValue('Province')
  province,
  @JsonValue('Country')
  country,
  @JsonValue('Continent')
  continent
}

@freezed
///A data transfer object that represents an `article` from the newsapi.org returned json response
class LocationDto with _$LocationDto {
  const LocationDto._();

  factory LocationDto({
    required String title,
    required int woeid,
    @JsonKey(name: 'location_type') required LocationType locationType,
  }) = _LocationDto;

  factory LocationDto.mockData(int id) => LocationDto(
    title: 'Manila',
    locationType: LocationType.city,
    woeid: 1199477,
  );

  ///Creates a [LocationDto] model from [json]
  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);

  ///Creates a model out of the DTO
  LocationModel toModel() => LocationModel(woeid: woeid);
}