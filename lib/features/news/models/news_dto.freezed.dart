// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsDto _$NewsDtoFromJson(Map<String, dynamic> json) {
  return _NewsDto.fromJson(json);
}

/// @nodoc
class _$NewsDtoTearOff {
  const _$NewsDtoTearOff();

  _NewsDto call(
      {required String url,
      required String title,
      required NewsSource source,
      @JsonKey(name: 'publishedAt') required DateTime publishedAt,
      String? description,
      @JsonKey(name: 'urlToImage') String? urlToImage,
      String? content,
      String? author}) {
    return _NewsDto(
      url: url,
      title: title,
      source: source,
      publishedAt: publishedAt,
      description: description,
      urlToImage: urlToImage,
      content: content,
      author: author,
    );
  }

  NewsDto fromJson(Map<String, Object?> json) {
    return NewsDto.fromJson(json);
  }
}

/// @nodoc
const $NewsDto = _$NewsDtoTearOff();

/// @nodoc
mixin _$NewsDto {
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  NewsSource get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'publishedAt')
  DateTime get publishedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'urlToImage')
  String? get urlToImage => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDtoCopyWith<NewsDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDtoCopyWith<$Res> {
  factory $NewsDtoCopyWith(NewsDto value, $Res Function(NewsDto) then) =
      _$NewsDtoCopyWithImpl<$Res>;
  $Res call(
      {String url,
      String title,
      NewsSource source,
      @JsonKey(name: 'publishedAt') DateTime publishedAt,
      String? description,
      @JsonKey(name: 'urlToImage') String? urlToImage,
      String? content,
      String? author});

  $NewsSourceCopyWith<$Res> get source;
}

/// @nodoc
class _$NewsDtoCopyWithImpl<$Res> implements $NewsDtoCopyWith<$Res> {
  _$NewsDtoCopyWithImpl(this._value, this._then);

  final NewsDto _value;
  // ignore: unused_field
  final $Res Function(NewsDto) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
    Object? source = freezed,
    Object? publishedAt = freezed,
    Object? description = freezed,
    Object? urlToImage = freezed,
    Object? content = freezed,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NewsSource,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: urlToImage == freezed
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $NewsSourceCopyWith<$Res> get source {
    return $NewsSourceCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value));
    });
  }
}

/// @nodoc
abstract class _$NewsDtoCopyWith<$Res> implements $NewsDtoCopyWith<$Res> {
  factory _$NewsDtoCopyWith(_NewsDto value, $Res Function(_NewsDto) then) =
      __$NewsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String url,
      String title,
      NewsSource source,
      @JsonKey(name: 'publishedAt') DateTime publishedAt,
      String? description,
      @JsonKey(name: 'urlToImage') String? urlToImage,
      String? content,
      String? author});

  @override
  $NewsSourceCopyWith<$Res> get source;
}

/// @nodoc
class __$NewsDtoCopyWithImpl<$Res> extends _$NewsDtoCopyWithImpl<$Res>
    implements _$NewsDtoCopyWith<$Res> {
  __$NewsDtoCopyWithImpl(_NewsDto _value, $Res Function(_NewsDto) _then)
      : super(_value, (v) => _then(v as _NewsDto));

  @override
  _NewsDto get _value => super._value as _NewsDto;

  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
    Object? source = freezed,
    Object? publishedAt = freezed,
    Object? description = freezed,
    Object? urlToImage = freezed,
    Object? content = freezed,
    Object? author = freezed,
  }) {
    return _then(_NewsDto(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NewsSource,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: urlToImage == freezed
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsDto extends _NewsDto {
  _$_NewsDto(
      {required this.url,
      required this.title,
      required this.source,
      @JsonKey(name: 'publishedAt') required this.publishedAt,
      this.description,
      @JsonKey(name: 'urlToImage') this.urlToImage,
      this.content,
      this.author})
      : super._();

  factory _$_NewsDto.fromJson(Map<String, dynamic> json) =>
      _$$_NewsDtoFromJson(json);

  @override
  final String url;
  @override
  final String title;
  @override
  final NewsSource source;
  @override
  @JsonKey(name: 'publishedAt')
  final DateTime publishedAt;
  @override
  final String? description;
  @override
  @JsonKey(name: 'urlToImage')
  final String? urlToImage;
  @override
  final String? content;
  @override
  final String? author;

  @override
  String toString() {
    return 'NewsDto(url: $url, title: $title, source: $source, publishedAt: $publishedAt, description: $description, urlToImage: $urlToImage, content: $content, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewsDto &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality()
                .equals(other.publishedAt, publishedAt) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.urlToImage, urlToImage) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.author, author));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(publishedAt),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(urlToImage),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(author));

  @JsonKey(ignore: true)
  @override
  _$NewsDtoCopyWith<_NewsDto> get copyWith =>
      __$NewsDtoCopyWithImpl<_NewsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsDtoToJson(this);
  }
}

abstract class _NewsDto extends NewsDto {
  factory _NewsDto(
      {required String url,
      required String title,
      required NewsSource source,
      @JsonKey(name: 'publishedAt') required DateTime publishedAt,
      String? description,
      @JsonKey(name: 'urlToImage') String? urlToImage,
      String? content,
      String? author}) = _$_NewsDto;
  _NewsDto._() : super._();

  factory _NewsDto.fromJson(Map<String, dynamic> json) = _$_NewsDto.fromJson;

  @override
  String get url;
  @override
  String get title;
  @override
  NewsSource get source;
  @override
  @JsonKey(name: 'publishedAt')
  DateTime get publishedAt;
  @override
  String? get description;
  @override
  @JsonKey(name: 'urlToImage')
  String? get urlToImage;
  @override
  String? get content;
  @override
  String? get author;
  @override
  @JsonKey(ignore: true)
  _$NewsDtoCopyWith<_NewsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
