import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
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

  final String tValidCityName = 'Sample Valid City';
  final DateTime dateWeatherRetrieved = DateTime.now();
  Temperature temperature = const Temperature(value: 10);
  final Weather tWeather = Weather(
      condition: WeatherCondition.clear,
      lastUpdated: dateWeatherRetrieved,
      location: 'Sample Location',
      temperature: temperature);

  test('Should retrieve weather information from the repository', () async {
    // arrange
    when(() =>
            mockWeatherInformationRepository.getWeatherForCity(tValidCityName))
        .thenAnswer((_) async => Right(tWeather));

    // act
    final result = await usecase(WeatherForCityParams(city: tValidCityName));

    // assert
    expect(result, Right(tWeather));
    verify(() =>
        mockWeatherInformationRepository.getWeatherForCity(tValidCityName));
    verifyNoMoreInteractions(mockWeatherInformationRepository);
  });
}
