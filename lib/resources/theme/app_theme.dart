import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

import 'app_color.dart';

///Helper class for theme-related configurations
class AppTheme {
  AppTheme._();

  ///The default theme. The app has no dark theme currently.
  static final ThemeData lightTheme = ThemeData(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: SharedAxisPageTransitionsBuilder(
          transitionType: SharedAxisTransitionType.horizontal,
        ),
        TargetPlatform.iOS: SharedAxisPageTransitionsBuilder(
          transitionType: SharedAxisTransitionType.horizontal,
        ),
      },
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: AppColor.primaryColor,
    brightness: Brightness.light,
  );

  ///The default dark theme. Currently used by dark colored bg UIs such as snackbars
  static final ThemeData darkTheme = lightTheme.copyWith(
    brightness: Brightness.dark,
  );
}
