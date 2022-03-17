import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_module/core/error/failures.dart';
import 'package:weather_module/weather/domain/repositories/weather_information_repository.dart';
import 'package:weather_module/weather/domain/usecases/get_weather_information.dart';
import 'package:weather_module/weather/domain/entities/weather.dart';

class MockWeatherInformationRepository extends Mock
    implements IWeatherInformationRepository {}

void main() {
  late GetWeatherForCity usecase;
  late MockWeatherInformationRepository mockWeatherInformationRepository;

  setUp(() {
    mockWeatherInformationRepository = MockWeatherInformationRepository();
    usecase = GetWeatherForCity(mockWeatherInformationRepository);
  });

  const String tValidCityName = 'Sample Valid City';
  final DateTime dateWeatherRetrieved = DateTime.now();
  Temperature temperature = const Temperature(value: 10);
  final Weather tWeather = Weather(
      condition: WeatherCondition.clear,
      lastUpdated: dateWeatherRetrieved,
      location: 'Sample Location',
      temperature: temperature);

  group('GetWeatherForCity', () {
    test('should return weather information from the repository', () async {
      when(() => mockWeatherInformationRepository.getWeatherForCity(
          tValidCityName)).thenAnswer((_) async => Right(tWeather));

      final result =
          await usecase(const WeatherForCityParams(city: tValidCityName));

      expect(result, Right(tWeather));
      verify(() =>
          mockWeatherInformationRepository.getWeatherForCity(tValidCityName));
      verifyNoMoreInteractions(mockWeatherInformationRepository);
    });

    test('should return ServerFailure when the repository returns a failure',
        () async {
      when(() => mockWeatherInformationRepository.getWeatherForCity(
          tValidCityName)).thenAnswer((_) async => Left(ServerFailure()));

      final result =
          await usecase(const WeatherForCityParams(city: tValidCityName));

      expect(result, Left(ServerFailure()));
      verify(() =>
          mockWeatherInformationRepository.getWeatherForCity(tValidCityName));
      verifyNoMoreInteractions(mockWeatherInformationRepository);
    });
  });
}
