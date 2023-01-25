// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PlaceOrderReq reqModel) placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PlaceOrderReq reqModel)? placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PlaceOrderReq reqModel)? placeOrder,
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
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

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
    extends _$OrderEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'OrderEvent.started()';
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
    required TResult Function(PlaceOrderReq reqModel) placeOrder,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PlaceOrderReq reqModel)? placeOrder,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PlaceOrderReq reqModel)? placeOrder,
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

abstract class Started implements OrderEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$PlaceOrderCopyWith<$Res> {
  factory _$$PlaceOrderCopyWith(
          _$PlaceOrder value, $Res Function(_$PlaceOrder) then) =
      __$$PlaceOrderCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaceOrderReq reqModel});

  $PlaceOrderReqCopyWith<$Res> get reqModel;
}

/// @nodoc
class __$$PlaceOrderCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$PlaceOrder>
    implements _$$PlaceOrderCopyWith<$Res> {
  __$$PlaceOrderCopyWithImpl(
      _$PlaceOrder _value, $Res Function(_$PlaceOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reqModel = null,
  }) {
    return _then(_$PlaceOrder(
      reqModel: null == reqModel
          ? _value.reqModel
          : reqModel // ignore: cast_nullable_to_non_nullable
              as PlaceOrderReq,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceOrderReqCopyWith<$Res> get reqModel {
    return $PlaceOrderReqCopyWith<$Res>(_value.reqModel, (value) {
      return _then(_value.copyWith(reqModel: value));
    });
  }
}

/// @nodoc

class _$PlaceOrder implements PlaceOrder {
  const _$PlaceOrder({required this.reqModel});

  @override
  final PlaceOrderReq reqModel;

  @override
  String toString() {
    return 'OrderEvent.placeOrder(reqModel: $reqModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrder &&
            (identical(other.reqModel, reqModel) ||
                other.reqModel == reqModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reqModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderCopyWith<_$PlaceOrder> get copyWith =>
      __$$PlaceOrderCopyWithImpl<_$PlaceOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PlaceOrderReq reqModel) placeOrder,
  }) {
    return placeOrder(reqModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PlaceOrderReq reqModel)? placeOrder,
  }) {
    return placeOrder?.call(reqModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PlaceOrderReq reqModel)? placeOrder,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(reqModel);
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

abstract class PlaceOrder implements OrderEvent {
  const factory PlaceOrder({required final PlaceOrderReq reqModel}) =
      _$PlaceOrder;

  PlaceOrderReq get reqModel;
  @JsonKey(ignore: true)
  _$$PlaceOrderCopyWith<_$PlaceOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderLoading,
    required TResult Function(PlaceOrderSuccessRes successRes)
        placeOrderSuccess,
    required TResult Function(String errorMsg) placeOrderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderLoading,
    TResult? Function(PlaceOrderSuccessRes successRes)? placeOrderSuccess,
    TResult? Function(String errorMsg)? placeOrderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderLoading,
    TResult Function(PlaceOrderSuccessRes successRes)? placeOrderSuccess,
    TResult Function(String errorMsg)? placeOrderFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OrderLoading value) orderLoading,
    required TResult Function(PlaceOrderSuccess value) placeOrderSuccess,
    required TResult Function(PlaceOrderFailure value) placeOrderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OrderLoading value)? orderLoading,
    TResult? Function(PlaceOrderSuccess value)? placeOrderSuccess,
    TResult? Function(PlaceOrderFailure value)? placeOrderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OrderLoading value)? orderLoading,
    TResult Function(PlaceOrderSuccess value)? placeOrderSuccess,
    TResult Function(PlaceOrderFailure value)? placeOrderFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

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
    extends _$OrderStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'OrderState.initial()';
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
    required TResult Function() orderLoading,
    required TResult Function(PlaceOrderSuccessRes successRes)
        placeOrderSuccess,
    required TResult Function(String errorMsg) placeOrderFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderLoading,
    TResult? Function(PlaceOrderSuccessRes successRes)? placeOrderSuccess,
    TResult? Function(String errorMsg)? placeOrderFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderLoading,
    TResult Function(PlaceOrderSuccessRes successRes)? placeOrderSuccess,
    TResult Function(String errorMsg)? placeOrderFailure,
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
    required TResult Function(OrderLoading value) orderLoading,
    required TResult Function(PlaceOrderSuccess value) placeOrderSuccess,
    required TResult Function(PlaceOrderFailure value) placeOrderFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OrderLoading value)? orderLoading,
    TResult? Function(PlaceOrderSuccess value)? placeOrderSuccess,
    TResult? Function(PlaceOrderFailure value)? placeOrderFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OrderLoading value)? orderLoading,
    TResult Function(PlaceOrderSuccess value)? placeOrderSuccess,
    TResult Function(PlaceOrderFailure value)? placeOrderFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements OrderState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$OrderLoadingCopyWith<$Res> {
  factory _$$OrderLoadingCopyWith(
          _$OrderLoading value, $Res Function(_$OrderLoading) then) =
      __$$OrderLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderLoadingCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderLoading>
    implements _$$OrderLoadingCopyWith<$Res> {
  __$$OrderLoadingCopyWithImpl(
      _$OrderLoading _value, $Res Function(_$OrderLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderLoading implements OrderLoading {
  const _$OrderLoading();

  @override
  String toString() {
    return 'OrderState.orderLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderLoading,
    required TResult Function(PlaceOrderSuccessRes successRes)
        placeOrderSuccess,
    required TResult Function(String errorMsg) placeOrderFailure,
  }) {
    return orderLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderLoading,
    TResult? Function(PlaceOrderSuccessRes successRes)? placeOrderSuccess,
    TResult? Function(String errorMsg)? placeOrderFailure,
  }) {
    return orderLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderLoading,
    TResult Function(PlaceOrderSuccessRes successRes)? placeOrderSuccess,
    TResult Function(String errorMsg)? placeOrderFailure,
    required TResult orElse(),
  }) {
    if (orderLoading != null) {
      return orderLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OrderLoading value) orderLoading,
    required TResult Function(PlaceOrderSuccess value) placeOrderSuccess,
    required TResult Function(PlaceOrderFailure value) placeOrderFailure,
  }) {
    return orderLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OrderLoading value)? orderLoading,
    TResult? Function(PlaceOrderSuccess value)? placeOrderSuccess,
    TResult? Function(PlaceOrderFailure value)? placeOrderFailure,
  }) {
    return orderLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OrderLoading value)? orderLoading,
    TResult Function(PlaceOrderSuccess value)? placeOrderSuccess,
    TResult Function(PlaceOrderFailure value)? placeOrderFailure,
    required TResult orElse(),
  }) {
    if (orderLoading != null) {
      return orderLoading(this);
    }
    return orElse();
  }
}

abstract class OrderLoading implements OrderState {
  const factory OrderLoading() = _$OrderLoading;
}

/// @nodoc
abstract class _$$PlaceOrderSuccessCopyWith<$Res> {
  factory _$$PlaceOrderSuccessCopyWith(
          _$PlaceOrderSuccess value, $Res Function(_$PlaceOrderSuccess) then) =
      __$$PlaceOrderSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaceOrderSuccessRes successRes});

  $PlaceOrderSuccessResCopyWith<$Res> get successRes;
}

/// @nodoc
class __$$PlaceOrderSuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$PlaceOrderSuccess>
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
      successRes: null == successRes
          ? _value.successRes
          : successRes // ignore: cast_nullable_to_non_nullable
              as PlaceOrderSuccessRes,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceOrderSuccessResCopyWith<$Res> get successRes {
    return $PlaceOrderSuccessResCopyWith<$Res>(_value.successRes, (value) {
      return _then(_value.copyWith(successRes: value));
    });
  }
}

/// @nodoc

class _$PlaceOrderSuccess implements PlaceOrderSuccess {
  const _$PlaceOrderSuccess({required this.successRes});

  @override
  final PlaceOrderSuccessRes successRes;

  @override
  String toString() {
    return 'OrderState.placeOrderSuccess(successRes: $successRes)';
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
    required TResult Function() orderLoading,
    required TResult Function(PlaceOrderSuccessRes successRes)
        placeOrderSuccess,
    required TResult Function(String errorMsg) placeOrderFailure,
  }) {
    return placeOrderSuccess(successRes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderLoading,
    TResult? Function(PlaceOrderSuccessRes successRes)? placeOrderSuccess,
    TResult? Function(String errorMsg)? placeOrderFailure,
  }) {
    return placeOrderSuccess?.call(successRes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderLoading,
    TResult Function(PlaceOrderSuccessRes successRes)? placeOrderSuccess,
    TResult Function(String errorMsg)? placeOrderFailure,
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
    required TResult Function(OrderLoading value) orderLoading,
    required TResult Function(PlaceOrderSuccess value) placeOrderSuccess,
    required TResult Function(PlaceOrderFailure value) placeOrderFailure,
  }) {
    return placeOrderSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OrderLoading value)? orderLoading,
    TResult? Function(PlaceOrderSuccess value)? placeOrderSuccess,
    TResult? Function(PlaceOrderFailure value)? placeOrderFailure,
  }) {
    return placeOrderSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OrderLoading value)? orderLoading,
    TResult Function(PlaceOrderSuccess value)? placeOrderSuccess,
    TResult Function(PlaceOrderFailure value)? placeOrderFailure,
    required TResult orElse(),
  }) {
    if (placeOrderSuccess != null) {
      return placeOrderSuccess(this);
    }
    return orElse();
  }
}

abstract class PlaceOrderSuccess implements OrderState {
  const factory PlaceOrderSuccess(
      {required final PlaceOrderSuccessRes successRes}) = _$PlaceOrderSuccess;

  PlaceOrderSuccessRes get successRes;
  @JsonKey(ignore: true)
  _$$PlaceOrderSuccessCopyWith<_$PlaceOrderSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceOrderFailureCopyWith<$Res> {
  factory _$$PlaceOrderFailureCopyWith(
          _$PlaceOrderFailure value, $Res Function(_$PlaceOrderFailure) then) =
      __$$PlaceOrderFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$PlaceOrderFailureCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$PlaceOrderFailure>
    implements _$$PlaceOrderFailureCopyWith<$Res> {
  __$$PlaceOrderFailureCopyWithImpl(
      _$PlaceOrderFailure _value, $Res Function(_$PlaceOrderFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$PlaceOrderFailure(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlaceOrderFailure implements PlaceOrderFailure {
  const _$PlaceOrderFailure(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'OrderState.placeOrderFailure(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderFailure &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderFailureCopyWith<_$PlaceOrderFailure> get copyWith =>
      __$$PlaceOrderFailureCopyWithImpl<_$PlaceOrderFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderLoading,
    required TResult Function(PlaceOrderSuccessRes successRes)
        placeOrderSuccess,
    required TResult Function(String errorMsg) placeOrderFailure,
  }) {
    return placeOrderFailure(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderLoading,
    TResult? Function(PlaceOrderSuccessRes successRes)? placeOrderSuccess,
    TResult? Function(String errorMsg)? placeOrderFailure,
  }) {
    return placeOrderFailure?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderLoading,
    TResult Function(PlaceOrderSuccessRes successRes)? placeOrderSuccess,
    TResult Function(String errorMsg)? placeOrderFailure,
    required TResult orElse(),
  }) {
    if (placeOrderFailure != null) {
      return placeOrderFailure(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OrderLoading value) orderLoading,
    required TResult Function(PlaceOrderSuccess value) placeOrderSuccess,
    required TResult Function(PlaceOrderFailure value) placeOrderFailure,
  }) {
    return placeOrderFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OrderLoading value)? orderLoading,
    TResult? Function(PlaceOrderSuccess value)? placeOrderSuccess,
    TResult? Function(PlaceOrderFailure value)? placeOrderFailure,
  }) {
    return placeOrderFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OrderLoading value)? orderLoading,
    TResult Function(PlaceOrderSuccess value)? placeOrderSuccess,
    TResult Function(PlaceOrderFailure value)? placeOrderFailure,
    required TResult orElse(),
  }) {
    if (placeOrderFailure != null) {
      return placeOrderFailure(this);
    }
    return orElse();
  }
}

abstract class PlaceOrderFailure implements OrderState {
  const factory PlaceOrderFailure(final String errorMsg) = _$PlaceOrderFailure;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$PlaceOrderFailureCopyWith<_$PlaceOrderFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
