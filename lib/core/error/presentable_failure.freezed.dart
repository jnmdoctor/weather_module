// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'presentable_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PresentableFailureTearOff {
  const _$PresentableFailureTearOff();

  _PresentableFailure call({required String error, String? additionalMsg}) {
    return _PresentableFailure(
      error: error,
      additionalMsg: additionalMsg,
    );
  }
}

/// @nodoc
const $PresentableFailure = _$PresentableFailureTearOff();

/// @nodoc
mixin _$PresentableFailure {
  String get error => throw _privateConstructorUsedError;
  String? get additionalMsg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PresentableFailureCopyWith<PresentableFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentableFailureCopyWith<$Res> {
  factory $PresentableFailureCopyWith(
          PresentableFailure value, $Res Function(PresentableFailure) then) =
      _$PresentableFailureCopyWithImpl<$Res>;
  $Res call({String error, String? additionalMsg});
}

/// @nodoc
class _$PresentableFailureCopyWithImpl<$Res>
    implements $PresentableFailureCopyWith<$Res> {
  _$PresentableFailureCopyWithImpl(this._value, this._then);

  final PresentableFailure _value;
  // ignore: unused_field
  final $Res Function(PresentableFailure) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? additionalMsg = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      additionalMsg: additionalMsg == freezed
          ? _value.additionalMsg
          : additionalMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PresentableFailureCopyWith<$Res>
    implements $PresentableFailureCopyWith<$Res> {
  factory _$PresentableFailureCopyWith(
          _PresentableFailure value, $Res Function(_PresentableFailure) then) =
      __$PresentableFailureCopyWithImpl<$Res>;
  @override
  $Res call({String error, String? additionalMsg});
}

/// @nodoc
class __$PresentableFailureCopyWithImpl<$Res>
    extends _$PresentableFailureCopyWithImpl<$Res>
    implements _$PresentableFailureCopyWith<$Res> {
  __$PresentableFailureCopyWithImpl(
      _PresentableFailure _value, $Res Function(_PresentableFailure) _then)
      : super(_value, (v) => _then(v as _PresentableFailure));

  @override
  _PresentableFailure get _value => super._value as _PresentableFailure;

  @override
  $Res call({
    Object? error = freezed,
    Object? additionalMsg = freezed,
  }) {
    return _then(_PresentableFailure(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      additionalMsg: additionalMsg == freezed
          ? _value.additionalMsg
          : additionalMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PresentableFailure extends _PresentableFailure {
  const _$_PresentableFailure({required this.error, this.additionalMsg})
      : super._();

  @override
  final String error;
  @override
  final String? additionalMsg;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PresentableFailure &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.additionalMsg, additionalMsg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(additionalMsg));

  @JsonKey(ignore: true)
  @override
  _$PresentableFailureCopyWith<_PresentableFailure> get copyWith =>
      __$PresentableFailureCopyWithImpl<_PresentableFailure>(this, _$identity);
}

abstract class _PresentableFailure extends PresentableFailure {
  const factory _PresentableFailure(
      {required String error, String? additionalMsg}) = _$_PresentableFailure;
  const _PresentableFailure._() : super._();

  @override
  String get error;
  @override
  String? get additionalMsg;
  @override
  @JsonKey(ignore: true)
  _$PresentableFailureCopyWith<_PresentableFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
