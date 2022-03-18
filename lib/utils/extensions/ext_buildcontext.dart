//* Extension for showing an alert bar through the context
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:weather_module/resources/theme/app_color.dart';

/// Duration of alert being shown in seconds
const _duration = 4;

/// To prevent showing multiple alert
bool _isShown = false;

extension BuildContextX on BuildContext {
  /// Displays a info alert with [message]
  void showInfo({required String message}) {
    _customAlert(
      message: message,
      icon: const Icon(
        Icons.info,
        color: AppColor.info,
      ),
    );
  }

  /// Displays a warning alert with [message]
  void showWarning({required String message}) {
    _customAlert(
      message: message,
      icon: const Icon(
        Icons.warning,
        color: AppColor.warning,
      ),
    );
  }

  /// Displays a error alert with [message]
  void showError({required String message}) {
    _customAlert(
      message: message,
      icon: const Icon(
        Icons.error,
        color: AppColor.error,
      ),
    );
  }

  ///Creates a custom alert that accepts the [message] and [icon].
  Future<void> _customAlert({
    required String message,
    required Icon icon,
  }) async {
    if (_isShown) {
      return;
    }
    _isShown = true;

    await showFlash(
      context: this,
      duration: const Duration(seconds: _duration),
      builder: (_, controller) => Flash.bar(
        controller: controller,
        margin: const EdgeInsets.symmetric(
          vertical: 30.0,
          horizontal: 16.0,
        ),
        child: FlashBar(
          icon: icon,
          content: Text(
            message,
            style: const TextStyle(color: AppColor.text),
          ),
        ),
      ),
    );

    _isShown = false;
  }
}
