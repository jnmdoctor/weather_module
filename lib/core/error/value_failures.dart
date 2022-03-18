import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed

///Class that represents the failures for all ValueObjects in the app.
///
///Original concept by Reso Coder. Check his tutorial here: https://www.youtube.com/watch?v=RMiN59x3uH0&list=PLB6lc7nQ1n4iS5p-IezFFgqP6YvAJy84U
class ValueFailure<T> with _$ValueFailure<T> {
  const ValueFailure._();

  ///Returns a [ValueFailure] for having an empty input.
  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;

  ///Returns a [ValueFailure] for exceeding the character limit
  const factory ValueFailure.characterLimitExceeded({
    required T failedValue,
  }) = CharacterLimitExceeded<T>;

  ///Gets the json key used in localizations based on the provided [ValueFailure]
  String get key {
    return when(
      empty: (_) => 'This field is required',
      characterLimitExceeded: (_) => 'Character limit exceeded.',
    );
  }
}
