import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_failure.freezed.dart';

/// Sealed class containing failures related to the team feature
@freezed
class NetworkFailure with _$NetworkFailure {
  /// A failure that occurs for any uncaught errors that may occur.
  ///
  /// Once the error is recorded, if there is a need to create its own error message, then add another Failure here.
  const factory NetworkFailure.unexpected({required String message}) =
      Unexpected;
}
