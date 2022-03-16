import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_module/weather/data/models/location.dart';
import '../../../fixtures/fixture_reader.dart';

void main() {
  LatLng tLatLng = const LatLng(latitude: 14.609620, longitude: 121.005890);
  final Location tLocation = Location(
      title: 'Manila',
      locationType: LocationType.city,
      latLng: tLatLng,
      woeid: 1199477);

  group('JSON conversion', () {
    test('convert from JSON', () {
      List<dynamic> locationList = json.decode(fixture('location.json'));
      Map<String, dynamic> jsonMap = locationList.first;
      final result = Location.fromJson(jsonMap);
      expect(result, tLocation);
    });
  });
}
