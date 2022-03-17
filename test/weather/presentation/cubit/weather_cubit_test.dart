import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:weather_module/core/error/failures.dart';
import 'package:weather_module/core/platform_channels/weather_method_channel.dart';
import 'package:weather_module/preferences/domain/repositories/preferences_repository.dart';
import 'package:weather_module/weather/domain/usecases/get_weather_information.dart';
import 'package:weather_module/weather/weather.dart';

class MockGetWeatherForCity extends Mock implements GetWeatherForCity {}

class MockWeatherMethodChannel extends Mock implements WeatherMethodChannel {}

class MockPreferencesRepository extends Mock implements IPreferencesRepository {
}

void main() {
  final MockGetWeatherForCity mockGetWeatherForCity = MockGetWeatherForCity();
  final MockWeatherMethodChannel mockWeatherMethodChannel =
      MockWeatherMethodChannel();
  final MockPreferencesRepository mockPreferencesRepository =
      MockPreferencesRepository();

  String tValidCity = 'Valid City';
  final DateTime dateWeatherRetrieved = DateTime.now();
  Temperature temperature = const Temperature(value: 10);
  final Weather tWeather = Weather(
      condition: WeatherCondition.clear,
      lastUpdated: dateWeatherRetrieved,
      location: 'Sample Location',
      temperature: temperature);

  group('fetchWeather', () {
    blocTest<WeatherCubit, WeatherState>(
        'should emit success state for a successful call to get weather use case',
        build: () {
          when(() =>
                  mockGetWeatherForCity(WeatherForCityParams(city: tValidCity)))
              .thenAnswer((_) async => Right(tWeather));
          when(() => mockPreferencesRepository.getUseMetricUnitsData())
              .thenAnswer((_) => Future.value(true));
          return WeatherCubit(
              weatherForCity: mockGetWeatherForCity,
              methodChannel: mockWeatherMethodChannel,
              preferences: mockPreferencesRepository);
        },
        act: (WeatherCubit weatherCubit) {
          weatherCubit.fetchWeather(tValidCity);
        },
        expect: () => [
              const WeatherState.loading(),
              WeatherState.success(tWeather),
            ],
        verify: (WeatherCubit weatherCubit) {
          verify(() =>
              mockGetWeatherForCity(WeatherForCityParams(city: tValidCity)));
          verify(() => mockPreferencesRepository.getUseMetricUnitsData());
          verifyNever(() => mockWeatherMethodChannel.get(
              methodChannelData: MethodChannelData.cityName));
        });

    blocTest<WeatherCubit, WeatherState>(
        'should emit failure state for a failed call to get weather use case',
        build: () {
          when(() =>
                  mockGetWeatherForCity(WeatherForCityParams(city: tValidCity)))
              .thenAnswer((_) async => Left(ServerFailure()));
          return WeatherCubit(
              weatherForCity: mockGetWeatherForCity,
              methodChannel: mockWeatherMethodChannel,
              preferences: mockPreferencesRepository);
        },
        act: (WeatherCubit weatherCubit) {
          weatherCubit.fetchWeather(tValidCity);
        },
        expect: () => [
              const WeatherState.loading(),
              const WeatherState.failure(),
            ],
        verify: (WeatherCubit weatherCubit) {
          verify(() =>
              mockGetWeatherForCity(WeatherForCityParams(city: tValidCity)));
          verifyNever(() => mockPreferencesRepository.getUseMetricUnitsData());
          verifyNever(() => mockWeatherMethodChannel.get(
              methodChannelData: MethodChannelData.cityName));
        });
  });

  group('fetchWeatherFromNative', () {
    blocTest<WeatherCubit, WeatherState>(
        'should emit success state for a successful call to get weather use case',
        build: () {
          when(() => mockWeatherMethodChannel.get(
                  methodChannelData: MethodChannelData.cityName))
              .thenAnswer((_) => Future.value(tValidCity));
          when(() =>
                  mockGetWeatherForCity(WeatherForCityParams(city: tValidCity)))
              .thenAnswer((_) async => Right(tWeather));
          when(() => mockPreferencesRepository.getUseMetricUnitsData())
              .thenAnswer((_) => Future.value(true));
          return WeatherCubit(
              weatherForCity: mockGetWeatherForCity,
              methodChannel: mockWeatherMethodChannel,
              preferences: mockPreferencesRepository);
        },
        act: (WeatherCubit weatherCubit) {
          weatherCubit.fetchWeatherFromNative();
        },
        expect: () => [
              const WeatherState.loading(),
              WeatherState.success(tWeather),
            ],
        verify: (WeatherCubit weatherCubit) {
          verify(() =>
              mockGetWeatherForCity(WeatherForCityParams(city: tValidCity)));
          verify(() => mockPreferencesRepository.getUseMetricUnitsData());
          verify(() => mockWeatherMethodChannel.get(
              methodChannelData: MethodChannelData.cityName));
        });

    blocTest<WeatherCubit, WeatherState>(
        'should emit failure state for a failed call to get weather use case',
        build: () {
          when(() => mockWeatherMethodChannel.get(
                  methodChannelData: MethodChannelData.cityName))
              .thenAnswer((_) => Future.value(tValidCity));
          when(() =>
                  mockGetWeatherForCity(WeatherForCityParams(city: tValidCity)))
              .thenAnswer((_) async => Left(ServerFailure()));
          return WeatherCubit(
              weatherForCity: mockGetWeatherForCity,
              methodChannel: mockWeatherMethodChannel,
              preferences: mockPreferencesRepository);
        },
        act: (WeatherCubit weatherCubit) {
          weatherCubit.fetchWeatherFromNative();
        },
        expect: () => [
              const WeatherState.loading(),
              const WeatherState.failure(),
            ],
        verify: (WeatherCubit weatherCubit) {
          verify(() =>
              mockGetWeatherForCity(WeatherForCityParams(city: tValidCity)));
          verifyNever(() => mockPreferencesRepository.getUseMetricUnitsData());
          verify(() => mockWeatherMethodChannel.get(
              methodChannelData: MethodChannelData.cityName));
        });
  });

  group('refreshWeather', () {
    blocTest<WeatherCubit, WeatherState>(
        'should not emit any states if called before fetchWeather',
        build: () {
          when(() =>
                  mockGetWeatherForCity(WeatherForCityParams(city: tValidCity)))
              .thenAnswer((_) async => Right(tWeather));
          when(() => mockPreferencesRepository.getUseMetricUnitsData())
              .thenAnswer((_) => Future.value(true));
          return WeatherCubit(
              weatherForCity: mockGetWeatherForCity,
              methodChannel: mockWeatherMethodChannel,
              preferences: mockPreferencesRepository);
        },
        act: (WeatherCubit weatherCubit) {
          weatherCubit.refreshWeather();
        },
        expect: () => [],
        verify: (WeatherCubit weatherCubit) {
          verifyNever(() =>
              mockGetWeatherForCity(WeatherForCityParams(city: tValidCity)));
          verifyNever(() => mockPreferencesRepository.getUseMetricUnitsData());
          verifyNever(() => mockWeatherMethodChannel.get(
              methodChannelData: MethodChannelData.cityName));
        });

    blocTest<WeatherCubit, WeatherState>(
        'should emit success state for a successful call after fetchWeather',
        build: () {
          when(() =>
                  mockGetWeatherForCity(WeatherForCityParams(city: tValidCity)))
              .thenAnswer((_) async => Right(tWeather));
          when(() => mockPreferencesRepository.getUseMetricUnitsData())
              .thenAnswer((_) => Future.value(true));
          return WeatherCubit(
              weatherForCity: mockGetWeatherForCity,
              methodChannel: mockWeatherMethodChannel,
              preferences: mockPreferencesRepository);
        },
        act: (WeatherCubit weatherCubit) async {
          await weatherCubit.fetchWeather(tValidCity);
          weatherCubit.refreshWeather();
        },
        expect: () => [
              const WeatherState.loading(),
              WeatherState.success(tWeather),
            ],
        verify: (WeatherCubit weatherCubit) {
          verify(() =>
              mockGetWeatherForCity(WeatherForCityParams(city: tValidCity)));
          verify(() => mockPreferencesRepository.getUseMetricUnitsData());
          verifyNever(() => mockWeatherMethodChannel.get(
              methodChannelData: MethodChannelData.cityName));
        });
  });
}
