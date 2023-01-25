// ignore_for_file: invalid_annotation_target

import 'package:foodbusters/features/bag/domain/entities/bag_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_entity.freezed.dart';
part 'order_entity.g.dart';

@freezed
class PlaceOrderReq with _$PlaceOrderReq {
  const factory PlaceOrderReq({
    String? restaurantId,
    required String addressId,
    @JsonKey(name: "special_instruction") String? specialInstruction,
    @JsonKey(name: "coupon_id") String? couponId,
  }) = _PlceOrderReq;
}

@freezed
class PlaceOrderSuccessRes with _$PlaceOrderSuccessRes {
  const factory PlaceOrderSuccessRes({
    @JsonKey(name: "id") required String orderId,
    @JsonKey(name: "oid") required String oid,
    required num restPrice,
    required num totalPrice,
    num? couponPrice,
    @JsonKey(name: "delivery_charge") required num deliveryCharge,
    bool? isFoodbusters,
  }) = _PlaceOrderSuccessRes;
  factory PlaceOrderSuccessRes.fromJson(Map<String, dynamic> json) =>
      _$PlaceOrderSuccessResFromJson(json);
}

class OrderHistory {
  final List<OrderHistoryItem> orderHistoryItems;
  final PendingOrdersInfo? pendingOrdersInfo;
  OrderHistory({required this.orderHistoryItems, this.pendingOrdersInfo});
}

@JsonSerializable()
class PendingOrdersInfo {
  final int count;
  final List<String> restImg;
  PendingOrdersInfo({required this.count, required this.restImg});
  factory PendingOrdersInfo.fromJson(Map<String, dynamic> json) =>
      _$PendingOrdersInfoFromJson(json);
}

@JsonSerializable()
class OrderHistoryItem {
  @JsonKey(name: 'id')
  final String orderId;
  final String oid;
  final String? orderStatus;
  final bool paidStatus;
  final num? totalPrice;
  final num? restPrice;
  final num? discountedPrice;
  @JsonKey(name: "delivery_charge")
  final num deliveryCharge;
  final String createdDate;
  final String? paymentOption;
  @JsonKey(name: "restCart")
  final BagItem bagItem;
  OrderHistoryItem(
      {required this.orderId,
      required this.oid,
      this.orderStatus,
      required this.paidStatus,
      required this.totalPrice,
      required this.restPrice,
      this.discountedPrice,
      this.paymentOption,
      required this.deliveryCharge,
      required this.bagItem,
      required this.createdDate});

  /// Connect the generated [_$OrderHistoryItemFromJson] function to the `fromJson`
  /// factory.
  factory OrderHistoryItem.fromJson(Map<String, dynamic> json) =>
      _$OrderHistoryItemFromJson(json);

  /// Connect the generated [_$OrderHistoryItemToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$OrderHistoryItemToJson(this);
}

@JsonSerializable()
class DeliveryFeeReq {
  @JsonKey(name: 'userAddId')
  String addressId;
  @JsonKey(name: "vendorAddId")
  String restaurantId;
  DeliveryFeeReq({required this.addressId, required this.restaurantId});

  Map<String, dynamic> toJson() => _$DeliveryFeeReqToJson(this);
}

@JsonSerializable()
class CouponCodeReq {
  @JsonKey(name: 'price')
  num price;
  @JsonKey(name: "coupon_code")
  String couponCode;
  @JsonKey(name: "type_of")
  String type;
  @JsonKey(name: "restaurant")
  String? restaurantId;
  CouponCodeReq(
      {required this.price,
      required this.couponCode,
      required this.type,
      this.restaurantId});

  Map<String, dynamic> toJson() => _$CouponCodeReqToJson(this);
}

@JsonSerializable()
class CouponCodeRes {
  String id;
  @JsonKey(name: "coupon_amount")
  num couponAmount;
  CouponCodeRes({required this.id, required this.couponAmount});

  factory CouponCodeRes.fromJson(Map<String, dynamic> json) =>
      _$CouponCodeResFromJson(json);
}
