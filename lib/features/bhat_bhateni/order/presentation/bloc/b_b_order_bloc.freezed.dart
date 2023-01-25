// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'b_b_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BBOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PlaceOrderReq orderRequest) placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PlaceOrderReq orderRequest)? placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PlaceOrderReq orderRequest)? placeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(PlaceOrder value) placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(PlaceOrder value)? placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BBOrderEventCopyWith<$Res> {
  factory $BBOrderEventCopyWith(
          BBOrderEvent value, $Res Function(BBOrderEvent) then) =
      _$BBOrderEventCopyWithImpl<$Res, BBOrderEvent>;
}

/// @nodoc
class _$BBOrderEventCopyWithImpl<$Res, $Val extends BBOrderEvent>
    implements $BBOrderEventCopyWith<$Res> {
  _$BBOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$BBOrderEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'BBOrderEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PlaceOrderReq orderRequest) placeOrder,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PlaceOrderReq orderRequest)? placeOrder,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PlaceOrderReq orderRequest)? placeOrder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(PlaceOrder value) placeOrder,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(PlaceOrder value)? placeOrder,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements BBOrderEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$PlaceOrderCopyWith<$Res> {
  factory _$$PlaceOrderCopyWith(
          _$PlaceOrder value, $Res Function(_$PlaceOrder) then) =
      __$$PlaceOrderCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaceOrderReq orderRequest});

  $PlaceOrderReqCopyWith<$Res> get orderRequest;
}

/// @nodoc
class __$$PlaceOrderCopyWithImpl<$Res>
    extends _$BBOrderEventCopyWithImpl<$Res, _$PlaceOrder>
    implements _$$PlaceOrderCopyWith<$Res> {
  __$$PlaceOrderCopyWithImpl(
      _$PlaceOrder _value, $Res Function(_$PlaceOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderRequest = null,
  }) {
    return _then(_$PlaceOrder(
      null == orderRequest
          ? _value.orderRequest
          : orderRequest // ignore: cast_nullable_to_non_nullable
              as PlaceOrderReq,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceOrderReqCopyWith<$Res> get orderRequest {
    return $PlaceOrderReqCopyWith<$Res>(_value.orderRequest, (value) {
      return _then(_value.copyWith(orderRequest: value));
    });
  }
}

/// @nodoc

class _$PlaceOrder implements PlaceOrder {
  const _$PlaceOrder(this.orderRequest);

  @override
  final PlaceOrderReq orderRequest;

  @override
  String toString() {
    return 'BBOrderEvent.placeOrder(orderRequest: $orderRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrder &&
            (identical(other.orderRequest, orderRequest) ||
                other.orderRequest == orderRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderCopyWith<_$PlaceOrder> get copyWith =>
      __$$PlaceOrderCopyWithImpl<_$PlaceOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PlaceOrderReq orderRequest) placeOrder,
  }) {
    return placeOrder(orderRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PlaceOrderReq orderRequest)? placeOrder,
  }) {
    return placeOrder?.call(orderRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PlaceOrderReq orderRequest)? placeOrder,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(orderRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(PlaceOrder value) placeOrder,
  }) {
    return placeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(PlaceOrder value)? placeOrder,
  }) {
    return placeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(this);
    }
    return orElse();
  }
}

abstract class PlaceOrder implements BBOrderEvent {
  const factory PlaceOrder(final PlaceOrderReq orderRequest) = _$PlaceOrder;

  PlaceOrderReq get orderRequest;
  @JsonKey(ignore: true)
  _$$PlaceOrderCopyWith<_$PlaceOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BBOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() placeOrderLoading,
    required TResult Function(String error) placeOrderFailure,
    required TResult Function(BBPlaceOrderSuccessRes successRes)
        placeOrderSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? placeOrderLoading,
    TResult? Function(String error)? placeOrderFailure,
    TResult? Function(BBPlaceOrderSuccessRes successRes)? placeOrderSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? placeOrderLoading,
    TResult Function(String error)? placeOrderFailure,
    TResult Function(BBPlaceOrderSuccessRes successRes)? placeOrderSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PlaceOrderLoading value) placeOrderLoading,
    required TResult Function(PlaceOrderFailure value) placeOrderFailure,
    required TResult Function(PlaceOrderSuccess value) placeOrderSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PlaceOrderLoading value)? placeOrderLoading,
    TResult? Function(PlaceOrderFailure value)? placeOrderFailure,
    TResult? Function(PlaceOrderSuccess value)? placeOrderSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PlaceOrderLoading value)? placeOrderLoading,
    TResult Function(PlaceOrderFailure value)? placeOrderFailure,
    TResult Function(PlaceOrderSuccess value)? placeOrderSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BBOrderStateCopyWith<$Res> {
  factory $BBOrderStateCopyWith(
          BBOrderState value, $Res Function(BBOrderState) then) =
      _$BBOrderStateCopyWithImpl<$Res, BBOrderState>;
}

/// @nodoc
class _$BBOrderStateCopyWithImpl<$Res, $Val extends BBOrderState>
    implements $BBOrderStateCopyWith<$Res> {
  _$BBOrderStateCopyWithImpl(this._value, this._then);

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
    extends _$BBOrderStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'BBOrderState.initial()';
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
    required TResult Function() placeOrderLoading,
    required TResult Function(String error) placeOrderFailure,
    required TResult Function(BBPlaceOrderSuccessRes successRes)
        placeOrderSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? placeOrderLoading,
    TResult? Function(String error)? placeOrderFailure,
    TResult? Function(BBPlaceOrderSuccessRes successRes)? placeOrderSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? placeOrderLoading,
    TResult Function(String error)? placeOrderFailure,
    TResult Function(BBPlaceOrderSuccessRes successRes)? placeOrderSuccess,
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
    required TResult Function(PlaceOrderLoading value) placeOrderLoading,
    required TResult Function(PlaceOrderFailure value) placeOrderFailure,
    required TResult Function(PlaceOrderSuccess value) placeOrderSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PlaceOrderLoading value)? placeOrderLoading,
    TResult? Function(PlaceOrderFailure value)? placeOrderFailure,
    TResult? Function(PlaceOrderSuccess value)? placeOrderSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PlaceOrderLoading value)? placeOrderLoading,
    TResult Function(PlaceOrderFailure value)? placeOrderFailure,
    TResult Function(PlaceOrderSuccess value)? placeOrderSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BBOrderState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$PlaceOrderLoadingCopyWith<$Res> {
  factory _$$PlaceOrderLoadingCopyWith(
          _$PlaceOrderLoading value, $Res Function(_$PlaceOrderLoading) then) =
      __$$PlaceOrderLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaceOrderLoadingCopyWithImpl<$Res>
    extends _$BBOrderStateCopyWithImpl<$Res, _$PlaceOrderLoading>
    implements _$$PlaceOrderLoadingCopyWith<$Res> {
  __$$PlaceOrderLoadingCopyWithImpl(
      _$PlaceOrderLoading _value, $Res Function(_$PlaceOrderLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlaceOrderLoading implements PlaceOrderLoading {
  const _$PlaceOrderLoading();

  @override
  String toString() {
    return 'BBOrderState.placeOrderLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlaceOrderLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() placeOrderLoading,
    required TResult Function(String error) placeOrderFailure,
    required TResult Function(BBPlaceOrderSuccessRes successRes)
        placeOrderSuccess,
  }) {
    return placeOrderLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? placeOrderLoading,
    TResult? Function(String error)? placeOrderFailure,
    TResult? Function(BBPlaceOrderSuccessRes successRes)? placeOrderSuccess,
  }) {
    return placeOrderLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? placeOrderLoading,
    TResult Function(String error)? placeOrderFailure,
    TResult Function(BBPlaceOrderSuccessRes successRes)? placeOrderSuccess,
    required TResult orElse(),
  }) {
    if (placeOrderLoading != null) {
      return placeOrderLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PlaceOrderLoading value) placeOrderLoading,
    required TResult Function(PlaceOrderFailure value) placeOrderFailure,
    required TResult Function(PlaceOrderSuccess value) placeOrderSuccess,
  }) {
    return placeOrderLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PlaceOrderLoading value)? placeOrderLoading,
    TResult? Function(PlaceOrderFailure value)? placeOrderFailure,
    TResult? Function(PlaceOrderSuccess value)? placeOrderSuccess,
  }) {
    return placeOrderLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PlaceOrderLoading value)? placeOrderLoading,
    TResult Function(PlaceOrderFailure value)? placeOrderFailure,
    TResult Function(PlaceOrderSuccess value)? placeOrderSuccess,
    required TResult orElse(),
  }) {
    if (placeOrderLoading != null) {
      return placeOrderLoading(this);
    }
    return orElse();
  }
}

abstract class PlaceOrderLoading implements BBOrderState {
  const factory PlaceOrderLoading() = _$PlaceOrderLoading;
}

/// @nodoc
abstract class _$$PlaceOrderFailureCopyWith<$Res> {
  factory _$$PlaceOrderFailureCopyWith(
          _$PlaceOrderFailure value, $Res Function(_$PlaceOrderFailure) then) =
      __$$PlaceOrderFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PlaceOrderFailureCopyWithImpl<$Res>
    extends _$BBOrderStateCopyWithImpl<$Res, _$PlaceOrderFailure>
    implements _$$PlaceOrderFailureCopyWith<$Res> {
  __$$PlaceOrderFailureCopyWithImpl(
      _$PlaceOrderFailure _value, $Res Function(_$PlaceOrderFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PlaceOrderFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlaceOrderFailure implements PlaceOrderFailure {
  const _$PlaceOrderFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'BBOrderState.placeOrderFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderFailureCopyWith<_$PlaceOrderFailure> get copyWith =>
      __$$PlaceOrderFailureCopyWithImpl<_$PlaceOrderFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() placeOrderLoading,
    required TResult Function(String error) placeOrderFailure,
    required TResult Function(BBPlaceOrderSuccessRes successRes)
        placeOrderSuccess,
  }) {
    return placeOrderFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? placeOrderLoading,
    TResult? Function(String error)? placeOrderFailure,
    TResult? Function(BBPlaceOrderSuccessRes successRes)? placeOrderSuccess,
  }) {
    return placeOrderFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? placeOrderLoading,
    TResult Function(String error)? placeOrderFailure,
    TResult Function(BBPlaceOrderSuccessRes successRes)? placeOrderSuccess,
    required TResult orElse(),
  }) {
    if (placeOrderFailure != null) {
      return placeOrderFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PlaceOrderLoading value) placeOrderLoading,
    required TResult Function(PlaceOrderFailure value) placeOrderFailure,
    required TResult Function(PlaceOrderSuccess value) placeOrderSuccess,
  }) {
    return placeOrderFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PlaceOrderLoading value)? placeOrderLoading,
    TResult? Function(PlaceOrderFailure value)? placeOrderFailure,
    TResult? Function(PlaceOrderSuccess value)? placeOrderSuccess,
  }) {
    return placeOrderFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PlaceOrderLoading value)? placeOrderLoading,
    TResult Function(PlaceOrderFailure value)? placeOrderFailure,
    TResult Function(PlaceOrderSuccess value)? placeOrderSuccess,
    required TResult orElse(),
  }) {
    if (placeOrderFailure != null) {
      return placeOrderFailure(this);
    }
    return orElse();
  }
}

abstract class PlaceOrderFailure implements BBOrderState {
  const factory PlaceOrderFailure(final String error) = _$PlaceOrderFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$PlaceOrderFailureCopyWith<_$PlaceOrderFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceOrderSuccessCopyWith<$Res> {
  factory _$$PlaceOrderSuccessCopyWith(
          _$PlaceOrderSuccess value, $Res Function(_$PlaceOrderSuccess) then) =
      __$$PlaceOrderSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({BBPlaceOrderSuccessRes successRes});

  $BBPlaceOrderSuccessResCopyWith<$Res> get successRes;
}

/// @nodoc
class __$$PlaceOrderSuccessCopyWithImpl<$Res>
    extends _$BBOrderStateCopyWithImpl<$Res, _$PlaceOrderSuccess>
    implements _$$PlaceOrderSuccessCopyWith<$Res> {
  __$$PlaceOrderSuccessCopyWithImpl(
      _$PlaceOrderSuccess _value, $Res Function(_$PlaceOrderSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successRes = null,
  }) {
    return _then(_$PlaceOrderSuccess(
      null == successRes
          ? _value.successRes
          : successRes // ignore: cast_nullable_to_non_nullable
              as BBPlaceOrderSuccessRes,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BBPlaceOrderSuccessResCopyWith<$Res> get successRes {
    return $BBPlaceOrderSuccessResCopyWith<$Res>(_value.successRes, (value) {
      return _then(_value.copyWith(successRes: value));
    });
  }
}

/// @nodoc

class _$PlaceOrderSuccess implements PlaceOrderSuccess {
  const _$PlaceOrderSuccess(this.successRes);

  @override
  final BBPlaceOrderSuccessRes successRes;

  @override
  String toString() {
    return 'BBOrderState.placeOrderSuccess(successRes: $successRes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderSuccess &&
            (identical(other.successRes, successRes) ||
                other.successRes == successRes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successRes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderSuccessCopyWith<_$PlaceOrderSuccess> get copyWith =>
      __$$PlaceOrderSuccessCopyWithImpl<_$PlaceOrderSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() placeOrderLoading,
    required TResult Function(String error) placeOrderFailure,
    required TResult Function(BBPlaceOrderSuccessRes successRes)
        placeOrderSuccess,
  }) {
    return placeOrderSuccess(successRes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? placeOrderLoading,
    TResult? Function(String error)? placeOrderFailure,
    TResult? Function(BBPlaceOrderSuccessRes successRes)? placeOrderSuccess,
  }) {
    return placeOrderSuccess?.call(successRes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? placeOrderLoading,
    TResult Function(String error)? placeOrderFailure,
    TResult Function(BBPlaceOrderSuccessRes successRes)? placeOrderSuccess,
    required TResult orElse(),
  }) {
    if (placeOrderSuccess != null) {
      return placeOrderSuccess(successRes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(PlaceOrderLoading value) placeOrderLoading,
    required TResult Function(PlaceOrderFailure value) placeOrderFailure,
    required TResult Function(PlaceOrderSuccess value) placeOrderSuccess,
  }) {
    return placeOrderSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(PlaceOrderLoading value)? placeOrderLoading,
    TResult? Function(PlaceOrderFailure value)? placeOrderFailure,
    TResult? Function(PlaceOrderSuccess value)? placeOrderSuccess,
  }) {
    return placeOrderSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(PlaceOrderLoading value)? placeOrderLoading,
    TResult Function(PlaceOrderFailure value)? placeOrderFailure,
    TResult Function(PlaceOrderSuccess value)? placeOrderSuccess,
    required TResult orElse(),
  }) {
    if (placeOrderSuccess != null) {
      return placeOrderSuccess(this);
    }
    return orElse();
  }
}

abstract class PlaceOrderSuccess implements BBOrderState {
  const factory PlaceOrderSuccess(final BBPlaceOrderSuccessRes successRes) =
      _$PlaceOrderSuccess;

  BBPlaceOrderSuccessRes get successRes;
  @JsonKey(ignore: true)
  _$$PlaceOrderSuccessCopyWith<_$PlaceOrderSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
