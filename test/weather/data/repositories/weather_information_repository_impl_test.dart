import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_module/core/error/exception.dart';
import 'package:weather_module/core/error/failures.dart';
import 'package:weather_module/weather/data/models/location.dart';
import 'package:weather_module/weather/data/models/weather_data_source_model.dart';
import 'package:weather_module/weather/data/datasource/weather_information_data_source.dart';
import 'package:weather_module/weather/data/repositories/weather_information_repository_impl.dart';
import 'package:weather_module/weather/domain/entities/weather.dart';

class MockWeatherInformationDataSource extends Mock
    implements IWeatherInformationDataSource {}

void main() {
  late WeatherInformationRepositoryImpl systemUnderTest;
  late MockWeatherInformationDataSource mockWeatherInformationDataSource;

  setUp(() {
    mockWeatherInformationDataSource = MockWeatherInformationDataSource();
    systemUnderTest = WeatherInformationRepositoryImpl(
        weatherInformationDataSource: mockWeatherInformationDataSource);
  });

  LatLng tLatLng = const LatLng(latitude: 14.609620, longitude: 121.005890);
  const int tWoeId = 1199477;
  const String tLocationTitle = 'Manila';
  final Location tLocation = Location(
      title: tLocationTitle,
      locationType: LocationType.city,
      latLng: tLatLng,
      woeid: tWoeId);

  const double tTheTemp = 30.979999999999997;
  final WeatherDataSourceModel tWeatherDataSourceModel = WeatherDataSourceModel(
      id: 5062572786057216,
      weatherStateName: 'Heavy Rain',
      weatherStateAbbr: WeatherState.heavyRain,
      windDirectionCompass: WindDirectionCompass.unknown,
      created: DateTime.parse('2022-03-16T05:08:34.256936Z'),
      applicableDate: DateTime.parse('2022-03-16'),
      minTemp: 25.564999999999998,
      maxTemp: 32.52,
      theTemp: tTheTemp,
      windSpeed: 5.482846926156578,
      windDirection: 108.84788711139,
      airPressure: 1008,
      humidity: 70,
      visibility: 10.315693847928099,
      predictability: 77);

  final Weather tWeather = Weather(
      condition: WeatherCondition.rainy,
      lastUpdated: DateTime.now(),
      location: tLocationTitle,
      temperature: const Temperature(value: tTheTemp));

  const String tValidCityName = 'SampleValidCity';

  test('Repository should return data from the data source', () async {
    when(() => mockWeatherInformationDataSource.getLocationFromCity(
        tValidCityName)).thenAnswer((_) async => tLocation);
    when(() =>
            mockWeatherInformationDataSource.getWeatherFromLocationId(tWoeId))
        .thenAnswer((_) async => tWeatherDataSourceModel);

    final result = await systemUnderTest.getWeatherForCity(tValidCityName);

    result.fold((failure) => expect(failure, null), (weather) {
      expect(_areWeathersEqualExceptLastUpdated(weather, tWeather), true);
    });

    verify(() => mockWeatherInformationDataSource
        .getLocationFromCity(tValidCityName)).called(1);
    verify(() =>
            mockWeatherInformationDataSource.getWeatherFromLocationId(tWoeId))
        .called(1);
  });

  test(
      'Repository should return ServerFailure when getLocationFromCity throws ServerException',
      () async {
    when(() => mockWeatherInformationDataSource.getLocationFromCity(
        tValidCityName)).thenAnswer((_) async => throw ServerException());
    when(() =>
            mockWeatherInformationDataSource.getWeatherFromLocationId(tWoeId))
        .thenAnswer((_) async => tWeatherDataSourceModel);
    final result = await systemUnderTest.getWeatherForCity(tValidCityName);

    result.fold((failure) => expect(failure, isA<ServerFailure>()), (weather) {
      expect(weather, null);
    });

    verify(() => mockWeatherInformationDataSource
        .getLocationFromCity(tValidCityName)).called(1);
    verifyNever(() =>
        mockWeatherInformationDataSource.getWeatherFromLocationId(tWoeId));
  });

  test(
      'Repository should return ServerFailure when getWeatherFromLocationId throws ServerException',
      () async {
    when(() => mockWeatherInformationDataSource.getLocationFromCity(
        tValidCityName)).thenAnswer((_) async => tLocation);
    when(() =>
            mockWeatherInformationDataSource.getWeatherFromLocationId(tWoeId))
        .thenAnswer((_) async => throw ServerException());
    final result = await systemUnderTest.getWeatherForCity(tValidCityName);

    result.fold((failure) => expect(failure, isA<ServerFailure>()), (weather) {
      expect(weather, null);
    });

    verify(() => mockWeatherInformationDataSource
        .getLocationFromCity(tValidCityName)).called(1);
    verify(() =>
            mockWeatherInformationDataSource.getWeatherFromLocationId(tWoeId))
        .called(1);
  });
}

bool _areWeathersEqualExceptLastUpdated(
    Weather firstWeather, Weather secondWeather) {
  final firstWeatherWithSameLastUpdatedDate =
      firstWeather.copyWith(lastUpdated: secondWeather.lastUpdated);
  return firstWeatherWithSameLastUpdatedDate == secondWeather;
}
