// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cross_connectivity/cross_connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/network/network_service.dart' as _i6;
import '../core/platform_channels/weather_method_channel.dart' as _i17;
import '../features/core/network/network_cubit.dart' as _i12;
import '../features/navigation/cubit/navigation_cubit.dart' as _i19;
import '../features/news/repositories/mock_news_information_repository.dart'
    as _i8;
import '../features/news/repositories/news_information_client.dart' as _i13;
import '../features/news/repositories/news_information_repository.dart' as _i7;
import '../features/news/viewmodels/news_cubit.dart' as _i20;
import '../features/preferences/data/datasources/preferences_datasource.dart'
    as _i9;
import '../features/preferences/data/repositories/preferences_repository_impl.dart'
    as _i11;
import '../features/preferences/domain/repositories/preferences_repository.dart'
    as _i10;
import '../features/settings/presentation/cubit/settings_cubit.dart' as _i14;
import '../features/weather/domain/usecases/get_weather_information.dart'
    as _i21;
import '../features/weather/repositories/weather_information_client.dart'
    as _i16;
import '../features/weather/repositories/weather_information_repository.dart'
    as _i18;
import '../features/weather/state_management/theme_cubit.dart' as _i15;
import '../features/weather/viewmodels/weather_cubit.dart' as _i22;
import 'injection_module.dart' as _i23;
import 'mock_injection_module.dart' as _i4;

const String _prod = 'prod';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final externalPackageDependencies = _$ExternalPackageDependencies();
  gh.lazySingleton<_i3.Connectivity>(
      () => externalPackageDependencies.connectivity,
      registerFor: {_prod});
  gh.lazySingleton<_i3.Connectivity>(() => _i4.MockConnectivity(),
      registerFor: {_test});
  gh.lazySingleton<_i5.Dio>(() => externalPackageDependencies.dio,
      registerFor: {_prod});
  gh.lazySingleton<_i5.Dio>(() => _i4.MockDio(), registerFor: {_test});
  gh.lazySingleton<_i6.INetworkService>(
      () => _i6.NetworkService(get<_i3.Connectivity>()));
  gh.lazySingleton<_i7.INewsInformationRepository>(
      () => _i8.MockNewsInformationRepository(),
      registerFor: {_test});
  gh.lazySingleton<_i9.IPreferencesDataSource>(
      () => _i9.PreferencesDataSource(),
      registerFor: {_prod});
  gh.lazySingleton<_i10.IPreferencesRepository>(
      () => _i11.PreferencesRepositoryImpl(
          preferencesDataSource: get<_i9.IPreferencesDataSource>()),
      registerFor: {_prod});
  gh.factory<_i12.NetworkCubit>(
      () => _i12.NetworkCubit(get<_i6.INetworkService>()),
      registerFor: {_prod});
  gh.lazySingleton<_i13.NewsInformationClient>(
      () => externalPackageDependencies.newsclient,
      registerFor: {_prod});
  gh.lazySingleton<_i13.NewsInformationClient>(
      () => _i4.MockNewsInformationClient(),
      registerFor: {_test});
  gh.factory<_i14.SettingsCubit>(
      () => _i14.SettingsCubit(get<_i10.IPreferencesRepository>()),
      registerFor: {_prod});
  gh.factory<_i15.ThemeCubit>(() => _i15.ThemeCubit(), registerFor: {_prod});
  gh.lazySingleton<_i16.WeatherInformationClient>(
      () => externalPackageDependencies.weatherClient,
      registerFor: {_prod});
  gh.lazySingleton<_i16.WeatherInformationClient>(
      () => _i4.MockWeatherInformationClient(),
      registerFor: {_test});
  gh.singleton<_i17.WeatherMethodChannel>(
      externalPackageDependencies.weatherMethodChannel,
      registerFor: {_prod});
  gh.lazySingleton<_i17.WeatherMethodChannel>(
      () => _i4.MockWeatherMethodChannel(),
      registerFor: {_test});
  gh.lazySingleton<_i7.INewsInformationRepository>(
      () => _i7.NewsInformationRepository(
          client: get<_i13.NewsInformationClient>()),
      registerFor: {_prod});
  gh.lazySingleton<_i18.IWeatherInformationRepository>(
      () => _i18.WeatherInformationRepositoryImpl(
          client: get<_i16.WeatherInformationClient>()),
      registerFor: {_prod});
  gh.factory<_i19.NavigationCubit>(
      () => _i19.NavigationCubit(get<_i17.WeatherMethodChannel>()),
      registerFor: {_prod});
  gh.factory<_i20.NewsCubit>(
      () => _i20.NewsCubit(repository: get<_i7.INewsInformationRepository>()),
      registerFor: {_prod});
  gh.lazySingleton<_i21.GetWeatherForCity>(
      () => _i21.GetWeatherForCity(get<_i18.IWeatherInformationRepository>()),
      registerFor: {_prod});
  gh.factory<_i22.WeatherCubit>(
      () => _i22.WeatherCubit(
          weatherForCity: get<_i21.GetWeatherForCity>(),
          methodChannel: get<_i17.WeatherMethodChannel>(),
          preferences: get<_i10.IPreferencesRepository>()),
      registerFor: {_prod});
  return get;
}

class _$ExternalPackageDependencies extends _i23.ExternalPackageDependencies {}
