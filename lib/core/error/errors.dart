import 'value_failures.dart';

///An error that represents a failed value on a Value Object.
class UnexpectedValueError extends Error {
  ///Default constructor for this error
  UnexpectedValueError(this.valueFailure);

  ///The [ValueFailure] that throws this errror.
  final ValueFailure valueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
