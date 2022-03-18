import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:weather_module/features/navigation/constants/weather_router.dart';
import 'package:weather_module/features/search/search.dart';
import 'package:weather_module/features/weather/state_management/theme_cubit.dart';
import 'package:weather_module/features/weather/weather.dart';
import 'package:weather_module/features/navigation/constants/nav_bar_items.dart';
import 'package:weather_module/features/navigation/cubit/navigation_cubit.dart';
import 'package:weather_module/features/news/views/news_screen.dart';
import 'package:weather_module/di/injection.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => locator<WeatherCubit>(),
        ),
        BlocProvider(
          create: (_) => locator<NavigationCubit>(),
        ),
      ],
      child: const WeatherView(),
    );
  }
}

class WeatherPageFromNative extends StatelessWidget {
  const WeatherPageFromNative({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                locator<WeatherCubit>()..fetchWeatherFromNative()),
        BlocProvider(
          create: (context) => locator<NavigationCubit>(),
        ),
      ],
      child: const WeatherView(),
    );
  }
}

class WeatherView extends StatelessWidget {
  const WeatherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather and News'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            context.read<NavigationCubit>().onWillPop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).pushNamed(WeatherRouter.settings);
            },
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<NavigationCubit, NavigationCubitState>(
          builder: (context, state) {
            if (state.navbarItem == NavbarItem.weather) {
              return BlocConsumer<WeatherCubit, WeatherState>(
                listener: (context, state) {
                  state.maybeWhen(
                      success: (weather) =>
                          context.read<ThemeCubit>().updateTheme(weather),
                      orElse: () {});
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    initial: () => const WeatherEmpty(),
                    loading: () => const WeatherLoading(),
                    failure: () => const WeatherError(),
                    success: (weather) => WeatherPopulated(
                        weather: weather,
                        units: weather.temperature.temperatureUnits,
                        onRefresh: () =>
                            context.read<WeatherCubit>().refreshWeather()),
                    orElse: () => const WeatherError(),
                  );
                },
              );
            } else {
              return const NewsScreen();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search),
        onPressed: () async {
          final city = await Navigator.of(context).push(SearchPage.route());
          await context.read<WeatherCubit>().fetchWeather(city);
        },
      ),
      bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationCubitState>(
          builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state.index,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.weatherSunny),
              label: 'Weather',
            ),
            BottomNavigationBarItem(
                icon: Icon(MdiIcons.newspaper), label: 'News'),
          ],
          onTap: (index) {
            if (index == 0) {
              BlocProvider.of<NavigationCubit>(context)
                  .getNavbarItem(NavbarItem.weather);
            } else {
              BlocProvider.of<NavigationCubit>(context)
                  .getNavbarItem(NavbarItem.news);
            }
          },
        );
      }),
    );
  }
}
