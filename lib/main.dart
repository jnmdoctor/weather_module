import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_services_binding/flutter_services_binding.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_module/app.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weather_module/di/injection.dart';
import 'package:weather_module/weather_bloc_observer.dart';

void main() async {
  FlutterServicesBinding.ensureInitialized();
  await Hive.initFlutter();
  initDependencyInjection(Environment.prod);
  final storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  HydratedBlocOverrides.runZoned(
    () => runApp(const WeatherAndNewsApp()),
    blocObserver: WeatherBlocObserver(),
    storage: storage,
  );
}
