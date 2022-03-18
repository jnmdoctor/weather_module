import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/network/network_failure.dart';

/// Interface for checking network connectivity
///
/// Currently uses the cross_connectivity package for checking internet connection
abstract class INetworkService {
  /// Check to determine the current connection status of the app.
  Future<Either<NetworkFailure, bool>> checkConnectivity();
}

@LazySingleton(as: INetworkService)
class NetworkService implements INetworkService {
  final Connectivity _connectivity;

  const NetworkService(this._connectivity);

  @override
  Future<Either<NetworkFailure, bool>> checkConnectivity() async {
    try {
      final status = await _connectivity.checkConnectivity();
      final isConnected = await _connectivity.checkConnection();
      return right(isConnected && status != ConnectivityStatus.none);
    } on Exception catch (e) {
      return left(NetworkFailure.unexpected(message: e.toString()));
    }
  }
}
