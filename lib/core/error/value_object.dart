import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'errors.dart';
import 'value_failures.dart';

///Represents a piece of data that has its own built-in validation.
///
///This should be used for data that users would interact with that needs validation.
///Original concept by Reso Coder. Check his tutorial here: https://www.youtube.com/watch?v=RMiN59x3uH0&list=PLB6lc7nQ1n4iS5p-IezFFgqP6YvAJy84U
@immutable
abstract class ValueObject<T> {
  ///Default constructor
  const ValueObject();

  ///The [Either] value of the [ValueObject] that can either contain a [ValueFailure] or the data that represents itself
  Either<ValueFailure<T>, T> get value;

  /// Gives the error key for a [ValueFailure].
  String? get errorKey => value.fold((failure) => failure.key, (_) => null);

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  /// Gets the value of a [ValueObject] if valid, otherwise returns [defaultVal]
  T getOrElse(T defaultVal) {
    return value.fold((_) => defaultVal, id);
  }

  /// Used to see if an [Either] has a [ValueFailure], ignoring whatever is the value on the [right]
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    // ignore: unnecessary_lambdas
    return value.fold((l) => left(l), (r) => right(unit));
  }

  /// Tells whether the [ValueObject]'s value is not a failure.
  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
