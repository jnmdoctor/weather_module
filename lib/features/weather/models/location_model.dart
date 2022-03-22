import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';

@freezed
///Model containing the title and url of a news item from from the backend.
class LocationModel with _$LocationModel {
  const factory LocationModel({
    required int woeid,
  }) = _LocationModel;
}
