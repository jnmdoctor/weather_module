// import 'package:get_it/get_it.dart';
// import 'package:http/http.dart' as http;
// import 'package:weather_module/core/platform_channels/weather_method_channel.dart';
// import 'package:weather_module/features/navigation/cubit/navigation_cubit.dart';
// import 'package:weather_module/features/news/domain/usecases/get_top_news_informations.dart';
// import 'package:weather_module/features/news/repositories/news_information_data_source.dart';
// import 'package:weather_module/features/news/repositories/news_information_repository.dart';
// import 'package:weather_module/features/news/repositories/news_information_repository_impl.dart';
// import 'package:weather_module/features/news/viewmodels/news_cubit.dart';
// import 'package:weather_module/features/preferences/data/datasources/preferences_datasource.dart';
// import 'package:weather_module/features/preferences/data/repositories/preferences_repository_impl.dart';
// import 'package:weather_module/features/preferences/domain/repositories/preferences_repository.dart';
// import 'package:weather_module/features/settings/presentation/cubit/settings_cubit.dart';
// import 'package:weather_module/theme/presentation/cubit/theme_cubit.dart';
// import 'package:weather_module/features/weather/data/datasource/weather_information_data_source.dart';
// import 'package:weather_module/features/weather/data/repositories/weather_information_repository_impl.dart';
// import 'package:weather_module/features/weather/domain/repositories/weather_information_repository.dart';
// import 'package:weather_module/features/weather/domain/usecases/get_weather_information.dart';
// import 'package:weather_module/features/weather/presentation/cubit/weather_cubit.dart';

// final GetIt serviceLocator = GetIt.instance;

// void initServiceLocator() {
//   // Blocs and Cubits
//   serviceLocator.registerFactory(() => WeatherCubit(
//       weatherForCity: serviceLocator.get(),
//       methodChannel: serviceLocator.get(),
//       preferences: serviceLocator.get()));
//   serviceLocator
//       .registerFactory(() => NewsCubit(repository: serviceLocator.get()));
//   serviceLocator.registerFactory(() => NavigationCubit(serviceLocator.get()));
//   serviceLocator.registerFactory(() => ThemeCubit());
//   serviceLocator.registerFactory(() => SettingsCubit(serviceLocator.get()));

//   // Use Cases
//   serviceLocator
//       .registerLazySingleton(() => GetWeatherForCity(serviceLocator.get()));
//   serviceLocator.registerLazySingleton(
//       () => GetTopNewsInformations(serviceLocator.get()));

//   // Repositories
//   serviceLocator.registerLazySingleton<IWeatherInformationRepository>(
//     () => WeatherInformationRepositoryImpl(
//       weatherInformationDataSource: serviceLocator.get(),
//     ),
//   );
//   serviceLocator.registerLazySingleton<INewsInformationRepository>(
//     () => NewsInformationRepositoryImpl(
//       client: serviceLocator.get(),
//     ),
//   );
//   serviceLocator.registerLazySingleton<IPreferencesRepository>(() =>
//       PreferencesRepositoryImpl(preferencesDataSource: serviceLocator.get()));

//   // Data sources
//   serviceLocator.registerLazySingleton<IWeatherInformationDataSource>(
//     () => WeatherInformationDataSource(
//       httpClient: serviceLocator.get(),
//     ),
//   );
//   serviceLocator.registerLazySingleton<INewsInformationDataSource>(
//     () => NewsInformationDataSource(
//       httpClient: serviceLocator.get(),
//     ),
//   );
//   serviceLocator.registerLazySingleton<IPreferencesDataSource>(
//       () => PreferencesDataSource());

//   // Utils
//   serviceLocator.registerSingleton(WeatherMethodChannel());
//   serviceLocator.registerSingleton(http.Client());
// }
