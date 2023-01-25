// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bb_order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BBPlaceOrderSuccessRes _$BBPlaceOrderSuccessResFromJson(
    Map<String, dynamic> json) {
  return _BBPlaceOrderSuccessRes.fromJson(json);
}

/// @nodoc
mixin _$BBPlaceOrderSuccessRes {
  @JsonKey(name: "id")
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "oid")
  String get oid => throw _privateConstructorUsedError;
  num get bbsmPrice => throw _privateConstructorUsedError;
  num get totalPrice => throw _privateConstructorUsedError;
  num? get couponPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_charge")
  num get deliveryCharge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BBPlaceOrderSuccessResCopyWith<BBPlaceOrderSuccessRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BBPlaceOrderSuccessResCopyWith<$Res> {
  factory $BBPlaceOrderSuccessResCopyWith(BBPlaceOrderSuccessRes value,
          $Res Function(BBPlaceOrderSuccessRes) then) =
      _$BBPlaceOrderSuccessResCopyWithImpl<$Res, BBPlaceOrderSuccessRes>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String orderId,
      @JsonKey(name: "oid") String oid,
      num bbsmPrice,
      num totalPrice,
      num? couponPrice,
      @JsonKey(name: "delivery_charge") num deliveryCharge});
}

/// @nodoc
class _$BBPlaceOrderSuccessResCopyWithImpl<$Res,
        $Val extends BBPlaceOrderSuccessRes>
    implements $BBPlaceOrderSuccessResCopyWith<$Res> {
  _$BBPlaceOrderSuccessResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? oid = null,
    Object? bbsmPrice = null,
    Object? totalPrice = null,
    Object? couponPrice = freezed,
    Object? deliveryCharge = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      oid: null == oid
          ? _value.oid
          : oid // ignore: cast_nullable_to_non_nullable
              as String,
      bbsmPrice: null == bbsmPrice
          ? _value.bbsmPrice
          : bbsmPrice // ignore: cast_nullable_to_non_nullable
              as num,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      couponPrice: freezed == couponPrice
          ? _value.couponPrice
          : couponPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BBPlaceOrderSuccessResCopyWith<$Res>
    implements $BBPlaceOrderSuccessResCopyWith<$Res> {
  factory _$$_BBPlaceOrderSuccessResCopyWith(_$_BBPlaceOrderSuccessRes value,
          $Res Function(_$_BBPlaceOrderSuccessRes) then) =
      __$$_BBPlaceOrderSuccessResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String orderId,
      @JsonKey(name: "oid") String oid,
      num bbsmPrice,
      num totalPrice,
      num? couponPrice,
      @JsonKey(name: "delivery_charge") num deliveryCharge});
}

/// @nodoc
class __$$_BBPlaceOrderSuccessResCopyWithImpl<$Res>
    extends _$BBPlaceOrderSuccessResCopyWithImpl<$Res,
        _$_BBPlaceOrderSuccessRes>
    implements _$$_BBPlaceOrderSuccessResCopyWith<$Res> {
  __$$_BBPlaceOrderSuccessResCopyWithImpl(_$_BBPlaceOrderSuccessRes _value,
      $Res Function(_$_BBPlaceOrderSuccessRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? oid = null,
    Object? bbsmPrice = null,
    Object? totalPrice = null,
    Object? couponPrice = freezed,
    Object? deliveryCharge = null,
  }) {
    return _then(_$_BBPlaceOrderSuccessRes(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      oid: null == oid
          ? _value.oid
          : oid // ignore: cast_nullable_to_non_nullable
              as String,
      bbsmPrice: null == bbsmPrice
          ? _value.bbsmPrice
          : bbsmPrice // ignore: cast_nullable_to_non_nullable
              as num,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      couponPrice: freezed == couponPrice
          ? _value.couponPrice
          : couponPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BBPlaceOrderSuccessRes implements _BBPlaceOrderSuccessRes {
  const _$_BBPlaceOrderSuccessRes(
      {@JsonKey(name: "id") required this.orderId,
      @JsonKey(name: "oid") required this.oid,
      required this.bbsmPrice,
      required this.totalPrice,
      this.couponPrice,
      @JsonKey(name: "delivery_charge") required this.deliveryCharge});

  factory _$_BBPlaceOrderSuccessRes.fromJson(Map<String, dynamic> json) =>
      _$$_BBPlaceOrderSuccessResFromJson(json);

  @override
  @JsonKey(name: "id")
  final String orderId;
  @override
  @JsonKey(name: "oid")
  final String oid;
  @override
  final num bbsmPrice;
  @override
  final num totalPrice;
  @override
  final num? couponPrice;
  @override
  @JsonKey(name: "delivery_charge")
  final num deliveryCharge;

  @override
  String toString() {
    return 'BBPlaceOrderSuccessRes(orderId: $orderId, oid: $oid, bbsmPrice: $bbsmPrice, totalPrice: $totalPrice, couponPrice: $couponPrice, deliveryCharge: $deliveryCharge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BBPlaceOrderSuccessRes &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.oid, oid) || other.oid == oid) &&
            (identical(other.bbsmPrice, bbsmPrice) ||
                other.bbsmPrice == bbsmPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.couponPrice, couponPrice) ||
                other.couponPrice == couponPrice) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, oid, bbsmPrice,
      totalPrice, couponPrice, deliveryCharge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BBPlaceOrderSuccessResCopyWith<_$_BBPlaceOrderSuccessRes> get copyWith =>
      __$$_BBPlaceOrderSuccessResCopyWithImpl<_$_BBPlaceOrderSuccessRes>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BBPlaceOrderSuccessResToJson(
      this,
    );
  }
}

abstract class _BBPlaceOrderSuccessRes implements BBPlaceOrderSuccessRes {
  const factory _BBPlaceOrderSuccessRes(
      {@JsonKey(name: "id")
          required final String orderId,
      @JsonKey(name: "oid")
          required final String oid,
      required final num bbsmPrice,
      required final num totalPrice,
      final num? couponPrice,
      @JsonKey(name: "delivery_charge")
          required final num deliveryCharge}) = _$_BBPlaceOrderSuccessRes;

  factory _BBPlaceOrderSuccessRes.fromJson(Map<String, dynamic> json) =
      _$_BBPlaceOrderSuccessRes.fromJson;

  @override
  @JsonKey(name: "id")
  String get orderId;
  @override
  @JsonKey(name: "oid")
  String get oid;
  @override
  num get bbsmPrice;
  @override
  num get totalPrice;
  @override
  num? get couponPrice;
  @override
  @JsonKey(name: "delivery_charge")
  num get deliveryCharge;
  @override
  @JsonKey(ignore: true)
  _$$_BBPlaceOrderSuccessResCopyWith<_$_BBPlaceOrderSuccessRes> get copyWith =>
      throw _privateConstructorUsedError;
}

BBOrderHistory _$BBOrderHistoryFromJson(Map<String, dynamic> json) {
  return _BBOrderHistory.fromJson(json);
}

/// @nodoc
mixin _$BBOrderHistory {
  @JsonKey(name: "id")
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "oid")
  String get oid => throw _privateConstructorUsedError;
  num get bbsmPrice => throw _privateConstructorUsedError;
  num get totalPrice => throw _privateConstructorUsedError;
  bool get paidStatus => throw _privateConstructorUsedError;
  String? get orderStatus => throw _privateConstructorUsedError;
  String? get paymentOption => throw _privateConstructorUsedError;
  num? get couponPrice => throw _privateConstructorUsedError;
  String get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_charge")
  num get deliveryCharge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BBOrderHistoryCopyWith<BBOrderHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BBOrderHistoryCopyWith<$Res> {
  factory $BBOrderHistoryCopyWith(
          BBOrderHistory value, $Res Function(BBOrderHistory) then) =
      _$BBOrderHistoryCopyWithImpl<$Res, BBOrderHistory>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String orderId,
      @JsonKey(name: "oid") String oid,
      num bbsmPrice,
      num totalPrice,
      bool paidStatus,
      String? orderStatus,
      String? paymentOption,
      num? couponPrice,
      String createdDate,
      @JsonKey(name: "delivery_charge") num deliveryCharge});
}

/// @nodoc
class _$BBOrderHistoryCopyWithImpl<$Res, $Val extends BBOrderHistory>
    implements $BBOrderHistoryCopyWith<$Res> {
  _$BBOrderHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? oid = null,
    Object? bbsmPrice = null,
    Object? totalPrice = null,
    Object? paidStatus = null,
    Object? orderStatus = freezed,
    Object? paymentOption = freezed,
    Object? couponPrice = freezed,
    Object? createdDate = null,
    Object? deliveryCharge = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      oid: null == oid
          ? _value.oid
          : oid // ignore: cast_nullable_to_non_nullable
              as String,
      bbsmPrice: null == bbsmPrice
          ? _value.bbsmPrice
          : bbsmPrice // ignore: cast_nullable_to_non_nullable
              as num,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      paidStatus: null == paidStatus
          ? _value.paidStatus
          : paidStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentOption: freezed == paymentOption
          ? _value.paymentOption
          : paymentOption // ignore: cast_nullable_to_non_nullable
              as String?,
      couponPrice: freezed == couponPrice
          ? _value.couponPrice
          : couponPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BBOrderHistoryCopyWith<$Res>
    implements $BBOrderHistoryCopyWith<$Res> {
  factory _$$_BBOrderHistoryCopyWith(
          _$_BBOrderHistory value, $Res Function(_$_BBOrderHistory) then) =
      __$$_BBOrderHistoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String orderId,
      @JsonKey(name: "oid") String oid,
      num bbsmPrice,
      num totalPrice,
      bool paidStatus,
      String? orderStatus,
      String? paymentOption,
      num? couponPrice,
      String createdDate,
      @JsonKey(name: "delivery_charge") num deliveryCharge});
}

/// @nodoc
class __$$_BBOrderHistoryCopyWithImpl<$Res>
    extends _$BBOrderHistoryCopyWithImpl<$Res, _$_BBOrderHistory>
    implements _$$_BBOrderHistoryCopyWith<$Res> {
  __$$_BBOrderHistoryCopyWithImpl(
      _$_BBOrderHistory _value, $Res Function(_$_BBOrderHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? oid = null,
    Object? bbsmPrice = null,
    Object? totalPrice = null,
    Object? paidStatus = null,
    Object? orderStatus = freezed,
    Object? paymentOption = freezed,
    Object? couponPrice = freezed,
    Object? createdDate = null,
    Object? deliveryCharge = null,
  }) {
    return _then(_$_BBOrderHistory(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      oid: null == oid
          ? _value.oid
          : oid // ignore: cast_nullable_to_non_nullable
              as String,
      bbsmPrice: null == bbsmPrice
          ? _value.bbsmPrice
          : bbsmPrice // ignore: cast_nullable_to_non_nullable
              as num,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      paidStatus: null == paidStatus
          ? _value.paidStatus
          : paidStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentOption: freezed == paymentOption
          ? _value.paymentOption
          : paymentOption // ignore: cast_nullable_to_non_nullable
              as String?,
      couponPrice: freezed == couponPrice
          ? _value.couponPrice
          : couponPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BBOrderHistory implements _BBOrderHistory {
  const _$_BBOrderHistory(
      {@JsonKey(name: "id") required this.orderId,
      @JsonKey(name: "oid") required this.oid,
      required this.bbsmPrice,
      required this.totalPrice,
      required this.paidStatus,
      this.orderStatus,
      this.paymentOption,
      this.couponPrice,
      required this.createdDate,
      @JsonKey(name: "delivery_charge") required this.deliveryCharge});

  factory _$_BBOrderHistory.fromJson(Map<String, dynamic> json) =>
      _$$_BBOrderHistoryFromJson(json);

  @override
  @JsonKey(name: "id")
  final String orderId;
  @override
  @JsonKey(name: "oid")
  final String oid;
  @override
  final num bbsmPrice;
  @override
  final num totalPrice;
  @override
  final bool paidStatus;
  @override
  final String? orderStatus;
  @override
  final String? paymentOption;
  @override
  final num? couponPrice;
  @override
  final String createdDate;
  @override
  @JsonKey(name: "delivery_charge")
  final num deliveryCharge;

  @override
  String toString() {
    return 'BBOrderHistory(orderId: $orderId, oid: $oid, bbsmPrice: $bbsmPrice, totalPrice: $totalPrice, paidStatus: $paidStatus, orderStatus: $orderStatus, paymentOption: $paymentOption, couponPrice: $couponPrice, createdDate: $createdDate, deliveryCharge: $deliveryCharge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BBOrderHistory &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.oid, oid) || other.oid == oid) &&
            (identical(other.bbsmPrice, bbsmPrice) ||
                other.bbsmPrice == bbsmPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.paidStatus, paidStatus) ||
                other.paidStatus == paidStatus) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.paymentOption, paymentOption) ||
                other.paymentOption == paymentOption) &&
            (identical(other.couponPrice, couponPrice) ||
                other.couponPrice == couponPrice) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      oid,
      bbsmPrice,
      totalPrice,
      paidStatus,
      orderStatus,
      paymentOption,
      couponPrice,
      createdDate,
      deliveryCharge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BBOrderHistoryCopyWith<_$_BBOrderHistory> get copyWith =>
      __$$_BBOrderHistoryCopyWithImpl<_$_BBOrderHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BBOrderHistoryToJson(
      this,
    );
  }
}

abstract class _BBOrderHistory implements BBOrderHistory {
  const factory _BBOrderHistory(
      {@JsonKey(name: "id")
          required final String orderId,
      @JsonKey(name: "oid")
          required final String oid,
      required final num bbsmPrice,
      required final num totalPrice,
      required final bool paidStatus,
      final String? orderStatus,
      final String? paymentOption,
      final num? couponPrice,
      required final String createdDate,
      @JsonKey(name: "delivery_charge")
          required final num deliveryCharge}) = _$_BBOrderHistory;

  factory _BBOrderHistory.fromJson(Map<String, dynamic> json) =
      _$_BBOrderHistory.fromJson;

  @override
  @JsonKey(name: "id")
  String get orderId;
  @override
  @JsonKey(name: "oid")
  String get oid;
  @override
  num get bbsmPrice;
  @override
  num get totalPrice;
  @override
  bool get paidStatus;
  @override
  String? get orderStatus;
  @override
  String? get paymentOption;
  @override
  num? get couponPrice;
  @override
  String get createdDate;
  @override
  @JsonKey(name: "delivery_charge")
  num get deliveryCharge;
  @override
  @JsonKey(ignore: true)
  _$$_BBOrderHistoryCopyWith<_$_BBOrderHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

BBOrderHistoryDetail _$BBOrderHistoryDetailFromJson(Map<String, dynamic> json) {
  return _BBOrderHistoryDetail.fromJson(json);
}

/// @nodoc
mixin _$BBOrderHistoryDetail {
  @JsonKey(name: "id")
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "oid")
  String get oid => throw _privateConstructorUsedError;
  num get bbsmPrice => throw _privateConstructorUsedError;
  num get totalPrice => throw _privateConstructorUsedError;
  bool get paidStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "bbsmCart")
  CartResponse get cartResponse => throw _privateConstructorUsedError;
  String? get orderStatus => throw _privateConstructorUsedError;
  String? get paymentOption => throw _privateConstructorUsedError;
  num? get couponPrice => throw _privateConstructorUsedError;
  String get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_charge")
  num get deliveryCharge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BBOrderHistoryDetailCopyWith<BBOrderHistoryDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BBOrderHistoryDetailCopyWith<$Res> {
  factory $BBOrderHistoryDetailCopyWith(BBOrderHistoryDetail value,
          $Res Function(BBOrderHistoryDetail) then) =
      _$BBOrderHistoryDetailCopyWithImpl<$Res, BBOrderHistoryDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String orderId,
      @JsonKey(name: "oid") String oid,
      num bbsmPrice,
      num totalPrice,
      bool paidStatus,
      @JsonKey(name: "bbsmCart") CartResponse cartResponse,
      String? orderStatus,
      String? paymentOption,
      num? couponPrice,
      String createdDate,
      @JsonKey(name: "delivery_charge") num deliveryCharge});

  $CartResponseCopyWith<$Res> get cartResponse;
}

/// @nodoc
class _$BBOrderHistoryDetailCopyWithImpl<$Res,
        $Val extends BBOrderHistoryDetail>
    implements $BBOrderHistoryDetailCopyWith<$Res> {
  _$BBOrderHistoryDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? oid = null,
    Object? bbsmPrice = null,
    Object? totalPrice = null,
    Object? paidStatus = null,
    Object? cartResponse = null,
    Object? orderStatus = freezed,
    Object? paymentOption = freezed,
    Object? couponPrice = freezed,
    Object? createdDate = null,
    Object? deliveryCharge = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      oid: null == oid
          ? _value.oid
          : oid // ignore: cast_nullable_to_non_nullable
              as String,
      bbsmPrice: null == bbsmPrice
          ? _value.bbsmPrice
          : bbsmPrice // ignore: cast_nullable_to_non_nullable
              as num,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      paidStatus: null == paidStatus
          ? _value.paidStatus
          : paidStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      cartResponse: null == cartResponse
          ? _value.cartResponse
          : cartResponse // ignore: cast_nullable_to_non_nullable
              as CartResponse,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentOption: freezed == paymentOption
          ? _value.paymentOption
          : paymentOption // ignore: cast_nullable_to_non_nullable
              as String?,
      couponPrice: freezed == couponPrice
          ? _value.couponPrice
          : couponPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartResponseCopyWith<$Res> get cartResponse {
    return $CartResponseCopyWith<$Res>(_value.cartResponse, (value) {
      return _then(_value.copyWith(cartResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BBOrderHistoryDetailCopyWith<$Res>
    implements $BBOrderHistoryDetailCopyWith<$Res> {
  factory _$$_BBOrderHistoryDetailCopyWith(_$_BBOrderHistoryDetail value,
          $Res Function(_$_BBOrderHistoryDetail) then) =
      __$$_BBOrderHistoryDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String orderId,
      @JsonKey(name: "oid") String oid,
      num bbsmPrice,
      num totalPrice,
      bool paidStatus,
      @JsonKey(name: "bbsmCart") CartResponse cartResponse,
      String? orderStatus,
      String? paymentOption,
      num? couponPrice,
      String createdDate,
      @JsonKey(name: "delivery_charge") num deliveryCharge});

  @override
  $CartResponseCopyWith<$Res> get cartResponse;
}

/// @nodoc
class __$$_BBOrderHistoryDetailCopyWithImpl<$Res>
    extends _$BBOrderHistoryDetailCopyWithImpl<$Res, _$_BBOrderHistoryDetail>
    implements _$$_BBOrderHistoryDetailCopyWith<$Res> {
  __$$_BBOrderHistoryDetailCopyWithImpl(_$_BBOrderHistoryDetail _value,
      $Res Function(_$_BBOrderHistoryDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? oid = null,
    Object? bbsmPrice = null,
    Object? totalPrice = null,
    Object? paidStatus = null,
    Object? cartResponse = null,
    Object? orderStatus = freezed,
    Object? paymentOption = freezed,
    Object? couponPrice = freezed,
    Object? createdDate = null,
    Object? deliveryCharge = null,
  }) {
    return _then(_$_BBOrderHistoryDetail(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      oid: null == oid
          ? _value.oid
          : oid // ignore: cast_nullable_to_non_nullable
              as String,
      bbsmPrice: null == bbsmPrice
          ? _value.bbsmPrice
          : bbsmPrice // ignore: cast_nullable_to_non_nullable
              as num,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      paidStatus: null == paidStatus
          ? _value.paidStatus
          : paidStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      cartResponse: null == cartResponse
          ? _value.cartResponse
          : cartResponse // ignore: cast_nullable_to_non_nullable
              as CartResponse,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentOption: freezed == paymentOption
          ? _value.paymentOption
          : paymentOption // ignore: cast_nullable_to_non_nullable
              as String?,
      couponPrice: freezed == couponPrice
          ? _value.couponPrice
          : couponPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BBOrderHistoryDetail implements _BBOrderHistoryDetail {
  const _$_BBOrderHistoryDetail(
      {@JsonKey(name: "id") required this.orderId,
      @JsonKey(name: "oid") required this.oid,
      required this.bbsmPrice,
      required this.totalPrice,
      required this.paidStatus,
      @JsonKey(name: "bbsmCart") required this.cartResponse,
      this.orderStatus,
      this.paymentOption,
      this.couponPrice,
      required this.createdDate,
      @JsonKey(name: "delivery_charge") required this.deliveryCharge});

  factory _$_BBOrderHistoryDetail.fromJson(Map<String, dynamic> json) =>
      _$$_BBOrderHistoryDetailFromJson(json);

  @override
  @JsonKey(name: "id")
  final String orderId;
  @override
  @JsonKey(name: "oid")
  final String oid;
  @override
  final num bbsmPrice;
  @override
  final num totalPrice;
  @override
  final bool paidStatus;
  @override
  @JsonKey(name: "bbsmCart")
  final CartResponse cartResponse;
  @override
  final String? orderStatus;
  @override
  final String? paymentOption;
  @override
  final num? couponPrice;
  @override
  final String createdDate;
  @override
  @JsonKey(name: "delivery_charge")
  final num deliveryCharge;

  @override
  String toString() {
    return 'BBOrderHistoryDetail(orderId: $orderId, oid: $oid, bbsmPrice: $bbsmPrice, totalPrice: $totalPrice, paidStatus: $paidStatus, cartResponse: $cartResponse, orderStatus: $orderStatus, paymentOption: $paymentOption, couponPrice: $couponPrice, createdDate: $createdDate, deliveryCharge: $deliveryCharge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BBOrderHistoryDetail &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.oid, oid) || other.oid == oid) &&
            (identical(other.bbsmPrice, bbsmPrice) ||
                other.bbsmPrice == bbsmPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.paidStatus, paidStatus) ||
                other.paidStatus == paidStatus) &&
            (identical(other.cartResponse, cartResponse) ||
                other.cartResponse == cartResponse) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.paymentOption, paymentOption) ||
                other.paymentOption == paymentOption) &&
            (identical(other.couponPrice, couponPrice) ||
                other.couponPrice == couponPrice) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      oid,
      bbsmPrice,
      totalPrice,
      paidStatus,
      cartResponse,
      orderStatus,
      paymentOption,
      couponPrice,
      createdDate,
      deliveryCharge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BBOrderHistoryDetailCopyWith<_$_BBOrderHistoryDetail> get copyWith =>
      __$$_BBOrderHistoryDetailCopyWithImpl<_$_BBOrderHistoryDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BBOrderHistoryDetailToJson(
      this,
    );
  }
}

abstract class _BBOrderHistoryDetail implements BBOrderHistoryDetail {
  const factory _BBOrderHistoryDetail(
      {@JsonKey(name: "id")
          required final String orderId,
      @JsonKey(name: "oid")
          required final String oid,
      required final num bbsmPrice,
      required final num totalPrice,
      required final bool paidStatus,
      @JsonKey(name: "bbsmCart")
          required final CartResponse cartResponse,
      final String? orderStatus,
      final String? paymentOption,
      final num? couponPrice,
      required final String createdDate,
      @JsonKey(name: "delivery_charge")
          required final num deliveryCharge}) = _$_BBOrderHistoryDetail;

  factory _BBOrderHistoryDetail.fromJson(Map<String, dynamic> json) =
      _$_BBOrderHistoryDetail.fromJson;

  @override
  @JsonKey(name: "id")
  String get orderId;
  @override
  @JsonKey(name: "oid")
  String get oid;
  @override
  num get bbsmPrice;
  @override
  num get totalPrice;
  @override
  bool get paidStatus;
  @override
  @JsonKey(name: "bbsmCart")
  CartResponse get cartResponse;
  @override
  String? get orderStatus;
  @override
  String? get paymentOption;
  @override
  num? get couponPrice;
  @override
  String get createdDate;
  @override
  @JsonKey(name: "delivery_charge")
  num get deliveryCharge;
  @override
  @JsonKey(ignore: true)
  _$$_BBOrderHistoryDetailCopyWith<_$_BBOrderHistoryDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
