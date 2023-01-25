// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentEvent {
  PaymentReq get req => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentReq req) paywithCOD,
    required TResult Function(PaymentReq req) paywithEsewa,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentReq req)? paywithCOD,
    TResult? Function(PaymentReq req)? paywithEsewa,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentReq req)? paywithCOD,
    TResult Function(PaymentReq req)? paywithEsewa,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaywithCOD value) paywithCOD,
    required TResult Function(PaywithEsewa value) paywithEsewa,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaywithCOD value)? paywithCOD,
    TResult? Function(PaywithEsewa value)? paywithEsewa,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaywithCOD value)? paywithCOD,
    TResult Function(PaywithEsewa value)? paywithEsewa,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentEventCopyWith<PaymentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
  @useResult
  $Res call({PaymentReq req});

  $PaymentReqCopyWith<$Res> get req;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? req = null,
  }) {
    return _then(_value.copyWith(
      req: null == req
          ? _value.req
          : req // ignore: cast_nullable_to_non_nullable
              as PaymentReq,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentReqCopyWith<$Res> get req {
    return $PaymentReqCopyWith<$Res>(_value.req, (value) {
      return _then(_value.copyWith(req: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaywithCODCopyWith<$Res>
    implements $PaymentEventCopyWith<$Res> {
  factory _$$PaywithCODCopyWith(
          _$PaywithCOD value, $Res Function(_$PaywithCOD) then) =
      __$$PaywithCODCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentReq req});

  @override
  $PaymentReqCopyWith<$Res> get req;
}

/// @nodoc
class __$$PaywithCODCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$PaywithCOD>
    implements _$$PaywithCODCopyWith<$Res> {
  __$$PaywithCODCopyWithImpl(
      _$PaywithCOD _value, $Res Function(_$PaywithCOD) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? req = null,
  }) {
    return _then(_$PaywithCOD(
      null == req
          ? _value.req
          : req // ignore: cast_nullable_to_non_nullable
              as PaymentReq,
    ));
  }
}

/// @nodoc

class _$PaywithCOD implements PaywithCOD {
  const _$PaywithCOD(this.req);

  @override
  final PaymentReq req;

  @override
  String toString() {
    return 'PaymentEvent.paywithCOD(req: $req)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaywithCOD &&
            (identical(other.req, req) || other.req == req));
  }

  @override
  int get hashCode => Object.hash(runtimeType, req);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaywithCODCopyWith<_$PaywithCOD> get copyWith =>
      __$$PaywithCODCopyWithImpl<_$PaywithCOD>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentReq req) paywithCOD,
    required TResult Function(PaymentReq req) paywithEsewa,
  }) {
    return paywithCOD(req);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentReq req)? paywithCOD,
    TResult? Function(PaymentReq req)? paywithEsewa,
  }) {
    return paywithCOD?.call(req);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentReq req)? paywithCOD,
    TResult Function(PaymentReq req)? paywithEsewa,
    required TResult orElse(),
  }) {
    if (paywithCOD != null) {
      return paywithCOD(req);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaywithCOD value) paywithCOD,
    required TResult Function(PaywithEsewa value) paywithEsewa,
  }) {
    return paywithCOD(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaywithCOD value)? paywithCOD,
    TResult? Function(PaywithEsewa value)? paywithEsewa,
  }) {
    return paywithCOD?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaywithCOD value)? paywithCOD,
    TResult Function(PaywithEsewa value)? paywithEsewa,
    required TResult orElse(),
  }) {
    if (paywithCOD != null) {
      return paywithCOD(this);
    }
    return orElse();
  }
}

abstract class PaywithCOD implements PaymentEvent {
  const factory PaywithCOD(final PaymentReq req) = _$PaywithCOD;

  @override
  PaymentReq get req;
  @override
  @JsonKey(ignore: true)
  _$$PaywithCODCopyWith<_$PaywithCOD> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaywithEsewaCopyWith<$Res>
    implements $PaymentEventCopyWith<$Res> {
  factory _$$PaywithEsewaCopyWith(
          _$PaywithEsewa value, $Res Function(_$PaywithEsewa) then) =
      __$$PaywithEsewaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentReq req});

  @override
  $PaymentReqCopyWith<$Res> get req;
}

/// @nodoc
class __$$PaywithEsewaCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$PaywithEsewa>
    implements _$$PaywithEsewaCopyWith<$Res> {
  __$$PaywithEsewaCopyWithImpl(
      _$PaywithEsewa _value, $Res Function(_$PaywithEsewa) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? req = null,
  }) {
    return _then(_$PaywithEsewa(
      null == req
          ? _value.req
          : req // ignore: cast_nullable_to_non_nullable
              as PaymentReq,
    ));
  }
}

/// @nodoc

class _$PaywithEsewa implements PaywithEsewa {
  const _$PaywithEsewa(this.req);

  @override
  final PaymentReq req;

  @override
  String toString() {
    return 'PaymentEvent.paywithEsewa(req: $req)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaywithEsewa &&
            (identical(other.req, req) || other.req == req));
  }

  @override
  int get hashCode => Object.hash(runtimeType, req);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaywithEsewaCopyWith<_$PaywithEsewa> get copyWith =>
      __$$PaywithEsewaCopyWithImpl<_$PaywithEsewa>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentReq req) paywithCOD,
    required TResult Function(PaymentReq req) paywithEsewa,
  }) {
    return paywithEsewa(req);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentReq req)? paywithCOD,
    TResult? Function(PaymentReq req)? paywithEsewa,
  }) {
    return paywithEsewa?.call(req);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentReq req)? paywithCOD,
    TResult Function(PaymentReq req)? paywithEsewa,
    required TResult orElse(),
  }) {
    if (paywithEsewa != null) {
      return paywithEsewa(req);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaywithCOD value) paywithCOD,
    required TResult Function(PaywithEsewa value) paywithEsewa,
  }) {
    return paywithEsewa(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaywithCOD value)? paywithCOD,
    TResult? Function(PaywithEsewa value)? paywithEsewa,
  }) {
    return paywithEsewa?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaywithCOD value)? paywithCOD,
    TResult Function(PaywithEsewa value)? paywithEsewa,
    required TResult orElse(),
  }) {
    if (paywithEsewa != null) {
      return paywithEsewa(this);
    }
    return orElse();
  }
}

abstract class PaywithEsewa implements PaymentEvent {
  const factory PaywithEsewa(final PaymentReq req) = _$PaywithEsewa;

  @override
  PaymentReq get req;
  @override
  @JsonKey(ignore: true)
  _$$PaywithEsewaCopyWith<_$PaywithEsewa> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentLoading,
    required TResult Function(String error) paymentFailure,
    required TResult Function(bool value) paymentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentLoading,
    TResult? Function(String error)? paymentFailure,
    TResult? Function(bool value)? paymentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentLoading,
    TResult Function(String error)? paymentFailure,
    TResult Function(bool value)? paymentSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PaymentLoading value) paymentLoading,
    required TResult Function(PaymentFailure value) paymentFailure,
    required TResult Function(PaymentSuccess value) paymentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PaymentLoading value)? paymentLoading,
    TResult? Function(PaymentFailure value)? paymentFailure,
    TResult? Function(PaymentSuccess value)? paymentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PaymentLoading value)? paymentLoading,
    TResult Function(PaymentFailure value)? paymentFailure,
    TResult Function(PaymentSuccess value)? paymentSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

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
    extends _$PaymentStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'PaymentState.initial()';
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
    required TResult Function() paymentLoading,
    required TResult Function(String error) paymentFailure,
    required TResult Function(bool value) paymentSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentLoading,
    TResult? Function(String error)? paymentFailure,
    TResult? Function(bool value)? paymentSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentLoading,
    TResult Function(String error)? paymentFailure,
    TResult Function(bool value)? paymentSuccess,
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
    required TResult Function(PaymentLoading value) paymentLoading,
    required TResult Function(PaymentFailure value) paymentFailure,
    required TResult Function(PaymentSuccess value) paymentSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PaymentLoading value)? paymentLoading,
    TResult? Function(PaymentFailure value)? paymentFailure,
    TResult? Function(PaymentSuccess value)? paymentSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PaymentLoading value)? paymentLoading,
    TResult Function(PaymentFailure value)? paymentFailure,
    TResult Function(PaymentSuccess value)? paymentSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PaymentState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$PaymentLoadingCopyWith<$Res> {
  factory _$$PaymentLoadingCopyWith(
          _$PaymentLoading value, $Res Function(_$PaymentLoading) then) =
      __$$PaymentLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentLoadingCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentLoading>
    implements _$$PaymentLoadingCopyWith<$Res> {
  __$$PaymentLoadingCopyWithImpl(
      _$PaymentLoading _value, $Res Function(_$PaymentLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentLoading implements PaymentLoading {
  const _$PaymentLoading();

  @override
  String toString() {
    return 'PaymentState.paymentLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentLoading,
    required TResult Function(String error) paymentFailure,
    required TResult Function(bool value) paymentSuccess,
  }) {
    return paymentLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentLoading,
    TResult? Function(String error)? paymentFailure,
    TResult? Function(bool value)? paymentSuccess,
  }) {
    return paymentLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentLoading,
    TResult Function(String error)? paymentFailure,
    TResult Function(bool value)? paymentSuccess,
    required TResult orElse(),
  }) {
    if (paymentLoading != null) {
      return paymentLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PaymentLoading value) paymentLoading,
    required TResult Function(PaymentFailure value) paymentFailure,
    required TResult Function(PaymentSuccess value) paymentSuccess,
  }) {
    return paymentLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PaymentLoading value)? paymentLoading,
    TResult? Function(PaymentFailure value)? paymentFailure,
    TResult? Function(PaymentSuccess value)? paymentSuccess,
  }) {
    return paymentLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PaymentLoading value)? paymentLoading,
    TResult Function(PaymentFailure value)? paymentFailure,
    TResult Function(PaymentSuccess value)? paymentSuccess,
    required TResult orElse(),
  }) {
    if (paymentLoading != null) {
      return paymentLoading(this);
    }
    return orElse();
  }
}

abstract class PaymentLoading implements PaymentState {
  const factory PaymentLoading() = _$PaymentLoading;
}

/// @nodoc
abstract class _$$PaymentFailureCopyWith<$Res> {
  factory _$$PaymentFailureCopyWith(
          _$PaymentFailure value, $Res Function(_$PaymentFailure) then) =
      __$$PaymentFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PaymentFailureCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentFailure>
    implements _$$PaymentFailureCopyWith<$Res> {
  __$$PaymentFailureCopyWithImpl(
      _$PaymentFailure _value, $Res Function(_$PaymentFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PaymentFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentFailure implements PaymentFailure {
  const _$PaymentFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'PaymentState.paymentFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentFailureCopyWith<_$PaymentFailure> get copyWith =>
      __$$PaymentFailureCopyWithImpl<_$PaymentFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentLoading,
    required TResult Function(String error) paymentFailure,
    required TResult Function(bool value) paymentSuccess,
  }) {
    return paymentFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentLoading,
    TResult? Function(String error)? paymentFailure,
    TResult? Function(bool value)? paymentSuccess,
  }) {
    return paymentFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentLoading,
    TResult Function(String error)? paymentFailure,
    TResult Function(bool value)? paymentSuccess,
    required TResult orElse(),
  }) {
    if (paymentFailure != null) {
      return paymentFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PaymentLoading value) paymentLoading,
    required TResult Function(PaymentFailure value) paymentFailure,
    required TResult Function(PaymentSuccess value) paymentSuccess,
  }) {
    return paymentFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PaymentLoading value)? paymentLoading,
    TResult? Function(PaymentFailure value)? paymentFailure,
    TResult? Function(PaymentSuccess value)? paymentSuccess,
  }) {
    return paymentFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PaymentLoading value)? paymentLoading,
    TResult Function(PaymentFailure value)? paymentFailure,
    TResult Function(PaymentSuccess value)? paymentSuccess,
    required TResult orElse(),
  }) {
    if (paymentFailure != null) {
      return paymentFailure(this);
    }
    return orElse();
  }
}

abstract class PaymentFailure implements PaymentState {
  const factory PaymentFailure(final String error) = _$PaymentFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$PaymentFailureCopyWith<_$PaymentFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentSuccessCopyWith<$Res> {
  factory _$$PaymentSuccessCopyWith(
          _$PaymentSuccess value, $Res Function(_$PaymentSuccess) then) =
      __$$PaymentSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$PaymentSuccessCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentSuccess>
    implements _$$PaymentSuccessCopyWith<$Res> {
  __$$PaymentSuccessCopyWithImpl(
      _$PaymentSuccess _value, $Res Function(_$PaymentSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$PaymentSuccess(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PaymentSuccess implements PaymentSuccess {
  const _$PaymentSuccess(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'PaymentState.paymentSuccess(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSuccess &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentSuccessCopyWith<_$PaymentSuccess> get copyWith =>
      __$$PaymentSuccessCopyWithImpl<_$PaymentSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentLoading,
    required TResult Function(String error) paymentFailure,
    required TResult Function(bool value) paymentSuccess,
  }) {
    return paymentSuccess(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentLoading,
    TResult? Function(String error)? paymentFailure,
    TResult? Function(bool value)? paymentSuccess,
  }) {
    return paymentSuccess?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentLoading,
    TResult Function(String error)? paymentFailure,
    TResult Function(bool value)? paymentSuccess,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PaymentLoading value) paymentLoading,
    required TResult Function(PaymentFailure value) paymentFailure,
    required TResult Function(PaymentSuccess value) paymentSuccess,
  }) {
    return paymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PaymentLoading value)? paymentLoading,
    TResult? Function(PaymentFailure value)? paymentFailure,
    TResult? Function(PaymentSuccess value)? paymentSuccess,
  }) {
    return paymentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PaymentLoading value)? paymentLoading,
    TResult Function(PaymentFailure value)? paymentFailure,
    TResult Function(PaymentSuccess value)? paymentSuccess,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess(this);
    }
    return orElse();
  }
}

abstract class PaymentSuccess implements PaymentState {
  const factory PaymentSuccess(final bool value) = _$PaymentSuccess;

  bool get value;
  @JsonKey(ignore: true)
  _$$PaymentSuccessCopyWith<_$PaymentSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
