// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderHistoryLoading,
    required TResult Function(String error) orderHistoryError,
    required TResult Function(
            OrderHistory orderHistory, OrderHistoryItem? orderDetail)
        orderHistoryLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderHistoryLoading,
    TResult? Function(String error)? orderHistoryError,
    TResult? Function(OrderHistory orderHistory, OrderHistoryItem? orderDetail)?
        orderHistoryLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderHistoryLoading,
    TResult Function(String error)? orderHistoryError,
    TResult Function(OrderHistory orderHistory, OrderHistoryItem? orderDetail)?
        orderHistoryLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OrderHistoryLoading value) orderHistoryLoading,
    required TResult Function(OrderHistoryError value) orderHistoryError,
    required TResult Function(OrderHistoryLoaded value) orderHistoryLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OrderHistoryLoading value)? orderHistoryLoading,
    TResult? Function(OrderHistoryError value)? orderHistoryError,
    TResult? Function(OrderHistoryLoaded value)? orderHistoryLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OrderHistoryLoading value)? orderHistoryLoading,
    TResult Function(OrderHistoryError value)? orderHistoryError,
    TResult Function(OrderHistoryLoaded value)? orderHistoryLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryStateCopyWith<$Res> {
  factory $OrderHistoryStateCopyWith(
          OrderHistoryState value, $Res Function(OrderHistoryState) then) =
      _$OrderHistoryStateCopyWithImpl<$Res, OrderHistoryState>;
}

/// @nodoc
class _$OrderHistoryStateCopyWithImpl<$Res, $Val extends OrderHistoryState>
    implements $OrderHistoryStateCopyWith<$Res> {
  _$OrderHistoryStateCopyWithImpl(this._value, this._then);

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
    extends _$OrderHistoryStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'OrderHistoryState.initial()';
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
    required TResult Function() orderHistoryLoading,
    required TResult Function(String error) orderHistoryError,
    required TResult Function(
            OrderHistory orderHistory, OrderHistoryItem? orderDetail)
        orderHistoryLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderHistoryLoading,
    TResult? Function(String error)? orderHistoryError,
    TResult? Function(OrderHistory orderHistory, OrderHistoryItem? orderDetail)?
        orderHistoryLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderHistoryLoading,
    TResult Function(String error)? orderHistoryError,
    TResult Function(OrderHistory orderHistory, OrderHistoryItem? orderDetail)?
        orderHistoryLoaded,
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
    required TResult Function(OrderHistoryLoading value) orderHistoryLoading,
    required TResult Function(OrderHistoryError value) orderHistoryError,
    required TResult Function(OrderHistoryLoaded value) orderHistoryLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OrderHistoryLoading value)? orderHistoryLoading,
    TResult? Function(OrderHistoryError value)? orderHistoryError,
    TResult? Function(OrderHistoryLoaded value)? orderHistoryLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OrderHistoryLoading value)? orderHistoryLoading,
    TResult Function(OrderHistoryError value)? orderHistoryError,
    TResult Function(OrderHistoryLoaded value)? orderHistoryLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements OrderHistoryState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$OrderHistoryLoadingCopyWith<$Res> {
  factory _$$OrderHistoryLoadingCopyWith(_$OrderHistoryLoading value,
          $Res Function(_$OrderHistoryLoading) then) =
      __$$OrderHistoryLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderHistoryLoadingCopyWithImpl<$Res>
    extends _$OrderHistoryStateCopyWithImpl<$Res, _$OrderHistoryLoading>
    implements _$$OrderHistoryLoadingCopyWith<$Res> {
  __$$OrderHistoryLoadingCopyWithImpl(
      _$OrderHistoryLoading _value, $Res Function(_$OrderHistoryLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderHistoryLoading implements OrderHistoryLoading {
  const _$OrderHistoryLoading();

  @override
  String toString() {
    return 'OrderHistoryState.orderHistoryLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderHistoryLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderHistoryLoading,
    required TResult Function(String error) orderHistoryError,
    required TResult Function(
            OrderHistory orderHistory, OrderHistoryItem? orderDetail)
        orderHistoryLoaded,
  }) {
    return orderHistoryLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderHistoryLoading,
    TResult? Function(String error)? orderHistoryError,
    TResult? Function(OrderHistory orderHistory, OrderHistoryItem? orderDetail)?
        orderHistoryLoaded,
  }) {
    return orderHistoryLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderHistoryLoading,
    TResult Function(String error)? orderHistoryError,
    TResult Function(OrderHistory orderHistory, OrderHistoryItem? orderDetail)?
        orderHistoryLoaded,
    required TResult orElse(),
  }) {
    if (orderHistoryLoading != null) {
      return orderHistoryLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OrderHistoryLoading value) orderHistoryLoading,
    required TResult Function(OrderHistoryError value) orderHistoryError,
    required TResult Function(OrderHistoryLoaded value) orderHistoryLoaded,
  }) {
    return orderHistoryLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OrderHistoryLoading value)? orderHistoryLoading,
    TResult? Function(OrderHistoryError value)? orderHistoryError,
    TResult? Function(OrderHistoryLoaded value)? orderHistoryLoaded,
  }) {
    return orderHistoryLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OrderHistoryLoading value)? orderHistoryLoading,
    TResult Function(OrderHistoryError value)? orderHistoryError,
    TResult Function(OrderHistoryLoaded value)? orderHistoryLoaded,
    required TResult orElse(),
  }) {
    if (orderHistoryLoading != null) {
      return orderHistoryLoading(this);
    }
    return orElse();
  }
}

abstract class OrderHistoryLoading implements OrderHistoryState {
  const factory OrderHistoryLoading() = _$OrderHistoryLoading;
}

/// @nodoc
abstract class _$$OrderHistoryErrorCopyWith<$Res> {
  factory _$$OrderHistoryErrorCopyWith(
          _$OrderHistoryError value, $Res Function(_$OrderHistoryError) then) =
      __$$OrderHistoryErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$OrderHistoryErrorCopyWithImpl<$Res>
    extends _$OrderHistoryStateCopyWithImpl<$Res, _$OrderHistoryError>
    implements _$$OrderHistoryErrorCopyWith<$Res> {
  __$$OrderHistoryErrorCopyWithImpl(
      _$OrderHistoryError _value, $Res Function(_$OrderHistoryError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$OrderHistoryError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderHistoryError implements OrderHistoryError {
  const _$OrderHistoryError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'OrderHistoryState.orderHistoryError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderHistoryError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderHistoryErrorCopyWith<_$OrderHistoryError> get copyWith =>
      __$$OrderHistoryErrorCopyWithImpl<_$OrderHistoryError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderHistoryLoading,
    required TResult Function(String error) orderHistoryError,
    required TResult Function(
            OrderHistory orderHistory, OrderHistoryItem? orderDetail)
        orderHistoryLoaded,
  }) {
    return orderHistoryError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderHistoryLoading,
    TResult? Function(String error)? orderHistoryError,
    TResult? Function(OrderHistory orderHistory, OrderHistoryItem? orderDetail)?
        orderHistoryLoaded,
  }) {
    return orderHistoryError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderHistoryLoading,
    TResult Function(String error)? orderHistoryError,
    TResult Function(OrderHistory orderHistory, OrderHistoryItem? orderDetail)?
        orderHistoryLoaded,
    required TResult orElse(),
  }) {
    if (orderHistoryError != null) {
      return orderHistoryError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OrderHistoryLoading value) orderHistoryLoading,
    required TResult Function(OrderHistoryError value) orderHistoryError,
    required TResult Function(OrderHistoryLoaded value) orderHistoryLoaded,
  }) {
    return orderHistoryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OrderHistoryLoading value)? orderHistoryLoading,
    TResult? Function(OrderHistoryError value)? orderHistoryError,
    TResult? Function(OrderHistoryLoaded value)? orderHistoryLoaded,
  }) {
    return orderHistoryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OrderHistoryLoading value)? orderHistoryLoading,
    TResult Function(OrderHistoryError value)? orderHistoryError,
    TResult Function(OrderHistoryLoaded value)? orderHistoryLoaded,
    required TResult orElse(),
  }) {
    if (orderHistoryError != null) {
      return orderHistoryError(this);
    }
    return orElse();
  }
}

abstract class OrderHistoryError implements OrderHistoryState {
  const factory OrderHistoryError(final String error) = _$OrderHistoryError;

  String get error;
  @JsonKey(ignore: true)
  _$$OrderHistoryErrorCopyWith<_$OrderHistoryError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderHistoryLoadedCopyWith<$Res> {
  factory _$$OrderHistoryLoadedCopyWith(_$OrderHistoryLoaded value,
          $Res Function(_$OrderHistoryLoaded) then) =
      __$$OrderHistoryLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderHistory orderHistory, OrderHistoryItem? orderDetail});
}

/// @nodoc
class __$$OrderHistoryLoadedCopyWithImpl<$Res>
    extends _$OrderHistoryStateCopyWithImpl<$Res, _$OrderHistoryLoaded>
    implements _$$OrderHistoryLoadedCopyWith<$Res> {
  __$$OrderHistoryLoadedCopyWithImpl(
      _$OrderHistoryLoaded _value, $Res Function(_$OrderHistoryLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderHistory = null,
    Object? orderDetail = freezed,
  }) {
    return _then(_$OrderHistoryLoaded(
      orderHistory: null == orderHistory
          ? _value.orderHistory
          : orderHistory // ignore: cast_nullable_to_non_nullable
              as OrderHistory,
      orderDetail: freezed == orderDetail
          ? _value.orderDetail
          : orderDetail // ignore: cast_nullable_to_non_nullable
              as OrderHistoryItem?,
    ));
  }
}

/// @nodoc

class _$OrderHistoryLoaded implements OrderHistoryLoaded {
  const _$OrderHistoryLoaded({required this.orderHistory, this.orderDetail});

  @override
  final OrderHistory orderHistory;
  @override
  final OrderHistoryItem? orderDetail;

  @override
  String toString() {
    return 'OrderHistoryState.orderHistoryLoaded(orderHistory: $orderHistory, orderDetail: $orderDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderHistoryLoaded &&
            (identical(other.orderHistory, orderHistory) ||
                other.orderHistory == orderHistory) &&
            (identical(other.orderDetail, orderDetail) ||
                other.orderDetail == orderDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderHistory, orderDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderHistoryLoadedCopyWith<_$OrderHistoryLoaded> get copyWith =>
      __$$OrderHistoryLoadedCopyWithImpl<_$OrderHistoryLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() orderHistoryLoading,
    required TResult Function(String error) orderHistoryError,
    required TResult Function(
            OrderHistory orderHistory, OrderHistoryItem? orderDetail)
        orderHistoryLoaded,
  }) {
    return orderHistoryLoaded(orderHistory, orderDetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? orderHistoryLoading,
    TResult? Function(String error)? orderHistoryError,
    TResult? Function(OrderHistory orderHistory, OrderHistoryItem? orderDetail)?
        orderHistoryLoaded,
  }) {
    return orderHistoryLoaded?.call(orderHistory, orderDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? orderHistoryLoading,
    TResult Function(String error)? orderHistoryError,
    TResult Function(OrderHistory orderHistory, OrderHistoryItem? orderDetail)?
        orderHistoryLoaded,
    required TResult orElse(),
  }) {
    if (orderHistoryLoaded != null) {
      return orderHistoryLoaded(orderHistory, orderDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(OrderHistoryLoading value) orderHistoryLoading,
    required TResult Function(OrderHistoryError value) orderHistoryError,
    required TResult Function(OrderHistoryLoaded value) orderHistoryLoaded,
  }) {
    return orderHistoryLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(OrderHistoryLoading value)? orderHistoryLoading,
    TResult? Function(OrderHistoryError value)? orderHistoryError,
    TResult? Function(OrderHistoryLoaded value)? orderHistoryLoaded,
  }) {
    return orderHistoryLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(OrderHistoryLoading value)? orderHistoryLoading,
    TResult Function(OrderHistoryError value)? orderHistoryError,
    TResult Function(OrderHistoryLoaded value)? orderHistoryLoaded,
    required TResult orElse(),
  }) {
    if (orderHistoryLoaded != null) {
      return orderHistoryLoaded(this);
    }
    return orElse();
  }
}

abstract class OrderHistoryLoaded implements OrderHistoryState {
  const factory OrderHistoryLoaded(
      {required final OrderHistory orderHistory,
      final OrderHistoryItem? orderDetail}) = _$OrderHistoryLoaded;

  OrderHistory get orderHistory;
  OrderHistoryItem? get orderDetail;
  @JsonKey(ignore: true)
  _$$OrderHistoryLoadedCopyWith<_$OrderHistoryLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
