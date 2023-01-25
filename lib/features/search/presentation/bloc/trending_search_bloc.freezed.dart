// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trending_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrendingSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrendingSearches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrendingSearches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrendingSearches,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTrendingSearches value) getTrendingSearches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTrendingSearches value)? getTrendingSearches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTrendingSearches value)? getTrendingSearches,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingSearchEventCopyWith<$Res> {
  factory $TrendingSearchEventCopyWith(
          TrendingSearchEvent value, $Res Function(TrendingSearchEvent) then) =
      _$TrendingSearchEventCopyWithImpl<$Res, TrendingSearchEvent>;
}

/// @nodoc
class _$TrendingSearchEventCopyWithImpl<$Res, $Val extends TrendingSearchEvent>
    implements $TrendingSearchEventCopyWith<$Res> {
  _$TrendingSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTrendingSearchesCopyWith<$Res> {
  factory _$$GetTrendingSearchesCopyWith(_$GetTrendingSearches value,
          $Res Function(_$GetTrendingSearches) then) =
      __$$GetTrendingSearchesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTrendingSearchesCopyWithImpl<$Res>
    extends _$TrendingSearchEventCopyWithImpl<$Res, _$GetTrendingSearches>
    implements _$$GetTrendingSearchesCopyWith<$Res> {
  __$$GetTrendingSearchesCopyWithImpl(
      _$GetTrendingSearches _value, $Res Function(_$GetTrendingSearches) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTrendingSearches implements GetTrendingSearches {
  const _$GetTrendingSearches();

  @override
  String toString() {
    return 'TrendingSearchEvent.getTrendingSearches()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTrendingSearches);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrendingSearches,
  }) {
    return getTrendingSearches();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrendingSearches,
  }) {
    return getTrendingSearches?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrendingSearches,
    required TResult orElse(),
  }) {
    if (getTrendingSearches != null) {
      return getTrendingSearches();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTrendingSearches value) getTrendingSearches,
  }) {
    return getTrendingSearches(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTrendingSearches value)? getTrendingSearches,
  }) {
    return getTrendingSearches?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTrendingSearches value)? getTrendingSearches,
    required TResult orElse(),
  }) {
    if (getTrendingSearches != null) {
      return getTrendingSearches(this);
    }
    return orElse();
  }
}

abstract class GetTrendingSearches implements TrendingSearchEvent {
  const factory GetTrendingSearches() = _$GetTrendingSearches;
}

/// @nodoc
mixin _$TrendingSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trendingInitial,
    required TResult Function() trendingLoading,
    required TResult Function(String msg) trendingError,
    required TResult Function(TrendingRes response) trendingLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? trendingInitial,
    TResult? Function()? trendingLoading,
    TResult? Function(String msg)? trendingError,
    TResult? Function(TrendingRes response)? trendingLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trendingInitial,
    TResult Function()? trendingLoading,
    TResult Function(String msg)? trendingError,
    TResult Function(TrendingRes response)? trendingLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrendingSearchInitial value) trendingInitial,
    required TResult Function(TrendingLoading value) trendingLoading,
    required TResult Function(TrendingError value) trendingError,
    required TResult Function(TrendingLoaded value) trendingLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrendingSearchInitial value)? trendingInitial,
    TResult? Function(TrendingLoading value)? trendingLoading,
    TResult? Function(TrendingError value)? trendingError,
    TResult? Function(TrendingLoaded value)? trendingLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrendingSearchInitial value)? trendingInitial,
    TResult Function(TrendingLoading value)? trendingLoading,
    TResult Function(TrendingError value)? trendingError,
    TResult Function(TrendingLoaded value)? trendingLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingSearchStateCopyWith<$Res> {
  factory $TrendingSearchStateCopyWith(
          TrendingSearchState value, $Res Function(TrendingSearchState) then) =
      _$TrendingSearchStateCopyWithImpl<$Res, TrendingSearchState>;
}

/// @nodoc
class _$TrendingSearchStateCopyWithImpl<$Res, $Val extends TrendingSearchState>
    implements $TrendingSearchStateCopyWith<$Res> {
  _$TrendingSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TrendingSearchInitialCopyWith<$Res> {
  factory _$$TrendingSearchInitialCopyWith(_$TrendingSearchInitial value,
          $Res Function(_$TrendingSearchInitial) then) =
      __$$TrendingSearchInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrendingSearchInitialCopyWithImpl<$Res>
    extends _$TrendingSearchStateCopyWithImpl<$Res, _$TrendingSearchInitial>
    implements _$$TrendingSearchInitialCopyWith<$Res> {
  __$$TrendingSearchInitialCopyWithImpl(_$TrendingSearchInitial _value,
      $Res Function(_$TrendingSearchInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TrendingSearchInitial implements TrendingSearchInitial {
  const _$TrendingSearchInitial();

  @override
  String toString() {
    return 'TrendingSearchState.trendingInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TrendingSearchInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trendingInitial,
    required TResult Function() trendingLoading,
    required TResult Function(String msg) trendingError,
    required TResult Function(TrendingRes response) trendingLoaded,
  }) {
    return trendingInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? trendingInitial,
    TResult? Function()? trendingLoading,
    TResult? Function(String msg)? trendingError,
    TResult? Function(TrendingRes response)? trendingLoaded,
  }) {
    return trendingInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trendingInitial,
    TResult Function()? trendingLoading,
    TResult Function(String msg)? trendingError,
    TResult Function(TrendingRes response)? trendingLoaded,
    required TResult orElse(),
  }) {
    if (trendingInitial != null) {
      return trendingInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrendingSearchInitial value) trendingInitial,
    required TResult Function(TrendingLoading value) trendingLoading,
    required TResult Function(TrendingError value) trendingError,
    required TResult Function(TrendingLoaded value) trendingLoaded,
  }) {
    return trendingInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrendingSearchInitial value)? trendingInitial,
    TResult? Function(TrendingLoading value)? trendingLoading,
    TResult? Function(TrendingError value)? trendingError,
    TResult? Function(TrendingLoaded value)? trendingLoaded,
  }) {
    return trendingInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrendingSearchInitial value)? trendingInitial,
    TResult Function(TrendingLoading value)? trendingLoading,
    TResult Function(TrendingError value)? trendingError,
    TResult Function(TrendingLoaded value)? trendingLoaded,
    required TResult orElse(),
  }) {
    if (trendingInitial != null) {
      return trendingInitial(this);
    }
    return orElse();
  }
}

abstract class TrendingSearchInitial implements TrendingSearchState {
  const factory TrendingSearchInitial() = _$TrendingSearchInitial;
}

/// @nodoc
abstract class _$$TrendingLoadingCopyWith<$Res> {
  factory _$$TrendingLoadingCopyWith(
          _$TrendingLoading value, $Res Function(_$TrendingLoading) then) =
      __$$TrendingLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrendingLoadingCopyWithImpl<$Res>
    extends _$TrendingSearchStateCopyWithImpl<$Res, _$TrendingLoading>
    implements _$$TrendingLoadingCopyWith<$Res> {
  __$$TrendingLoadingCopyWithImpl(
      _$TrendingLoading _value, $Res Function(_$TrendingLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TrendingLoading implements TrendingLoading {
  const _$TrendingLoading();

  @override
  String toString() {
    return 'TrendingSearchState.trendingLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TrendingLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trendingInitial,
    required TResult Function() trendingLoading,
    required TResult Function(String msg) trendingError,
    required TResult Function(TrendingRes response) trendingLoaded,
  }) {
    return trendingLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? trendingInitial,
    TResult? Function()? trendingLoading,
    TResult? Function(String msg)? trendingError,
    TResult? Function(TrendingRes response)? trendingLoaded,
  }) {
    return trendingLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trendingInitial,
    TResult Function()? trendingLoading,
    TResult Function(String msg)? trendingError,
    TResult Function(TrendingRes response)? trendingLoaded,
    required TResult orElse(),
  }) {
    if (trendingLoading != null) {
      return trendingLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrendingSearchInitial value) trendingInitial,
    required TResult Function(TrendingLoading value) trendingLoading,
    required TResult Function(TrendingError value) trendingError,
    required TResult Function(TrendingLoaded value) trendingLoaded,
  }) {
    return trendingLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrendingSearchInitial value)? trendingInitial,
    TResult? Function(TrendingLoading value)? trendingLoading,
    TResult? Function(TrendingError value)? trendingError,
    TResult? Function(TrendingLoaded value)? trendingLoaded,
  }) {
    return trendingLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrendingSearchInitial value)? trendingInitial,
    TResult Function(TrendingLoading value)? trendingLoading,
    TResult Function(TrendingError value)? trendingError,
    TResult Function(TrendingLoaded value)? trendingLoaded,
    required TResult orElse(),
  }) {
    if (trendingLoading != null) {
      return trendingLoading(this);
    }
    return orElse();
  }
}

abstract class TrendingLoading implements TrendingSearchState {
  const factory TrendingLoading() = _$TrendingLoading;
}

/// @nodoc
abstract class _$$TrendingErrorCopyWith<$Res> {
  factory _$$TrendingErrorCopyWith(
          _$TrendingError value, $Res Function(_$TrendingError) then) =
      __$$TrendingErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$TrendingErrorCopyWithImpl<$Res>
    extends _$TrendingSearchStateCopyWithImpl<$Res, _$TrendingError>
    implements _$$TrendingErrorCopyWith<$Res> {
  __$$TrendingErrorCopyWithImpl(
      _$TrendingError _value, $Res Function(_$TrendingError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$TrendingError(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TrendingError implements TrendingError {
  const _$TrendingError(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'TrendingSearchState.trendingError(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingError &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingErrorCopyWith<_$TrendingError> get copyWith =>
      __$$TrendingErrorCopyWithImpl<_$TrendingError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trendingInitial,
    required TResult Function() trendingLoading,
    required TResult Function(String msg) trendingError,
    required TResult Function(TrendingRes response) trendingLoaded,
  }) {
    return trendingError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? trendingInitial,
    TResult? Function()? trendingLoading,
    TResult? Function(String msg)? trendingError,
    TResult? Function(TrendingRes response)? trendingLoaded,
  }) {
    return trendingError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trendingInitial,
    TResult Function()? trendingLoading,
    TResult Function(String msg)? trendingError,
    TResult Function(TrendingRes response)? trendingLoaded,
    required TResult orElse(),
  }) {
    if (trendingError != null) {
      return trendingError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrendingSearchInitial value) trendingInitial,
    required TResult Function(TrendingLoading value) trendingLoading,
    required TResult Function(TrendingError value) trendingError,
    required TResult Function(TrendingLoaded value) trendingLoaded,
  }) {
    return trendingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrendingSearchInitial value)? trendingInitial,
    TResult? Function(TrendingLoading value)? trendingLoading,
    TResult? Function(TrendingError value)? trendingError,
    TResult? Function(TrendingLoaded value)? trendingLoaded,
  }) {
    return trendingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrendingSearchInitial value)? trendingInitial,
    TResult Function(TrendingLoading value)? trendingLoading,
    TResult Function(TrendingError value)? trendingError,
    TResult Function(TrendingLoaded value)? trendingLoaded,
    required TResult orElse(),
  }) {
    if (trendingError != null) {
      return trendingError(this);
    }
    return orElse();
  }
}

abstract class TrendingError implements TrendingSearchState {
  const factory TrendingError(final String msg) = _$TrendingError;

  String get msg;
  @JsonKey(ignore: true)
  _$$TrendingErrorCopyWith<_$TrendingError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrendingLoadedCopyWith<$Res> {
  factory _$$TrendingLoadedCopyWith(
          _$TrendingLoaded value, $Res Function(_$TrendingLoaded) then) =
      __$$TrendingLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({TrendingRes response});
}

/// @nodoc
class __$$TrendingLoadedCopyWithImpl<$Res>
    extends _$TrendingSearchStateCopyWithImpl<$Res, _$TrendingLoaded>
    implements _$$TrendingLoadedCopyWith<$Res> {
  __$$TrendingLoadedCopyWithImpl(
      _$TrendingLoaded _value, $Res Function(_$TrendingLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$TrendingLoaded(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as TrendingRes,
    ));
  }
}

/// @nodoc

class _$TrendingLoaded implements TrendingLoaded {
  const _$TrendingLoaded(this.response);

  @override
  final TrendingRes response;

  @override
  String toString() {
    return 'TrendingSearchState.trendingLoaded(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingLoaded &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingLoadedCopyWith<_$TrendingLoaded> get copyWith =>
      __$$TrendingLoadedCopyWithImpl<_$TrendingLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trendingInitial,
    required TResult Function() trendingLoading,
    required TResult Function(String msg) trendingError,
    required TResult Function(TrendingRes response) trendingLoaded,
  }) {
    return trendingLoaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? trendingInitial,
    TResult? Function()? trendingLoading,
    TResult? Function(String msg)? trendingError,
    TResult? Function(TrendingRes response)? trendingLoaded,
  }) {
    return trendingLoaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trendingInitial,
    TResult Function()? trendingLoading,
    TResult Function(String msg)? trendingError,
    TResult Function(TrendingRes response)? trendingLoaded,
    required TResult orElse(),
  }) {
    if (trendingLoaded != null) {
      return trendingLoaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TrendingSearchInitial value) trendingInitial,
    required TResult Function(TrendingLoading value) trendingLoading,
    required TResult Function(TrendingError value) trendingError,
    required TResult Function(TrendingLoaded value) trendingLoaded,
  }) {
    return trendingLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TrendingSearchInitial value)? trendingInitial,
    TResult? Function(TrendingLoading value)? trendingLoading,
    TResult? Function(TrendingError value)? trendingError,
    TResult? Function(TrendingLoaded value)? trendingLoaded,
  }) {
    return trendingLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TrendingSearchInitial value)? trendingInitial,
    TResult Function(TrendingLoading value)? trendingLoading,
    TResult Function(TrendingError value)? trendingError,
    TResult Function(TrendingLoaded value)? trendingLoaded,
    required TResult orElse(),
  }) {
    if (trendingLoaded != null) {
      return trendingLoaded(this);
    }
    return orElse();
  }
}

abstract class TrendingLoaded implements TrendingSearchState {
  const factory TrendingLoaded(final TrendingRes response) = _$TrendingLoaded;

  TrendingRes get response;
  @JsonKey(ignore: true)
  _$$TrendingLoadedCopyWith<_$TrendingLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
