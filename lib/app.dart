import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_module/di/injection.dart';
import 'package:weather_module/features/navigation/constants/weather_router.dart';
import 'package:weather_module/features/weather/state_management/theme_cubit.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherAndNewsApp extends StatelessWidget {
  const WeatherAndNewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => locator.get<ThemeCubit>(),
        child: const WeatherAndNewsAppView(
          initialRoute: WeatherRouter.home,
        ));
  }
}

class WeatherAndNewsAppView extends StatelessWidget {
  final String initialRoute;
  const WeatherAndNewsAppView({required this.initialRoute, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<ThemeCubit, Color>(
      builder: (context, color) {
        return MaterialApp(
          theme: ThemeData(
            primaryColor: color,
            textTheme: GoogleFonts.rajdhaniTextTheme(),
            appBarTheme: AppBarTheme(
              titleTextStyle: GoogleFonts.rajdhaniTextTheme(textTheme)
                  .apply(bodyColor: Colors.white)
                  .headline6,
            ),
          ),
          initialRoute: initialRoute,
          onGenerateRoute: WeatherRouter.onGenerateRoute,
        );
      },
    );
  }
}
