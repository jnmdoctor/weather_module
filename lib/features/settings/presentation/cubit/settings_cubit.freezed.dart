// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _ReadySettingsState ready(bool isUsingMetricUnits) {
    return _ReadySettingsState(
      isUsingMetricUnits,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  bool get isUsingMetricUnits => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isUsingMetricUnits) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isUsingMetricUnits)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isUsingMetricUnits)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadySettingsState value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReadySettingsState value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadySettingsState value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call({bool isUsingMetricUnits});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? isUsingMetricUnits = freezed,
  }) {
    return _then(_value.copyWith(
      isUsingMetricUnits: isUsingMetricUnits == freezed
          ? _value.isUsingMetricUnits
          : isUsingMetricUnits // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ReadySettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$ReadySettingsStateCopyWith(
          _ReadySettingsState value, $Res Function(_ReadySettingsState) then) =
      __$ReadySettingsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isUsingMetricUnits});
}

/// @nodoc
class __$ReadySettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$ReadySettingsStateCopyWith<$Res> {
  __$ReadySettingsStateCopyWithImpl(
      _ReadySettingsState _value, $Res Function(_ReadySettingsState) _then)
      : super(_value, (v) => _then(v as _ReadySettingsState));

  @override
  _ReadySettingsState get _value => super._value as _ReadySettingsState;

  @override
  $Res call({
    Object? isUsingMetricUnits = freezed,
  }) {
    return _then(_ReadySettingsState(
      isUsingMetricUnits == freezed
          ? _value.isUsingMetricUnits
          : isUsingMetricUnits // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ReadySettingsState implements _ReadySettingsState {
  const _$_ReadySettingsState(this.isUsingMetricUnits);

  @override
  final bool isUsingMetricUnits;

  @override
  String toString() {
    return 'SettingsState.ready(isUsingMetricUnits: $isUsingMetricUnits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReadySettingsState &&
            const DeepCollectionEquality()
                .equals(other.isUsingMetricUnits, isUsingMetricUnits));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isUsingMetricUnits));

  @JsonKey(ignore: true)
  @override
  _$ReadySettingsStateCopyWith<_ReadySettingsState> get copyWith =>
      __$ReadySettingsStateCopyWithImpl<_ReadySettingsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isUsingMetricUnits) ready,
  }) {
    return ready(isUsingMetricUnits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isUsingMetricUnits)? ready,
  }) {
    return ready?.call(isUsingMetricUnits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isUsingMetricUnits)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(isUsingMetricUnits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadySettingsState value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReadySettingsState value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadySettingsState value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _ReadySettingsState implements SettingsState {
  const factory _ReadySettingsState(bool isUsingMetricUnits) =
      _$_ReadySettingsState;

  @override
  bool get isUsingMetricUnits;
  @override
  @JsonKey(ignore: true)
  _$ReadySettingsStateCopyWith<_ReadySettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
