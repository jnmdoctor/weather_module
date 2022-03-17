import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:weather_module/core/error/exception.dart';
import 'package:weather_module/weather/data/datasource/weather_information_data_source.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  late WeatherInformationDataSource systemUnderTest;
  late MockHttpClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    systemUnderTest = WeatherInformationDataSource(httpClient: mockHttpClient);
    registerFallbackValue(Uri());
  });

  group('getLocationFromCity', () {
    test('should throw a ServerException when the status code is not 200',
        () async {
      when(() => mockHttpClient.get(any(), headers: any(named: 'headers')))
          .thenAnswer(
        (_) async => http.Response('Something went wrong', 404),
      );

      expect(systemUnderTest.getLocationFromCity('manila'),
          throwsA(isA<ServerException>()));
      verify(() => mockHttpClient.get(any(), headers: any(named: 'headers')))
          .called(1);
    });
  });

  group('getWeatherFromLocationId', () {
    test('should throw a ServerException when the status code is not 200',
        () async {
      when(() => mockHttpClient.get(any(), headers: any(named: 'headers')))
          .thenAnswer(
        (_) async => http.Response('Something went wrong', 404),
      );

      expect(systemUnderTest.getWeatherFromLocationId(1199477),
          throwsA(isA<ServerException>()));
      verify(() => mockHttpClient.get(any(), headers: any(named: 'headers')))
          .called(1);
    });
  });
}
