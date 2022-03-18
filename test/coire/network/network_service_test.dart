import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as i;
import 'package:weather_module/core/network/network_failure.dart';
import 'package:weather_module/core/network/network_service.dart';
import 'package:weather_module/di/injection.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  late NetworkService sut;
  late Connectivity mockConnectivity;

  setUpAll(() => initDependencyInjection(i.Environment.test));
  setUp(() {
    mockConnectivity = locator<Connectivity>();
    sut = NetworkService(mockConnectivity);
  });

  group('checkConnectivity', () {
    void mockConnected() {
      when(() => mockConnectivity.checkConnection())
          .thenAnswer((_) async => true);
      when(() => mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => ConnectivityStatus.wifi);
    }

    void mockDisconnected() {
      when(() => mockConnectivity.checkConnection())
          .thenAnswer((_) async => false);
      when(() => mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => ConnectivityStatus.none);
    }

    void mockError() {
      when(() => mockConnectivity.checkConnectivity())
          .thenThrow(Exception('Something wrong happened.'));
    }

    test(
      'should return true when there is an internet connection',
      () async {
        //* Arrange
        mockConnected();

        //* Act
        final result = await sut.checkConnectivity();

        //* Assert
        expect(result, const Right(true));
      },
    );

    test(
      'should return false when there is no internet connection',
      () async {
        //* Arrange
        mockDisconnected();

        //* Act
        final result = await sut.checkConnectivity();

        //* Assert
        expect(result, const Right(false));
      },
    );

    test(
      'should return a Failure when the service encounters an exception',
      () async {
        //* Arrange
        mockError();

        //* Act
        final result = await sut.checkConnectivity();

        //* Assert
        expect(
            result,
            const Left(NetworkFailure.unexpected(
                message: 'Exception: Something wrong happened.')));
      },
    );
  });
}
