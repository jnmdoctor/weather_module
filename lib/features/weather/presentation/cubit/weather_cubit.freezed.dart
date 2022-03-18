// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _InitialWeatherState initial() {
    return const _InitialWeatherState();
  }

  _LoadingWeatherState loading() {
    return const _LoadingWeatherState();
  }

  _SuccessWeatherState success(Weather weather) {
    return _SuccessWeatherState(
      weather,
    );
  }

  _FailureWeatherState failure() {
    return const _FailureWeatherState();
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Weather weather) success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialWeatherState value) initial,
    required TResult Function(_LoadingWeatherState value) loading,
    required TResult Function(_SuccessWeatherState value) success,
    required TResult Function(_FailureWeatherState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialWeatherState value)? initial,
    TResult Function(_LoadingWeatherState value)? loading,
    TResult Function(_SuccessWeatherState value)? success,
    TResult Function(_FailureWeatherState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialWeatherState value)? initial,
    TResult Function(_LoadingWeatherState value)? loading,
    TResult Function(_SuccessWeatherState value)? success,
    TResult Function(_FailureWeatherState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;
}

/// @nodoc
abstract class _$InitialWeatherStateCopyWith<$Res> {
  factory _$InitialWeatherStateCopyWith(_InitialWeatherState value,
          $Res Function(_InitialWeatherState) then) =
      __$InitialWeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialWeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$InitialWeatherStateCopyWith<$Res> {
  __$InitialWeatherStateCopyWithImpl(
      _InitialWeatherState _value, $Res Function(_InitialWeatherState) _then)
      : super(_value, (v) => _then(v as _InitialWeatherState));

  @override
  _InitialWeatherState get _value => super._value as _InitialWeatherState;
}

/// @nodoc

class _$_InitialWeatherState implements _InitialWeatherState {
  const _$_InitialWeatherState();

  @override
  String toString() {
    return 'WeatherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitialWeatherState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Weather weather) success,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialWeatherState value) initial,
    required TResult Function(_LoadingWeatherState value) loading,
    required TResult Function(_SuccessWeatherState value) success,
    required TResult Function(_FailureWeatherState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialWeatherState value)? initial,
    TResult Function(_LoadingWeatherState value)? loading,
    TResult Function(_SuccessWeatherState value)? success,
    TResult Function(_FailureWeatherState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialWeatherState value)? initial,
    TResult Function(_LoadingWeatherState value)? loading,
    TResult Function(_SuccessWeatherState value)? success,
    TResult Function(_FailureWeatherState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialWeatherState implements WeatherState {
  const factory _InitialWeatherState() = _$_InitialWeatherState;
}

/// @nodoc
abstract class _$LoadingWeatherStateCopyWith<$Res> {
  factory _$LoadingWeatherStateCopyWith(_LoadingWeatherState value,
          $Res Function(_LoadingWeatherState) then) =
      __$LoadingWeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingWeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$LoadingWeatherStateCopyWith<$Res> {
  __$LoadingWeatherStateCopyWithImpl(
      _LoadingWeatherState _value, $Res Function(_LoadingWeatherState) _then)
      : super(_value, (v) => _then(v as _LoadingWeatherState));

  @override
  _LoadingWeatherState get _value => super._value as _LoadingWeatherState;
}

/// @nodoc

class _$_LoadingWeatherState implements _LoadingWeatherState {
  const _$_LoadingWeatherState();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadingWeatherState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Weather weather) success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialWeatherState value) initial,
    required TResult Function(_LoadingWeatherState value) loading,
    required TResult Function(_SuccessWeatherState value) success,
    required TResult Function(_FailureWeatherState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialWeatherState value)? initial,
    TResult Function(_LoadingWeatherState value)? loading,
    TResult Function(_SuccessWeatherState value)? success,
    TResult Function(_FailureWeatherState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialWeatherState value)? initial,
    TResult Function(_LoadingWeatherState value)? loading,
    TResult Function(_SuccessWeatherState value)? success,
    TResult Function(_FailureWeatherState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingWeatherState implements WeatherState {
  const factory _LoadingWeatherState() = _$_LoadingWeatherState;
}

/// @nodoc
abstract class _$SuccessWeatherStateCopyWith<$Res> {
  factory _$SuccessWeatherStateCopyWith(_SuccessWeatherState value,
          $Res Function(_SuccessWeatherState) then) =
      __$SuccessWeatherStateCopyWithImpl<$Res>;
  $Res call({Weather weather});
}

/// @nodoc
class __$SuccessWeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$SuccessWeatherStateCopyWith<$Res> {
  __$SuccessWeatherStateCopyWithImpl(
      _SuccessWeatherState _value, $Res Function(_SuccessWeatherState) _then)
      : super(_value, (v) => _then(v as _SuccessWeatherState));

  @override
  _SuccessWeatherState get _value => super._value as _SuccessWeatherState;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(_SuccessWeatherState(
      weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc

class _$_SuccessWeatherState implements _SuccessWeatherState {
  const _$_SuccessWeatherState(this.weather);

  @override
  final Weather weather;

  @override
  String toString() {
    return 'WeatherState.success(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessWeatherState &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$SuccessWeatherStateCopyWith<_SuccessWeatherState> get copyWith =>
      __$SuccessWeatherStateCopyWithImpl<_SuccessWeatherState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Weather weather) success,
    required TResult Function() failure,
  }) {
    return success(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function()? failure,
  }) {
    return success?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialWeatherState value) initial,
    required TResult Function(_LoadingWeatherState value) loading,
    required TResult Function(_SuccessWeatherState value) success,
    required TResult Function(_FailureWeatherState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialWeatherState value)? initial,
    TResult Function(_LoadingWeatherState value)? loading,
    TResult Function(_SuccessWeatherState value)? success,
    TResult Function(_FailureWeatherState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialWeatherState value)? initial,
    TResult Function(_LoadingWeatherState value)? loading,
    TResult Function(_SuccessWeatherState value)? success,
    TResult Function(_FailureWeatherState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessWeatherState implements WeatherState {
  const factory _SuccessWeatherState(Weather weather) = _$_SuccessWeatherState;

  Weather get weather;
  @JsonKey(ignore: true)
  _$SuccessWeatherStateCopyWith<_SuccessWeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureWeatherStateCopyWith<$Res> {
  factory _$FailureWeatherStateCopyWith(_FailureWeatherState value,
          $Res Function(_FailureWeatherState) then) =
      __$FailureWeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureWeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$FailureWeatherStateCopyWith<$Res> {
  __$FailureWeatherStateCopyWithImpl(
      _FailureWeatherState _value, $Res Function(_FailureWeatherState) _then)
      : super(_value, (v) => _then(v as _FailureWeatherState));

  @override
  _FailureWeatherState get _value => super._value as _FailureWeatherState;
}

/// @nodoc

class _$_FailureWeatherState implements _FailureWeatherState {
  const _$_FailureWeatherState();

  @override
  String toString() {
    return 'WeatherState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FailureWeatherState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Weather weather) success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialWeatherState value) initial,
    required TResult Function(_LoadingWeatherState value) loading,
    required TResult Function(_SuccessWeatherState value) success,
    required TResult Function(_FailureWeatherState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialWeatherState value)? initial,
    TResult Function(_LoadingWeatherState value)? loading,
    TResult Function(_SuccessWeatherState value)? success,
    TResult Function(_FailureWeatherState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialWeatherState value)? initial,
    TResult Function(_LoadingWeatherState value)? loading,
    TResult Function(_SuccessWeatherState value)? success,
    TResult Function(_FailureWeatherState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureWeatherState implements WeatherState {
  const factory _FailureWeatherState() = _$_FailureWeatherState;
}
