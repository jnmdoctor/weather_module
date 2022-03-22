// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherApiInformationResponse _$WeatherApiInformationResponseFromJson(
    Map<String, dynamic> json) {
  return _WeatherApiInformationResponse.fromJson(json);
}

/// @nodoc
class _$WeatherApiInformationResponseTearOff {
  const _$WeatherApiInformationResponseTearOff();

  _WeatherApiInformationResponse call(
      {@JsonKey(name: 'consolidated_weather')
          required List<WeatherDto> consolidatedWeather}) {
    return _WeatherApiInformationResponse(
      consolidatedWeather: consolidatedWeather,
    );
  }

  WeatherApiInformationResponse fromJson(Map<String, Object?> json) {
    return WeatherApiInformationResponse.fromJson(json);
  }
}

/// @nodoc
const $WeatherApiInformationResponse = _$WeatherApiInformationResponseTearOff();

/// @nodoc
mixin _$WeatherApiInformationResponse {
  @JsonKey(name: 'consolidated_weather')
  List<WeatherDto> get consolidatedWeather =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherApiInformationResponseCopyWith<WeatherApiInformationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherApiInformationResponseCopyWith<$Res> {
  factory $WeatherApiInformationResponseCopyWith(
          WeatherApiInformationResponse value,
          $Res Function(WeatherApiInformationResponse) then) =
      _$WeatherApiInformationResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'consolidated_weather')
          List<WeatherDto> consolidatedWeather});
}

/// @nodoc
class _$WeatherApiInformationResponseCopyWithImpl<$Res>
    implements $WeatherApiInformationResponseCopyWith<$Res> {
  _$WeatherApiInformationResponseCopyWithImpl(this._value, this._then);

  final WeatherApiInformationResponse _value;
  // ignore: unused_field
  final $Res Function(WeatherApiInformationResponse) _then;

  @override
  $Res call({
    Object? consolidatedWeather = freezed,
  }) {
    return _then(_value.copyWith(
      consolidatedWeather: consolidatedWeather == freezed
          ? _value.consolidatedWeather
          : consolidatedWeather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDto>,
    ));
  }
}

/// @nodoc
abstract class _$WeatherApiInformationResponseCopyWith<$Res>
    implements $WeatherApiInformationResponseCopyWith<$Res> {
  factory _$WeatherApiInformationResponseCopyWith(
          _WeatherApiInformationResponse value,
          $Res Function(_WeatherApiInformationResponse) then) =
      __$WeatherApiInformationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'consolidated_weather')
          List<WeatherDto> consolidatedWeather});
}

/// @nodoc
class __$WeatherApiInformationResponseCopyWithImpl<$Res>
    extends _$WeatherApiInformationResponseCopyWithImpl<$Res>
    implements _$WeatherApiInformationResponseCopyWith<$Res> {
  __$WeatherApiInformationResponseCopyWithImpl(
      _WeatherApiInformationResponse _value,
      $Res Function(_WeatherApiInformationResponse) _then)
      : super(_value, (v) => _then(v as _WeatherApiInformationResponse));

  @override
  _WeatherApiInformationResponse get _value =>
      super._value as _WeatherApiInformationResponse;

  @override
  $Res call({
    Object? consolidatedWeather = freezed,
  }) {
    return _then(_WeatherApiInformationResponse(
      consolidatedWeather: consolidatedWeather == freezed
          ? _value.consolidatedWeather
          : consolidatedWeather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherApiInformationResponse extends _WeatherApiInformationResponse {
  const _$_WeatherApiInformationResponse(
      {@JsonKey(name: 'consolidated_weather')
          required this.consolidatedWeather})
      : super._();

  factory _$_WeatherApiInformationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_WeatherApiInformationResponseFromJson(json);

  @override
  @JsonKey(name: 'consolidated_weather')
  final List<WeatherDto> consolidatedWeather;

  @override
  String toString() {
    return 'WeatherApiInformationResponse(consolidatedWeather: $consolidatedWeather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherApiInformationResponse &&
            const DeepCollectionEquality()
                .equals(other.consolidatedWeather, consolidatedWeather));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(consolidatedWeather));

  @JsonKey(ignore: true)
  @override
  _$WeatherApiInformationResponseCopyWith<_WeatherApiInformationResponse>
      get copyWith => __$WeatherApiInformationResponseCopyWithImpl<
          _WeatherApiInformationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherApiInformationResponseToJson(this);
  }
}

abstract class _WeatherApiInformationResponse
    extends WeatherApiInformationResponse {
  const factory _WeatherApiInformationResponse(
          {@JsonKey(name: 'consolidated_weather')
              required List<WeatherDto> consolidatedWeather}) =
      _$_WeatherApiInformationResponse;
  const _WeatherApiInformationResponse._() : super._();

  factory _WeatherApiInformationResponse.fromJson(Map<String, dynamic> json) =
      _$_WeatherApiInformationResponse.fromJson;

  @override
  @JsonKey(name: 'consolidated_weather')
  List<WeatherDto> get consolidatedWeather;
  @override
  @JsonKey(ignore: true)
  _$WeatherApiInformationResponseCopyWith<_WeatherApiInformationResponse>
      get copyWith => throw _privateConstructorUsedError;
}
