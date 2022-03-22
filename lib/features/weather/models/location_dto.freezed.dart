// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationDto _$LocationDtoFromJson(Map<String, dynamic> json) {
  return _LocationDto.fromJson(json);
}

/// @nodoc
class _$LocationDtoTearOff {
  const _$LocationDtoTearOff();

  _LocationDto call(
      {required String title,
      required int woeid,
      @JsonKey(name: 'location_type') required LocationType locationType}) {
    return _LocationDto(
      title: title,
      woeid: woeid,
      locationType: locationType,
    );
  }

  LocationDto fromJson(Map<String, Object?> json) {
    return LocationDto.fromJson(json);
  }
}

/// @nodoc
const $LocationDto = _$LocationDtoTearOff();

/// @nodoc
mixin _$LocationDto {
  String get title => throw _privateConstructorUsedError;
  int get woeid => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_type')
  LocationType get locationType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDtoCopyWith<LocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDtoCopyWith<$Res> {
  factory $LocationDtoCopyWith(
          LocationDto value, $Res Function(LocationDto) then) =
      _$LocationDtoCopyWithImpl<$Res>;
  $Res call(
      {String title,
      int woeid,
      @JsonKey(name: 'location_type') LocationType locationType});
}

/// @nodoc
class _$LocationDtoCopyWithImpl<$Res> implements $LocationDtoCopyWith<$Res> {
  _$LocationDtoCopyWithImpl(this._value, this._then);

  final LocationDto _value;
  // ignore: unused_field
  final $Res Function(LocationDto) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? woeid = freezed,
    Object? locationType = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      woeid: woeid == freezed
          ? _value.woeid
          : woeid // ignore: cast_nullable_to_non_nullable
              as int,
      locationType: locationType == freezed
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as LocationType,
    ));
  }
}

/// @nodoc
abstract class _$LocationDtoCopyWith<$Res>
    implements $LocationDtoCopyWith<$Res> {
  factory _$LocationDtoCopyWith(
          _LocationDto value, $Res Function(_LocationDto) then) =
      __$LocationDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      int woeid,
      @JsonKey(name: 'location_type') LocationType locationType});
}

/// @nodoc
class __$LocationDtoCopyWithImpl<$Res> extends _$LocationDtoCopyWithImpl<$Res>
    implements _$LocationDtoCopyWith<$Res> {
  __$LocationDtoCopyWithImpl(
      _LocationDto _value, $Res Function(_LocationDto) _then)
      : super(_value, (v) => _then(v as _LocationDto));

  @override
  _LocationDto get _value => super._value as _LocationDto;

  @override
  $Res call({
    Object? title = freezed,
    Object? woeid = freezed,
    Object? locationType = freezed,
  }) {
    return _then(_LocationDto(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      woeid: woeid == freezed
          ? _value.woeid
          : woeid // ignore: cast_nullable_to_non_nullable
              as int,
      locationType: locationType == freezed
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as LocationType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationDto extends _LocationDto {
  _$_LocationDto(
      {required this.title,
      required this.woeid,
      @JsonKey(name: 'location_type') required this.locationType})
      : super._();

  factory _$_LocationDto.fromJson(Map<String, dynamic> json) =>
      _$$_LocationDtoFromJson(json);

  @override
  final String title;
  @override
  final int woeid;
  @override
  @JsonKey(name: 'location_type')
  final LocationType locationType;

  @override
  String toString() {
    return 'LocationDto(title: $title, woeid: $woeid, locationType: $locationType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationDto &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.woeid, woeid) &&
            const DeepCollectionEquality()
                .equals(other.locationType, locationType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(woeid),
      const DeepCollectionEquality().hash(locationType));

  @JsonKey(ignore: true)
  @override
  _$LocationDtoCopyWith<_LocationDto> get copyWith =>
      __$LocationDtoCopyWithImpl<_LocationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationDtoToJson(this);
  }
}

abstract class _LocationDto extends LocationDto {
  factory _LocationDto(
          {required String title,
          required int woeid,
          @JsonKey(name: 'location_type') required LocationType locationType}) =
      _$_LocationDto;
  _LocationDto._() : super._();

  factory _LocationDto.fromJson(Map<String, dynamic> json) =
      _$_LocationDto.fromJson;

  @override
  String get title;
  @override
  int get woeid;
  @override
  @JsonKey(name: 'location_type')
  LocationType get locationType;
  @override
  @JsonKey(ignore: true)
  _$LocationDtoCopyWith<_LocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
