// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bag_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddTobagRequest _$$_AddTobagRequestFromJson(Map<String, dynamic> json) =>
    _$_AddTobagRequest(
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_AddTobagRequestToJson(_$_AddTobagRequest instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
    };

_$_BagItem _$$_BagItemFromJson(Map<String, dynamic> json) => _$_BagItem(
      restaurantId: json['restaurant_id'] as String,
      restaurantName: json['restaurant_name'] as String?,
      restaurantAddress: json['restaurant_address'] as String?,
      restaurantImages: json['restaurant_image'] as String?,
      totalPrice: json['total_price'] as num,
      foodList: (json['foodList'] as List<dynamic>?)
          ?.map((e) => BagFood.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BagItemToJson(_$_BagItem instance) =>
    <String, dynamic>{
      'restaurant_id': instance.restaurantId,
      'restaurant_name': instance.restaurantName,
      'restaurant_address': instance.restaurantAddress,
      'restaurant_image': instance.restaurantImages,
      'total_price': instance.totalPrice,
      'foodList': instance.foodList?.map((e) => e.toJson()).toList(),
    };

_$_BagFood _$$_BagFoodFromJson(Map<String, dynamic> json) => _$_BagFood(
      foodId: json['food_id'] as String,
      foodName: json['food_name'] as String?,
      quantity: json['quantity'] as num,
      foodImages: (json['food_image'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      unitPrice: json['unit_price'] as num?,
      totalPrice: json['total_price'] as num?,
    );

Map<String, dynamic> _$$_BagFoodToJson(_$_BagFood instance) =>
    <String, dynamic>{
      'food_id': instance.foodId,
      'food_name': instance.foodName,
      'quantity': instance.quantity,
      'food_image': instance.foodImages,
      'unit_price': instance.unitPrice,
      'total_price': instance.totalPrice,
    };
