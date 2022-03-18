part of 'navigation_cubit.dart';

class NavigationCubitState extends Equatable {
  final NavbarItem navbarItem;
  final int index;

  const NavigationCubitState(this.navbarItem, this.index);

  @override
  List<Object> get props => [navbarItem, index];
}
