// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaceOrderReq {
  String? get restaurantId => throw _privateConstructorUsedError;
  String get addressId => throw _privateConstructorUsedError;
  @JsonKey(name: "special_instruction")
  String? get specialInstruction => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_id")
  String? get couponId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceOrderReqCopyWith<PlaceOrderReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderReqCopyWith<$Res> {
  factory $PlaceOrderReqCopyWith(
          PlaceOrderReq value, $Res Function(PlaceOrderReq) then) =
      _$PlaceOrderReqCopyWithImpl<$Res, PlaceOrderReq>;
  @useResult
  $Res call(
      {String? restaurantId,
      String addressId,
      @JsonKey(name: "special_instruction") String? specialInstruction,
      @JsonKey(name: "coupon_id") String? couponId});
}

/// @nodoc
class _$PlaceOrderReqCopyWithImpl<$Res, $Val extends PlaceOrderReq>
    implements $PlaceOrderReqCopyWith<$Res> {
  _$PlaceOrderReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = freezed,
    Object? addressId = null,
    Object? specialInstruction = freezed,
    Object? couponId = freezed,
  }) {
    return _then(_value.copyWith(
      restaurantId: freezed == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String?,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
      specialInstruction: freezed == specialInstruction
          ? _value.specialInstruction
          : specialInstruction // ignore: cast_nullable_to_non_nullable
              as String?,
      couponId: freezed == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlceOrderReqCopyWith<$Res>
    implements $PlaceOrderReqCopyWith<$Res> {
  factory _$$_PlceOrderReqCopyWith(
          _$_PlceOrderReq value, $Res Function(_$_PlceOrderReq) then) =
      __$$_PlceOrderReqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? restaurantId,
      String addressId,
      @JsonKey(name: "special_instruction") String? specialInstruction,
      @JsonKey(name: "coupon_id") String? couponId});
}

/// @nodoc
class __$$_PlceOrderReqCopyWithImpl<$Res>
    extends _$PlaceOrderReqCopyWithImpl<$Res, _$_PlceOrderReq>
    implements _$$_PlceOrderReqCopyWith<$Res> {
  __$$_PlceOrderReqCopyWithImpl(
      _$_PlceOrderReq _value, $Res Function(_$_PlceOrderReq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = freezed,
    Object? addressId = null,
    Object? specialInstruction = freezed,
    Object? couponId = freezed,
  }) {
    return _then(_$_PlceOrderReq(
      restaurantId: freezed == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String?,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
      specialInstruction: freezed == specialInstruction
          ? _value.specialInstruction
          : specialInstruction // ignore: cast_nullable_to_non_nullable
              as String?,
      couponId: freezed == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PlceOrderReq implements _PlceOrderReq {
  const _$_PlceOrderReq(
      {this.restaurantId,
      required this.addressId,
      @JsonKey(name: "special_instruction") this.specialInstruction,
      @JsonKey(name: "coupon_id") this.couponId});

  @override
  final String? restaurantId;
  @override
  final String addressId;
  @override
  @JsonKey(name: "special_instruction")
  final String? specialInstruction;
  @override
  @JsonKey(name: "coupon_id")
  final String? couponId;

  @override
  String toString() {
    return 'PlaceOrderReq(restaurantId: $restaurantId, addressId: $addressId, specialInstruction: $specialInstruction, couponId: $couponId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlceOrderReq &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.specialInstruction, specialInstruction) ||
                other.specialInstruction == specialInstruction) &&
            (identical(other.couponId, couponId) ||
                other.couponId == couponId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, restaurantId, addressId, specialInstruction, couponId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlceOrderReqCopyWith<_$_PlceOrderReq> get copyWith =>
      __$$_PlceOrderReqCopyWithImpl<_$_PlceOrderReq>(this, _$identity);
}

abstract class _PlceOrderReq implements PlaceOrderReq {
  const factory _PlceOrderReq(
      {final String? restaurantId,
      required final String addressId,
      @JsonKey(name: "special_instruction") final String? specialInstruction,
      @JsonKey(name: "coupon_id") final String? couponId}) = _$_PlceOrderReq;

  @override
  String? get restaurantId;
  @override
  String get addressId;
  @override
  @JsonKey(name: "special_instruction")
  String? get specialInstruction;
  @override
  @JsonKey(name: "coupon_id")
  String? get couponId;
  @override
  @JsonKey(ignore: true)
  _$$_PlceOrderReqCopyWith<_$_PlceOrderReq> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaceOrderSuccessRes _$PlaceOrderSuccessResFromJson(Map<String, dynamic> json) {
  return _PlaceOrderSuccessRes.fromJson(json);
}

/// @nodoc
mixin _$PlaceOrderSuccessRes {
  @JsonKey(name: "id")
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "oid")
  String get oid => throw _privateConstructorUsedError;
  num get restPrice => throw _privateConstructorUsedError;
  num get totalPrice => throw _privateConstructorUsedError;
  num? get couponPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_charge")
  num get deliveryCharge => throw _privateConstructorUsedError;
  bool? get isFoodbusters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceOrderSuccessResCopyWith<PlaceOrderSuccessRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderSuccessResCopyWith<$Res> {
  factory $PlaceOrderSuccessResCopyWith(PlaceOrderSuccessRes value,
          $Res Function(PlaceOrderSuccessRes) then) =
      _$PlaceOrderSuccessResCopyWithImpl<$Res, PlaceOrderSuccessRes>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String orderId,
      @JsonKey(name: "oid") String oid,
      num restPrice,
      num totalPrice,
      num? couponPrice,
      @JsonKey(name: "delivery_charge") num deliveryCharge,
      bool? isFoodbusters});
}

/// @nodoc
class _$PlaceOrderSuccessResCopyWithImpl<$Res,
        $Val extends PlaceOrderSuccessRes>
    implements $PlaceOrderSuccessResCopyWith<$Res> {
  _$PlaceOrderSuccessResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? oid = null,
    Object? restPrice = null,
    Object? totalPrice = null,
    Object? couponPrice = freezed,
    Object? deliveryCharge = null,
    Object? isFoodbusters = freezed,
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
      restPrice: null == restPrice
          ? _value.restPrice
          : restPrice // ignore: cast_nullable_to_non_nullable
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
      isFoodbusters: freezed == isFoodbusters
          ? _value.isFoodbusters
          : isFoodbusters // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaceOrderSuccessResCopyWith<$Res>
    implements $PlaceOrderSuccessResCopyWith<$Res> {
  factory _$$_PlaceOrderSuccessResCopyWith(_$_PlaceOrderSuccessRes value,
          $Res Function(_$_PlaceOrderSuccessRes) then) =
      __$$_PlaceOrderSuccessResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String orderId,
      @JsonKey(name: "oid") String oid,
      num restPrice,
      num totalPrice,
      num? couponPrice,
      @JsonKey(name: "delivery_charge") num deliveryCharge,
      bool? isFoodbusters});
}

/// @nodoc
class __$$_PlaceOrderSuccessResCopyWithImpl<$Res>
    extends _$PlaceOrderSuccessResCopyWithImpl<$Res, _$_PlaceOrderSuccessRes>
    implements _$$_PlaceOrderSuccessResCopyWith<$Res> {
  __$$_PlaceOrderSuccessResCopyWithImpl(_$_PlaceOrderSuccessRes _value,
      $Res Function(_$_PlaceOrderSuccessRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? oid = null,
    Object? restPrice = null,
    Object? totalPrice = null,
    Object? couponPrice = freezed,
    Object? deliveryCharge = null,
    Object? isFoodbusters = freezed,
  }) {
    return _then(_$_PlaceOrderSuccessRes(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      oid: null == oid
          ? _value.oid
          : oid // ignore: cast_nullable_to_non_nullable
              as String,
      restPrice: null == restPrice
          ? _value.restPrice
          : restPrice // ignore: cast_nullable_to_non_nullable
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
      isFoodbusters: freezed == isFoodbusters
          ? _value.isFoodbusters
          : isFoodbusters // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceOrderSuccessRes implements _PlaceOrderSuccessRes {
  const _$_PlaceOrderSuccessRes(
      {@JsonKey(name: "id") required this.orderId,
      @JsonKey(name: "oid") required this.oid,
      required this.restPrice,
      required this.totalPrice,
      this.couponPrice,
      @JsonKey(name: "delivery_charge") required this.deliveryCharge,
      this.isFoodbusters});

  factory _$_PlaceOrderSuccessRes.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceOrderSuccessResFromJson(json);

  @override
  @JsonKey(name: "id")
  final String orderId;
  @override
  @JsonKey(name: "oid")
  final String oid;
  @override
  final num restPrice;
  @override
  final num totalPrice;
  @override
  final num? couponPrice;
  @override
  @JsonKey(name: "delivery_charge")
  final num deliveryCharge;
  @override
  final bool? isFoodbusters;

  @override
  String toString() {
    return 'PlaceOrderSuccessRes(orderId: $orderId, oid: $oid, restPrice: $restPrice, totalPrice: $totalPrice, couponPrice: $couponPrice, deliveryCharge: $deliveryCharge, isFoodbusters: $isFoodbusters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceOrderSuccessRes &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.oid, oid) || other.oid == oid) &&
            (identical(other.restPrice, restPrice) ||
                other.restPrice == restPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.couponPrice, couponPrice) ||
                other.couponPrice == couponPrice) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            (identical(other.isFoodbusters, isFoodbusters) ||
                other.isFoodbusters == isFoodbusters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, oid, restPrice,
      totalPrice, couponPrice, deliveryCharge, isFoodbusters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceOrderSuccessResCopyWith<_$_PlaceOrderSuccessRes> get copyWith =>
      __$$_PlaceOrderSuccessResCopyWithImpl<_$_PlaceOrderSuccessRes>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceOrderSuccessResToJson(
      this,
    );
  }
}

abstract class _PlaceOrderSuccessRes implements PlaceOrderSuccessRes {
  const factory _PlaceOrderSuccessRes(
      {@JsonKey(name: "id") required final String orderId,
      @JsonKey(name: "oid") required final String oid,
      required final num restPrice,
      required final num totalPrice,
      final num? couponPrice,
      @JsonKey(name: "delivery_charge") required final num deliveryCharge,
      final bool? isFoodbusters}) = _$_PlaceOrderSuccessRes;

  factory _PlaceOrderSuccessRes.fromJson(Map<String, dynamic> json) =
      _$_PlaceOrderSuccessRes.fromJson;

  @override
  @JsonKey(name: "id")
  String get orderId;
  @override
  @JsonKey(name: "oid")
  String get oid;
  @override
  num get restPrice;
  @override
  num get totalPrice;
  @override
  num? get couponPrice;
  @override
  @JsonKey(name: "delivery_charge")
  num get deliveryCharge;
  @override
  bool? get isFoodbusters;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceOrderSuccessResCopyWith<_$_PlaceOrderSuccessRes> get copyWith =>
      throw _privateConstructorUsedError;
}
