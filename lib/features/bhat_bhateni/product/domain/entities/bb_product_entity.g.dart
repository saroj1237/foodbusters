// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as String,
      name: json['name'] as String,
      detail: json['detail'] as String?,
      price: json['price'] as num,
      discount: json['discount'] as num?,
      discountPrice: json['discountPrice'] as num?,
      isVeg: json['isVeg'] as bool,
      images: (json['productImage'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'detail': instance.detail,
      'price': instance.price,
      'discount': instance.discount,
      'discountPrice': instance.discountPrice,
      'isVeg': instance.isVeg,
      'productImage': instance.images,
    };
