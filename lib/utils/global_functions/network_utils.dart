import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_module/di/injection.dart';
import 'package:weather_module/features/core/network/network_cubit.dart';
import 'package:weather_module/utils/extensions/ext_buildcontext.dart';

const _noInternet = 'No internet connection.';

/// Checks the connection library if the app is connected to the internet.
Future<bool> hasConnection() {
  final cubit = locator<NetworkCubit>();
  return cubit.checkConnectionStatus();
}

/// Checks the connection library if the app is connected to the internet and performs actions through [whenConnected] otherwise display a snackbar for lack of internet connection.
Future<void> validateUIInternet(
  BuildContext context, {
  required VoidCallback whenConnected,
}) async {
  final cubit = context.read<NetworkCubit>();
  final isConnected = await cubit.checkConnectionStatus();

  if (isConnected) {
    whenConnected();
  } else {
    context.showWarning(message: _noInternet);
  }
}
