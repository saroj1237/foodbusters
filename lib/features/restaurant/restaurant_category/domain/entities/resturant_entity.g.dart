// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resturant_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantCategory _$$_RestaurantCategoryFromJson(
        Map<String, dynamic> json) =>
    _$_RestaurantCategory(
      id: json['id'] as String?,
      createdDate: json['createdDate'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_RestaurantCategoryToJson(
        _$_RestaurantCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdDate': instance.createdDate,
      'image': instance.image,
      'name': instance.name,
    };
