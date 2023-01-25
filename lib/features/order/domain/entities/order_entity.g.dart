// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PendingOrdersInfo _$PendingOrdersInfoFromJson(Map<String, dynamic> json) =>
    PendingOrdersInfo(
      count: json['count'] as int,
      restImg:
          (json['restImg'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PendingOrdersInfoToJson(PendingOrdersInfo instance) =>
    <String, dynamic>{
      'count': instance.count,
      'restImg': instance.restImg,
    };

OrderHistoryItem _$OrderHistoryItemFromJson(Map<String, dynamic> json) =>
    OrderHistoryItem(
      orderId: json['id'] as String,
      oid: json['oid'] as String,
      orderStatus: json['orderStatus'] as String?,
      paidStatus: json['paidStatus'] as bool,
      totalPrice: json['totalPrice'] as num?,
      restPrice: json['restPrice'] as num?,
      discountedPrice: json['discountedPrice'] as num?,
      paymentOption: json['paymentOption'] as String?,
      deliveryCharge: json['delivery_charge'] as num,
      bagItem: BagItem.fromJson(json['restCart'] as Map<String, dynamic>),
      createdDate: json['createdDate'] as String,
    );

Map<String, dynamic> _$OrderHistoryItemToJson(OrderHistoryItem instance) =>
    <String, dynamic>{
      'id': instance.orderId,
      'oid': instance.oid,
      'orderStatus': instance.orderStatus,
      'paidStatus': instance.paidStatus,
      'totalPrice': instance.totalPrice,
      'restPrice': instance.restPrice,
      'discountedPrice': instance.discountedPrice,
      'delivery_charge': instance.deliveryCharge,
      'createdDate': instance.createdDate,
      'paymentOption': instance.paymentOption,
      'restCart': instance.bagItem,
    };

DeliveryFeeReq _$DeliveryFeeReqFromJson(Map<String, dynamic> json) =>
    DeliveryFeeReq(
      addressId: json['userAddId'] as String,
      restaurantId: json['vendorAddId'] as String,
    );

Map<String, dynamic> _$DeliveryFeeReqToJson(DeliveryFeeReq instance) =>
    <String, dynamic>{
      'userAddId': instance.addressId,
      'vendorAddId': instance.restaurantId,
    };

CouponCodeReq _$CouponCodeReqFromJson(Map<String, dynamic> json) =>
    CouponCodeReq(
      price: json['price'] as num,
      couponCode: json['coupon_code'] as String,
      type: json['type_of'] as String,
      restaurantId: json['restaurant'] as String?,
    );

Map<String, dynamic> _$CouponCodeReqToJson(CouponCodeReq instance) =>
    <String, dynamic>{
      'price': instance.price,
      'coupon_code': instance.couponCode,
      'type_of': instance.type,
      'restaurant': instance.restaurantId,
    };

CouponCodeRes _$CouponCodeResFromJson(Map<String, dynamic> json) =>
    CouponCodeRes(
      id: json['id'] as String,
      couponAmount: json['coupon_amount'] as num,
    );

Map<String, dynamic> _$CouponCodeResToJson(CouponCodeRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'coupon_amount': instance.couponAmount,
    };

_$_PlaceOrderSuccessRes _$$_PlaceOrderSuccessResFromJson(
        Map<String, dynamic> json) =>
    _$_PlaceOrderSuccessRes(
      orderId: json['id'] as String,
      oid: json['oid'] as String,
      restPrice: json['restPrice'] as num,
      totalPrice: json['totalPrice'] as num,
      couponPrice: json['couponPrice'] as num?,
      deliveryCharge: json['delivery_charge'] as num,
      isFoodbusters: json['isFoodbusters'] as bool?,
    );

Map<String, dynamic> _$$_PlaceOrderSuccessResToJson(
        _$_PlaceOrderSuccessRes instance) =>
    <String, dynamic>{
      'id': instance.orderId,
      'oid': instance.oid,
      'restPrice': instance.restPrice,
      'totalPrice': instance.totalPrice,
      'couponPrice': instance.couponPrice,
      'delivery_charge': instance.deliveryCharge,
      'isFoodbusters': instance.isFoodbusters,
    };
