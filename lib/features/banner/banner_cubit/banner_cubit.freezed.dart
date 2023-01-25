// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'banner_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BannerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bannerLoading,
    required TResult Function(String error) bannerFailure,
    required TResult Function(List<BannerModel> banners) bannerLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bannerLoading,
    TResult? Function(String error)? bannerFailure,
    TResult? Function(List<BannerModel> banners)? bannerLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bannerLoading,
    TResult Function(String error)? bannerFailure,
    TResult Function(List<BannerModel> banners)? bannerLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BannerLoading value) bannerLoading,
    required TResult Function(BannerFailure value) bannerFailure,
    required TResult Function(BannerLoaded value) bannerLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BannerLoading value)? bannerLoading,
    TResult? Function(BannerFailure value)? bannerFailure,
    TResult? Function(BannerLoaded value)? bannerLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BannerLoading value)? bannerLoading,
    TResult Function(BannerFailure value)? bannerFailure,
    TResult Function(BannerLoaded value)? bannerLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerStateCopyWith<$Res> {
  factory $BannerStateCopyWith(
          BannerState value, $Res Function(BannerState) then) =
      _$BannerStateCopyWithImpl<$Res, BannerState>;
}

/// @nodoc
class _$BannerStateCopyWithImpl<$Res, $Val extends BannerState>
    implements $BannerStateCopyWith<$Res> {
  _$BannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'BannerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bannerLoading,
    required TResult Function(String error) bannerFailure,
    required TResult Function(List<BannerModel> banners) bannerLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bannerLoading,
    TResult? Function(String error)? bannerFailure,
    TResult? Function(List<BannerModel> banners)? bannerLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bannerLoading,
    TResult Function(String error)? bannerFailure,
    TResult Function(List<BannerModel> banners)? bannerLoaded,
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
    required TResult Function(Initial value) initial,
    required TResult Function(BannerLoading value) bannerLoading,
    required TResult Function(BannerFailure value) bannerFailure,
    required TResult Function(BannerLoaded value) bannerLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BannerLoading value)? bannerLoading,
    TResult? Function(BannerFailure value)? bannerFailure,
    TResult? Function(BannerLoaded value)? bannerLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BannerLoading value)? bannerLoading,
    TResult Function(BannerFailure value)? bannerFailure,
    TResult Function(BannerLoaded value)? bannerLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BannerState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$BannerLoadingCopyWith<$Res> {
  factory _$$BannerLoadingCopyWith(
          _$BannerLoading value, $Res Function(_$BannerLoading) then) =
      __$$BannerLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BannerLoadingCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$BannerLoading>
    implements _$$BannerLoadingCopyWith<$Res> {
  __$$BannerLoadingCopyWithImpl(
      _$BannerLoading _value, $Res Function(_$BannerLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BannerLoading implements BannerLoading {
  const _$BannerLoading();

  @override
  String toString() {
    return 'BannerState.bannerLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BannerLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bannerLoading,
    required TResult Function(String error) bannerFailure,
    required TResult Function(List<BannerModel> banners) bannerLoaded,
  }) {
    return bannerLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bannerLoading,
    TResult? Function(String error)? bannerFailure,
    TResult? Function(List<BannerModel> banners)? bannerLoaded,
  }) {
    return bannerLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bannerLoading,
    TResult Function(String error)? bannerFailure,
    TResult Function(List<BannerModel> banners)? bannerLoaded,
    required TResult orElse(),
  }) {
    if (bannerLoading != null) {
      return bannerLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BannerLoading value) bannerLoading,
    required TResult Function(BannerFailure value) bannerFailure,
    required TResult Function(BannerLoaded value) bannerLoaded,
  }) {
    return bannerLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BannerLoading value)? bannerLoading,
    TResult? Function(BannerFailure value)? bannerFailure,
    TResult? Function(BannerLoaded value)? bannerLoaded,
  }) {
    return bannerLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BannerLoading value)? bannerLoading,
    TResult Function(BannerFailure value)? bannerFailure,
    TResult Function(BannerLoaded value)? bannerLoaded,
    required TResult orElse(),
  }) {
    if (bannerLoading != null) {
      return bannerLoading(this);
    }
    return orElse();
  }
}

abstract class BannerLoading implements BannerState {
  const factory BannerLoading() = _$BannerLoading;
}

/// @nodoc
abstract class _$$BannerFailureCopyWith<$Res> {
  factory _$$BannerFailureCopyWith(
          _$BannerFailure value, $Res Function(_$BannerFailure) then) =
      __$$BannerFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BannerFailureCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$BannerFailure>
    implements _$$BannerFailureCopyWith<$Res> {
  __$$BannerFailureCopyWithImpl(
      _$BannerFailure _value, $Res Function(_$BannerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BannerFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BannerFailure implements BannerFailure {
  const _$BannerFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'BannerState.bannerFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerFailureCopyWith<_$BannerFailure> get copyWith =>
      __$$BannerFailureCopyWithImpl<_$BannerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bannerLoading,
    required TResult Function(String error) bannerFailure,
    required TResult Function(List<BannerModel> banners) bannerLoaded,
  }) {
    return bannerFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bannerLoading,
    TResult? Function(String error)? bannerFailure,
    TResult? Function(List<BannerModel> banners)? bannerLoaded,
  }) {
    return bannerFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bannerLoading,
    TResult Function(String error)? bannerFailure,
    TResult Function(List<BannerModel> banners)? bannerLoaded,
    required TResult orElse(),
  }) {
    if (bannerFailure != null) {
      return bannerFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BannerLoading value) bannerLoading,
    required TResult Function(BannerFailure value) bannerFailure,
    required TResult Function(BannerLoaded value) bannerLoaded,
  }) {
    return bannerFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BannerLoading value)? bannerLoading,
    TResult? Function(BannerFailure value)? bannerFailure,
    TResult? Function(BannerLoaded value)? bannerLoaded,
  }) {
    return bannerFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BannerLoading value)? bannerLoading,
    TResult Function(BannerFailure value)? bannerFailure,
    TResult Function(BannerLoaded value)? bannerLoaded,
    required TResult orElse(),
  }) {
    if (bannerFailure != null) {
      return bannerFailure(this);
    }
    return orElse();
  }
}

abstract class BannerFailure implements BannerState {
  const factory BannerFailure(final String error) = _$BannerFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$BannerFailureCopyWith<_$BannerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BannerLoadedCopyWith<$Res> {
  factory _$$BannerLoadedCopyWith(
          _$BannerLoaded value, $Res Function(_$BannerLoaded) then) =
      __$$BannerLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BannerModel> banners});
}

/// @nodoc
class __$$BannerLoadedCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$BannerLoaded>
    implements _$$BannerLoadedCopyWith<$Res> {
  __$$BannerLoadedCopyWithImpl(
      _$BannerLoaded _value, $Res Function(_$BannerLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
  }) {
    return _then(_$BannerLoaded(
      null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
    ));
  }
}

/// @nodoc

class _$BannerLoaded implements BannerLoaded {
  const _$BannerLoaded(final List<BannerModel> banners) : _banners = banners;

  final List<BannerModel> _banners;
  @override
  List<BannerModel> get banners {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  @override
  String toString() {
    return 'BannerState.bannerLoaded(banners: $banners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerLoaded &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_banners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerLoadedCopyWith<_$BannerLoaded> get copyWith =>
      __$$BannerLoadedCopyWithImpl<_$BannerLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bannerLoading,
    required TResult Function(String error) bannerFailure,
    required TResult Function(List<BannerModel> banners) bannerLoaded,
  }) {
    return bannerLoaded(banners);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bannerLoading,
    TResult? Function(String error)? bannerFailure,
    TResult? Function(List<BannerModel> banners)? bannerLoaded,
  }) {
    return bannerLoaded?.call(banners);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bannerLoading,
    TResult Function(String error)? bannerFailure,
    TResult Function(List<BannerModel> banners)? bannerLoaded,
    required TResult orElse(),
  }) {
    if (bannerLoaded != null) {
      return bannerLoaded(banners);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BannerLoading value) bannerLoading,
    required TResult Function(BannerFailure value) bannerFailure,
    required TResult Function(BannerLoaded value) bannerLoaded,
  }) {
    return bannerLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BannerLoading value)? bannerLoading,
    TResult? Function(BannerFailure value)? bannerFailure,
    TResult? Function(BannerLoaded value)? bannerLoaded,
  }) {
    return bannerLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BannerLoading value)? bannerLoading,
    TResult Function(BannerFailure value)? bannerFailure,
    TResult Function(BannerLoaded value)? bannerLoaded,
    required TResult orElse(),
  }) {
    if (bannerLoaded != null) {
      return bannerLoaded(this);
    }
    return orElse();
  }
}

abstract class BannerLoaded implements BannerState {
  const factory BannerLoaded(final List<BannerModel> banners) = _$BannerLoaded;

  List<BannerModel> get banners;
  @JsonKey(ignore: true)
  _$$BannerLoadedCopyWith<_$BannerLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
