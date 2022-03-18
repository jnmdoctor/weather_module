import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/network/network_service.dart';

part 'network_state.dart';
part 'network_cubit.freezed.dart';

@Injectable(env: [Environment.prod])
class NetworkCubit extends Cubit<NetworkState> {
  final INetworkService _network;
  NetworkCubit(this._network) : super(const Checking());

  /// Gets a one-off internet connection check for user interactions.
  ///
  /// Does not return state since the result needs to be a boolean to be used immediately.
  Future<bool> checkConnectionStatus() async {
    final result = await _network.checkConnectivity();
    return result.fold((_) => false, (connectionStatus) => connectionStatus);
  }
}
