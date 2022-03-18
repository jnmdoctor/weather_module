import 'package:flutter/material.dart';

///Contains all the colors used by the app. Other files should reference this class for colors.
class AppColor {
  AppColor._();

  //* Global colors
  static const primaryColor = Color.fromARGB(255, 55, 145, 58);

  //* Colors based on the condition of the weather
  static const clearWeather = Colors.orangeAccent;

  static const snowyWeather = Colors.lightBlueAccent;

  static const cloudyWeather = Colors.blueGrey;

  static const rainyWeather = Colors.indigoAccent;

  static const defaultWeatherColor = Color(0xFF2196F3);

  static const text = Color.fromARGB(255, 22, 22, 22);

  static const info = Color.fromARGB(255, 25, 199, 77);

  static const warning = Color.fromARGB(255, 226, 160, 16);

  static const error = Color.fromARGB(255, 190, 42, 42);
}
