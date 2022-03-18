import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_module/core/platform_channels/weather_method_channel.dart';
import 'package:weather_module/features/news/repositories/news_information_client.dart';
import 'package:weather_module/features/weather/data/datasource/weather_information_client.dart';

//* External packages or REST clients that need to be used as dependencies for classes should be placed in here

@module
abstract class ExternalPackageDependencies {
  @Singleton(env: [Environment.prod])
  WeatherMethodChannel get weatherMethodChannel => WeatherMethodChannel();

  @LazySingleton(env: [Environment.prod])
  Dio get dio => Dio();

  @LazySingleton(env: [Environment.prod])
  Connectivity get connectivity => Connectivity();

  @LazySingleton(env: [Environment.prod])
  NewsInformationClient get newsclient => NewsInformationClient(dio);

  @LazySingleton(env: [Environment.prod])
  WeatherInformationClient get weatherClient => WeatherInformationClient(dio);
}
