part of 'network_cubit.dart';

@freezed
class NetworkState with _$NetworkState {
  /// Initial state
  const factory NetworkState.checking() = Checking;

  /// State when the app is connected to the internet
  const factory NetworkState.connected() = Connected;

  /// State when the app gets disconnected
  const factory NetworkState.disconnected() = Disconnected;
}
