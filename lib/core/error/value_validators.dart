import 'package:dartz/dartz.dart';

import 'value_failures.dart';

//* This file should contain all the validators that will be used by Value Objects.
//* Original concept by Reso Coder. Check his tutorial here: https://www.youtube.com/watch?v=RMiN59x3uH0&list=PLB6lc7nQ1n4iS5p-IezFFgqP6YvAJy84U
//! All functions here should be tested.

///Makes sure that the [input] is not an empty string.
Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  final validatedInput = input.isNotEmpty;
  return validatedInput
      ? right(input)
      : left(ValueFailure.empty(failedValue: input));
}

///Makes sure that the [input] string's length has not passed the [limit]
Either<ValueFailure<String>, String> validateCharacterLimit(
    String input, int limit) {
  final validatedInput = input.length <= limit;
  return validatedInput
      ? right(input)
      : left(ValueFailure.characterLimitExceeded(failedValue: input));
}
