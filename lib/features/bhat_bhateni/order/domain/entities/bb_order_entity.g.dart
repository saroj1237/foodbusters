// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BBPlaceOrderSuccessRes _$$_BBPlaceOrderSuccessResFromJson(
        Map<String, dynamic> json) =>
    _$_BBPlaceOrderSuccessRes(
      orderId: json['id'] as String,
      oid: json['oid'] as String,
      bbsmPrice: json['bbsmPrice'] as num,
      totalPrice: json['totalPrice'] as num,
      couponPrice: json['couponPrice'] as num?,
      deliveryCharge: json['delivery_charge'] as num,
    );

Map<String, dynamic> _$$_BBPlaceOrderSuccessResToJson(
        _$_BBPlaceOrderSuccessRes instance) =>
    <String, dynamic>{
      'id': instance.orderId,
      'oid': instance.oid,
      'bbsmPrice': instance.bbsmPrice,
      'totalPrice': instance.totalPrice,
      'couponPrice': instance.couponPrice,
      'delivery_charge': instance.deliveryCharge,
    };

_$_BBOrderHistory _$$_BBOrderHistoryFromJson(Map<String, dynamic> json) =>
    _$_BBOrderHistory(
      orderId: json['id'] as String,
      oid: json['oid'] as String,
      bbsmPrice: json['bbsmPrice'] as num,
      totalPrice: json['totalPrice'] as num,
      paidStatus: json['paidStatus'] as bool,
      orderStatus: json['orderStatus'] as String?,
      paymentOption: json['paymentOption'] as String?,
      couponPrice: json['couponPrice'] as num?,
      createdDate: json['createdDate'] as String,
      deliveryCharge: json['delivery_charge'] as num,
    );

Map<String, dynamic> _$$_BBOrderHistoryToJson(_$_BBOrderHistory instance) =>
    <String, dynamic>{
      'id': instance.orderId,
      'oid': instance.oid,
      'bbsmPrice': instance.bbsmPrice,
      'totalPrice': instance.totalPrice,
      'paidStatus': instance.paidStatus,
      'orderStatus': instance.orderStatus,
      'paymentOption': instance.paymentOption,
      'couponPrice': instance.couponPrice,
      'createdDate': instance.createdDate,
      'delivery_charge': instance.deliveryCharge,
    };

_$_BBOrderHistoryDetail _$$_BBOrderHistoryDetailFromJson(
        Map<String, dynamic> json) =>
    _$_BBOrderHistoryDetail(
      orderId: json['id'] as String,
      oid: json['oid'] as String,
      bbsmPrice: json['bbsmPrice'] as num,
      totalPrice: json['totalPrice'] as num,
      paidStatus: json['paidStatus'] as bool,
      cartResponse:
          CartResponse.fromJson(json['bbsmCart'] as Map<String, dynamic>),
      orderStatus: json['orderStatus'] as String?,
      paymentOption: json['paymentOption'] as String?,
      couponPrice: json['couponPrice'] as num?,
      createdDate: json['createdDate'] as String,
      deliveryCharge: json['delivery_charge'] as num,
    );

Map<String, dynamic> _$$_BBOrderHistoryDetailToJson(
        _$_BBOrderHistoryDetail instance) =>
    <String, dynamic>{
      'id': instance.orderId,
      'oid': instance.oid,
      'bbsmPrice': instance.bbsmPrice,
      'totalPrice': instance.totalPrice,
      'paidStatus': instance.paidStatus,
      'bbsmCart': instance.cartResponse,
      'orderStatus': instance.orderStatus,
      'paymentOption': instance.paymentOption,
      'couponPrice': instance.couponPrice,
      'createdDate': instance.createdDate,
      'delivery_charge': instance.deliveryCharge,
    };
