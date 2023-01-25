// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartResponse _$$_CartResponseFromJson(Map<String, dynamic> json) =>
    _$_CartResponse(
      id: json['id'] as String,
      totalPrice: json['total_price'] as num?,
      items: (json['productList'] as List<dynamic>?)
              ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_CartResponseToJson(_$_CartResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total_price': instance.totalPrice,
      'productList': instance.items?.map((e) => e.toJson()).toList(),
    };

_$_CartItem _$$_CartItemFromJson(Map<String, dynamic> json) => _$_CartItem(
      id: json['id'] as String,
      name: json['name'] as String,
      quantity: json['quantity'] as int,
      productImage: (json['productImage'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      unitPrice: json['unit_price'] as num,
      totalPrice: json['total_price'] as num,
    );

Map<String, dynamic> _$$_CartItemToJson(_$_CartItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'quantity': instance.quantity,
      'productImage': instance.productImage,
      'unit_price': instance.unitPrice,
      'total_price': instance.totalPrice,
    };
