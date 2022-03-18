import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_module/core/platform_channels/weather_method_channel.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_module/features/navigation/constants/nav_bar_items.dart';

part 'navigation_state.dart';

@Injectable(env: [Environment.prod])
class NavigationCubit extends Cubit<NavigationCubitState> {
  final WeatherMethodChannel _channel;

  NavigationCubit(this._channel)
      : super(const NavigationCubitState(NavbarItem.weather, 0));

  void getNavbarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.weather:
        emit(const NavigationCubitState(NavbarItem.weather, 0));
        break;
      case NavbarItem.news:
        emit(const NavigationCubitState(NavbarItem.news, 1));
        break;
    }
  }

  void onWillPop() {
    _channel.onDismissed();
  }
}
