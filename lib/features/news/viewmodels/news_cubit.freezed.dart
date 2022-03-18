// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

  _InitialNewsState initial() {
    return const _InitialNewsState();
  }

  _LoadingNewsState loading() {
    return const _LoadingNewsState();
  }

  _SuccessNewsState success(KtList<NewsModel> newsInformations) {
    return _SuccessNewsState(
      newsInformations,
    );
  }

  _FailureNewsState failure(NewsFailure failure) {
    return _FailureNewsState(
      failure,
    );
  }
}

/// @nodoc
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<NewsModel> newsInformations) success,
    required TResult Function(NewsFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<NewsModel> newsInformations)? success,
    TResult Function(NewsFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<NewsModel> newsInformations)? success,
    TResult Function(NewsFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNewsState value) initial,
    required TResult Function(_LoadingNewsState value) loading,
    required TResult Function(_SuccessNewsState value) success,
    required TResult Function(_FailureNewsState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialNewsState value)? initial,
    TResult Function(_LoadingNewsState value)? loading,
    TResult Function(_SuccessNewsState value)? success,
    TResult Function(_FailureNewsState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewsState value)? initial,
    TResult Function(_LoadingNewsState value)? loading,
    TResult Function(_SuccessNewsState value)? success,
    TResult Function(_FailureNewsState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;
}

/// @nodoc
abstract class _$InitialNewsStateCopyWith<$Res> {
  factory _$InitialNewsStateCopyWith(
          _InitialNewsState value, $Res Function(_InitialNewsState) then) =
      __$InitialNewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialNewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$InitialNewsStateCopyWith<$Res> {
  __$InitialNewsStateCopyWithImpl(
      _InitialNewsState _value, $Res Function(_InitialNewsState) _then)
      : super(_value, (v) => _then(v as _InitialNewsState));

  @override
  _InitialNewsState get _value => super._value as _InitialNewsState;
}

/// @nodoc

class _$_InitialNewsState implements _InitialNewsState {
  const _$_InitialNewsState();

  @override
  String toString() {
    return 'NewsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitialNewsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<NewsModel> newsInformations) success,
    required TResult Function(NewsFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<NewsModel> newsInformations)? success,
    TResult Function(NewsFailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<NewsModel> newsInformations)? success,
    TResult Function(NewsFailure failure)? failure,
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
    required TResult Function(_InitialNewsState value) initial,
    required TResult Function(_LoadingNewsState value) loading,
    required TResult Function(_SuccessNewsState value) success,
    required TResult Function(_FailureNewsState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialNewsState value)? initial,
    TResult Function(_LoadingNewsState value)? loading,
    TResult Function(_SuccessNewsState value)? success,
    TResult Function(_FailureNewsState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewsState value)? initial,
    TResult Function(_LoadingNewsState value)? loading,
    TResult Function(_SuccessNewsState value)? success,
    TResult Function(_FailureNewsState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialNewsState implements NewsState {
  const factory _InitialNewsState() = _$_InitialNewsState;
}

/// @nodoc
abstract class _$LoadingNewsStateCopyWith<$Res> {
  factory _$LoadingNewsStateCopyWith(
          _LoadingNewsState value, $Res Function(_LoadingNewsState) then) =
      __$LoadingNewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingNewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$LoadingNewsStateCopyWith<$Res> {
  __$LoadingNewsStateCopyWithImpl(
      _LoadingNewsState _value, $Res Function(_LoadingNewsState) _then)
      : super(_value, (v) => _then(v as _LoadingNewsState));

  @override
  _LoadingNewsState get _value => super._value as _LoadingNewsState;
}

/// @nodoc

class _$_LoadingNewsState implements _LoadingNewsState {
  const _$_LoadingNewsState();

  @override
  String toString() {
    return 'NewsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadingNewsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<NewsModel> newsInformations) success,
    required TResult Function(NewsFailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<NewsModel> newsInformations)? success,
    TResult Function(NewsFailure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<NewsModel> newsInformations)? success,
    TResult Function(NewsFailure failure)? failure,
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
    required TResult Function(_InitialNewsState value) initial,
    required TResult Function(_LoadingNewsState value) loading,
    required TResult Function(_SuccessNewsState value) success,
    required TResult Function(_FailureNewsState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialNewsState value)? initial,
    TResult Function(_LoadingNewsState value)? loading,
    TResult Function(_SuccessNewsState value)? success,
    TResult Function(_FailureNewsState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewsState value)? initial,
    TResult Function(_LoadingNewsState value)? loading,
    TResult Function(_SuccessNewsState value)? success,
    TResult Function(_FailureNewsState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingNewsState implements NewsState {
  const factory _LoadingNewsState() = _$_LoadingNewsState;
}

/// @nodoc
abstract class _$SuccessNewsStateCopyWith<$Res> {
  factory _$SuccessNewsStateCopyWith(
          _SuccessNewsState value, $Res Function(_SuccessNewsState) then) =
      __$SuccessNewsStateCopyWithImpl<$Res>;
  $Res call({KtList<NewsModel> newsInformations});
}

/// @nodoc
class __$SuccessNewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$SuccessNewsStateCopyWith<$Res> {
  __$SuccessNewsStateCopyWithImpl(
      _SuccessNewsState _value, $Res Function(_SuccessNewsState) _then)
      : super(_value, (v) => _then(v as _SuccessNewsState));

  @override
  _SuccessNewsState get _value => super._value as _SuccessNewsState;

  @override
  $Res call({
    Object? newsInformations = freezed,
  }) {
    return _then(_SuccessNewsState(
      newsInformations == freezed
          ? _value.newsInformations
          : newsInformations // ignore: cast_nullable_to_non_nullable
              as KtList<NewsModel>,
    ));
  }
}

/// @nodoc

class _$_SuccessNewsState implements _SuccessNewsState {
  const _$_SuccessNewsState(this.newsInformations);

  @override
  final KtList<NewsModel> newsInformations;

  @override
  String toString() {
    return 'NewsState.success(newsInformations: $newsInformations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessNewsState &&
            const DeepCollectionEquality()
                .equals(other.newsInformations, newsInformations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newsInformations));

  @JsonKey(ignore: true)
  @override
  _$SuccessNewsStateCopyWith<_SuccessNewsState> get copyWith =>
      __$SuccessNewsStateCopyWithImpl<_SuccessNewsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<NewsModel> newsInformations) success,
    required TResult Function(NewsFailure failure) failure,
  }) {
    return success(newsInformations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<NewsModel> newsInformations)? success,
    TResult Function(NewsFailure failure)? failure,
  }) {
    return success?.call(newsInformations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<NewsModel> newsInformations)? success,
    TResult Function(NewsFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(newsInformations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNewsState value) initial,
    required TResult Function(_LoadingNewsState value) loading,
    required TResult Function(_SuccessNewsState value) success,
    required TResult Function(_FailureNewsState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialNewsState value)? initial,
    TResult Function(_LoadingNewsState value)? loading,
    TResult Function(_SuccessNewsState value)? success,
    TResult Function(_FailureNewsState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewsState value)? initial,
    TResult Function(_LoadingNewsState value)? loading,
    TResult Function(_SuccessNewsState value)? success,
    TResult Function(_FailureNewsState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessNewsState implements NewsState {
  const factory _SuccessNewsState(KtList<NewsModel> newsInformations) =
      _$_SuccessNewsState;

  KtList<NewsModel> get newsInformations;
  @JsonKey(ignore: true)
  _$SuccessNewsStateCopyWith<_SuccessNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureNewsStateCopyWith<$Res> {
  factory _$FailureNewsStateCopyWith(
          _FailureNewsState value, $Res Function(_FailureNewsState) then) =
      __$FailureNewsStateCopyWithImpl<$Res>;
  $Res call({NewsFailure failure});

  $NewsFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureNewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$FailureNewsStateCopyWith<$Res> {
  __$FailureNewsStateCopyWithImpl(
      _FailureNewsState _value, $Res Function(_FailureNewsState) _then)
      : super(_value, (v) => _then(v as _FailureNewsState));

  @override
  _FailureNewsState get _value => super._value as _FailureNewsState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_FailureNewsState(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as NewsFailure,
    ));
  }

  @override
  $NewsFailureCopyWith<$Res> get failure {
    return $NewsFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_FailureNewsState implements _FailureNewsState {
  const _$_FailureNewsState(this.failure);

  @override
  final NewsFailure failure;

  @override
  String toString() {
    return 'NewsState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FailureNewsState &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$FailureNewsStateCopyWith<_FailureNewsState> get copyWith =>
      __$FailureNewsStateCopyWithImpl<_FailureNewsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<NewsModel> newsInformations) success,
    required TResult Function(NewsFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<NewsModel> newsInformations)? success,
    TResult Function(NewsFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<NewsModel> newsInformations)? success,
    TResult Function(NewsFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNewsState value) initial,
    required TResult Function(_LoadingNewsState value) loading,
    required TResult Function(_SuccessNewsState value) success,
    required TResult Function(_FailureNewsState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialNewsState value)? initial,
    TResult Function(_LoadingNewsState value)? loading,
    TResult Function(_SuccessNewsState value)? success,
    TResult Function(_FailureNewsState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewsState value)? initial,
    TResult Function(_LoadingNewsState value)? loading,
    TResult Function(_SuccessNewsState value)? success,
    TResult Function(_FailureNewsState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureNewsState implements NewsState {
  const factory _FailureNewsState(NewsFailure failure) = _$_FailureNewsState;

  NewsFailure get failure;
  @JsonKey(ignore: true)
  _$FailureNewsStateCopyWith<_FailureNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}
