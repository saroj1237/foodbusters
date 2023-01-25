// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coupon_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CouponState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() couponLoading,
    required TResult Function(String error) couponFailure,
    required TResult Function(CouponCodeRes couponRes) couponSuccess,
    required TResult Function(bool validaOrNot) couponChangeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? couponLoading,
    TResult? Function(String error)? couponFailure,
    TResult? Function(CouponCodeRes couponRes)? couponSuccess,
    TResult? Function(bool validaOrNot)? couponChangeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? couponLoading,
    TResult Function(String error)? couponFailure,
    TResult Function(CouponCodeRes couponRes)? couponSuccess,
    TResult Function(bool validaOrNot)? couponChangeState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CouponLoading value) couponLoading,
    required TResult Function(CouponFailure value) couponFailure,
    required TResult Function(CouponSuccess value) couponSuccess,
    required TResult Function(CouponChangeState value) couponChangeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CouponLoading value)? couponLoading,
    TResult? Function(CouponFailure value)? couponFailure,
    TResult? Function(CouponSuccess value)? couponSuccess,
    TResult? Function(CouponChangeState value)? couponChangeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CouponLoading value)? couponLoading,
    TResult Function(CouponFailure value)? couponFailure,
    TResult Function(CouponSuccess value)? couponSuccess,
    TResult Function(CouponChangeState value)? couponChangeState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponStateCopyWith<$Res> {
  factory $CouponStateCopyWith(
          CouponState value, $Res Function(CouponState) then) =
      _$CouponStateCopyWithImpl<$Res, CouponState>;
}

/// @nodoc
class _$CouponStateCopyWithImpl<$Res, $Val extends CouponState>
    implements $CouponStateCopyWith<$Res> {
  _$CouponStateCopyWithImpl(this._value, this._then);

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
    extends _$CouponStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'CouponState.initial()';
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
    required TResult Function() couponLoading,
    required TResult Function(String error) couponFailure,
    required TResult Function(CouponCodeRes couponRes) couponSuccess,
    required TResult Function(bool validaOrNot) couponChangeState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? couponLoading,
    TResult? Function(String error)? couponFailure,
    TResult? Function(CouponCodeRes couponRes)? couponSuccess,
    TResult? Function(bool validaOrNot)? couponChangeState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? couponLoading,
    TResult Function(String error)? couponFailure,
    TResult Function(CouponCodeRes couponRes)? couponSuccess,
    TResult Function(bool validaOrNot)? couponChangeState,
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
    required TResult Function(CouponLoading value) couponLoading,
    required TResult Function(CouponFailure value) couponFailure,
    required TResult Function(CouponSuccess value) couponSuccess,
    required TResult Function(CouponChangeState value) couponChangeState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CouponLoading value)? couponLoading,
    TResult? Function(CouponFailure value)? couponFailure,
    TResult? Function(CouponSuccess value)? couponSuccess,
    TResult? Function(CouponChangeState value)? couponChangeState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CouponLoading value)? couponLoading,
    TResult Function(CouponFailure value)? couponFailure,
    TResult Function(CouponSuccess value)? couponSuccess,
    TResult Function(CouponChangeState value)? couponChangeState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CouponState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$CouponLoadingCopyWith<$Res> {
  factory _$$CouponLoadingCopyWith(
          _$CouponLoading value, $Res Function(_$CouponLoading) then) =
      __$$CouponLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CouponLoadingCopyWithImpl<$Res>
    extends _$CouponStateCopyWithImpl<$Res, _$CouponLoading>
    implements _$$CouponLoadingCopyWith<$Res> {
  __$$CouponLoadingCopyWithImpl(
      _$CouponLoading _value, $Res Function(_$CouponLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CouponLoading implements CouponLoading {
  const _$CouponLoading();

  @override
  String toString() {
    return 'CouponState.couponLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CouponLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() couponLoading,
    required TResult Function(String error) couponFailure,
    required TResult Function(CouponCodeRes couponRes) couponSuccess,
    required TResult Function(bool validaOrNot) couponChangeState,
  }) {
    return couponLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? couponLoading,
    TResult? Function(String error)? couponFailure,
    TResult? Function(CouponCodeRes couponRes)? couponSuccess,
    TResult? Function(bool validaOrNot)? couponChangeState,
  }) {
    return couponLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? couponLoading,
    TResult Function(String error)? couponFailure,
    TResult Function(CouponCodeRes couponRes)? couponSuccess,
    TResult Function(bool validaOrNot)? couponChangeState,
    required TResult orElse(),
  }) {
    if (couponLoading != null) {
      return couponLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CouponLoading value) couponLoading,
    required TResult Function(CouponFailure value) couponFailure,
    required TResult Function(CouponSuccess value) couponSuccess,
    required TResult Function(CouponChangeState value) couponChangeState,
  }) {
    return couponLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CouponLoading value)? couponLoading,
    TResult? Function(CouponFailure value)? couponFailure,
    TResult? Function(CouponSuccess value)? couponSuccess,
    TResult? Function(CouponChangeState value)? couponChangeState,
  }) {
    return couponLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CouponLoading value)? couponLoading,
    TResult Function(CouponFailure value)? couponFailure,
    TResult Function(CouponSuccess value)? couponSuccess,
    TResult Function(CouponChangeState value)? couponChangeState,
    required TResult orElse(),
  }) {
    if (couponLoading != null) {
      return couponLoading(this);
    }
    return orElse();
  }
}

abstract class CouponLoading implements CouponState {
  const factory CouponLoading() = _$CouponLoading;
}

/// @nodoc
abstract class _$$CouponFailureCopyWith<$Res> {
  factory _$$CouponFailureCopyWith(
          _$CouponFailure value, $Res Function(_$CouponFailure) then) =
      __$$CouponFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CouponFailureCopyWithImpl<$Res>
    extends _$CouponStateCopyWithImpl<$Res, _$CouponFailure>
    implements _$$CouponFailureCopyWith<$Res> {
  __$$CouponFailureCopyWithImpl(
      _$CouponFailure _value, $Res Function(_$CouponFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CouponFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CouponFailure implements CouponFailure {
  const _$CouponFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CouponState.couponFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponFailureCopyWith<_$CouponFailure> get copyWith =>
      __$$CouponFailureCopyWithImpl<_$CouponFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() couponLoading,
    required TResult Function(String error) couponFailure,
    required TResult Function(CouponCodeRes couponRes) couponSuccess,
    required TResult Function(bool validaOrNot) couponChangeState,
  }) {
    return couponFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? couponLoading,
    TResult? Function(String error)? couponFailure,
    TResult? Function(CouponCodeRes couponRes)? couponSuccess,
    TResult? Function(bool validaOrNot)? couponChangeState,
  }) {
    return couponFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? couponLoading,
    TResult Function(String error)? couponFailure,
    TResult Function(CouponCodeRes couponRes)? couponSuccess,
    TResult Function(bool validaOrNot)? couponChangeState,
    required TResult orElse(),
  }) {
    if (couponFailure != null) {
      return couponFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CouponLoading value) couponLoading,
    required TResult Function(CouponFailure value) couponFailure,
    required TResult Function(CouponSuccess value) couponSuccess,
    required TResult Function(CouponChangeState value) couponChangeState,
  }) {
    return couponFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CouponLoading value)? couponLoading,
    TResult? Function(CouponFailure value)? couponFailure,
    TResult? Function(CouponSuccess value)? couponSuccess,
    TResult? Function(CouponChangeState value)? couponChangeState,
  }) {
    return couponFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CouponLoading value)? couponLoading,
    TResult Function(CouponFailure value)? couponFailure,
    TResult Function(CouponSuccess value)? couponSuccess,
    TResult Function(CouponChangeState value)? couponChangeState,
    required TResult orElse(),
  }) {
    if (couponFailure != null) {
      return couponFailure(this);
    }
    return orElse();
  }
}

abstract class CouponFailure implements CouponState {
  const factory CouponFailure(final String error) = _$CouponFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$CouponFailureCopyWith<_$CouponFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CouponSuccessCopyWith<$Res> {
  factory _$$CouponSuccessCopyWith(
          _$CouponSuccess value, $Res Function(_$CouponSuccess) then) =
      __$$CouponSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({CouponCodeRes couponRes});
}

/// @nodoc
class __$$CouponSuccessCopyWithImpl<$Res>
    extends _$CouponStateCopyWithImpl<$Res, _$CouponSuccess>
    implements _$$CouponSuccessCopyWith<$Res> {
  __$$CouponSuccessCopyWithImpl(
      _$CouponSuccess _value, $Res Function(_$CouponSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponRes = null,
  }) {
    return _then(_$CouponSuccess(
      null == couponRes
          ? _value.couponRes
          : couponRes // ignore: cast_nullable_to_non_nullable
              as CouponCodeRes,
    ));
  }
}

/// @nodoc

class _$CouponSuccess implements CouponSuccess {
  const _$CouponSuccess(this.couponRes);

  @override
  final CouponCodeRes couponRes;

  @override
  String toString() {
    return 'CouponState.couponSuccess(couponRes: $couponRes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponSuccess &&
            (identical(other.couponRes, couponRes) ||
                other.couponRes == couponRes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, couponRes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponSuccessCopyWith<_$CouponSuccess> get copyWith =>
      __$$CouponSuccessCopyWithImpl<_$CouponSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() couponLoading,
    required TResult Function(String error) couponFailure,
    required TResult Function(CouponCodeRes couponRes) couponSuccess,
    required TResult Function(bool validaOrNot) couponChangeState,
  }) {
    return couponSuccess(couponRes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? couponLoading,
    TResult? Function(String error)? couponFailure,
    TResult? Function(CouponCodeRes couponRes)? couponSuccess,
    TResult? Function(bool validaOrNot)? couponChangeState,
  }) {
    return couponSuccess?.call(couponRes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? couponLoading,
    TResult Function(String error)? couponFailure,
    TResult Function(CouponCodeRes couponRes)? couponSuccess,
    TResult Function(bool validaOrNot)? couponChangeState,
    required TResult orElse(),
  }) {
    if (couponSuccess != null) {
      return couponSuccess(couponRes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CouponLoading value) couponLoading,
    required TResult Function(CouponFailure value) couponFailure,
    required TResult Function(CouponSuccess value) couponSuccess,
    required TResult Function(CouponChangeState value) couponChangeState,
  }) {
    return couponSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CouponLoading value)? couponLoading,
    TResult? Function(CouponFailure value)? couponFailure,
    TResult? Function(CouponSuccess value)? couponSuccess,
    TResult? Function(CouponChangeState value)? couponChangeState,
  }) {
    return couponSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CouponLoading value)? couponLoading,
    TResult Function(CouponFailure value)? couponFailure,
    TResult Function(CouponSuccess value)? couponSuccess,
    TResult Function(CouponChangeState value)? couponChangeState,
    required TResult orElse(),
  }) {
    if (couponSuccess != null) {
      return couponSuccess(this);
    }
    return orElse();
  }
}

abstract class CouponSuccess implements CouponState {
  const factory CouponSuccess(final CouponCodeRes couponRes) = _$CouponSuccess;

  CouponCodeRes get couponRes;
  @JsonKey(ignore: true)
  _$$CouponSuccessCopyWith<_$CouponSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CouponChangeStateCopyWith<$Res> {
  factory _$$CouponChangeStateCopyWith(
          _$CouponChangeState value, $Res Function(_$CouponChangeState) then) =
      __$$CouponChangeStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool validaOrNot});
}

/// @nodoc
class __$$CouponChangeStateCopyWithImpl<$Res>
    extends _$CouponStateCopyWithImpl<$Res, _$CouponChangeState>
    implements _$$CouponChangeStateCopyWith<$Res> {
  __$$CouponChangeStateCopyWithImpl(
      _$CouponChangeState _value, $Res Function(_$CouponChangeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validaOrNot = null,
  }) {
    return _then(_$CouponChangeState(
      null == validaOrNot
          ? _value.validaOrNot
          : validaOrNot // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CouponChangeState implements CouponChangeState {
  const _$CouponChangeState(this.validaOrNot);

  @override
  final bool validaOrNot;

  @override
  String toString() {
    return 'CouponState.couponChangeState(validaOrNot: $validaOrNot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponChangeState &&
            (identical(other.validaOrNot, validaOrNot) ||
                other.validaOrNot == validaOrNot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validaOrNot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponChangeStateCopyWith<_$CouponChangeState> get copyWith =>
      __$$CouponChangeStateCopyWithImpl<_$CouponChangeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() couponLoading,
    required TResult Function(String error) couponFailure,
    required TResult Function(CouponCodeRes couponRes) couponSuccess,
    required TResult Function(bool validaOrNot) couponChangeState,
  }) {
    return couponChangeState(validaOrNot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? couponLoading,
    TResult? Function(String error)? couponFailure,
    TResult? Function(CouponCodeRes couponRes)? couponSuccess,
    TResult? Function(bool validaOrNot)? couponChangeState,
  }) {
    return couponChangeState?.call(validaOrNot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? couponLoading,
    TResult Function(String error)? couponFailure,
    TResult Function(CouponCodeRes couponRes)? couponSuccess,
    TResult Function(bool validaOrNot)? couponChangeState,
    required TResult orElse(),
  }) {
    if (couponChangeState != null) {
      return couponChangeState(validaOrNot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CouponLoading value) couponLoading,
    required TResult Function(CouponFailure value) couponFailure,
    required TResult Function(CouponSuccess value) couponSuccess,
    required TResult Function(CouponChangeState value) couponChangeState,
  }) {
    return couponChangeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CouponLoading value)? couponLoading,
    TResult? Function(CouponFailure value)? couponFailure,
    TResult? Function(CouponSuccess value)? couponSuccess,
    TResult? Function(CouponChangeState value)? couponChangeState,
  }) {
    return couponChangeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CouponLoading value)? couponLoading,
    TResult Function(CouponFailure value)? couponFailure,
    TResult Function(CouponSuccess value)? couponSuccess,
    TResult Function(CouponChangeState value)? couponChangeState,
    required TResult orElse(),
  }) {
    if (couponChangeState != null) {
      return couponChangeState(this);
    }
    return orElse();
  }
}

abstract class CouponChangeState implements CouponState {
  const factory CouponChangeState(final bool validaOrNot) = _$CouponChangeState;

  bool get validaOrNot;
  @JsonKey(ignore: true)
  _$$CouponChangeStateCopyWith<_$CouponChangeState> get copyWith =>
      throw _privateConstructorUsedError;
}
