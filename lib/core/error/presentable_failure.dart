import 'package:freezed_annotation/freezed_annotation.dart';

part 'presentable_failure.freezed.dart';

@freezed

///A freezed class used for displaying the the error messages of feature Failures
class PresentableFailure with _$PresentableFailure {
  ///Private constructor to allow user-defined functions to work
  const PresentableFailure._();

  ///Creates a [PresentableFailure] using the given [error] message and the optional [additionalMsg] for specific error messages to display.
  const factory PresentableFailure({
    required String error,
    String? additionalMsg,
  }) = _PresentableFailure;

  @override
  String toString() =>
      '$error${additionalMsg != null ? ": $additionalMsg" : ""}';
}
