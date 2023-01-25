// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BBFeaturedItem _$$_BBFeaturedItemFromJson(Map<String, dynamic> json) =>
    _$_BBFeaturedItem(
      id: json['id'] as String,
      title: json['title'] as String,
      categories: (json['productCategoryList'] as List<dynamic>)
          .map((e) => BBCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['productList'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['BBFeaturedItemImage'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_BBFeaturedItemToJson(_$_BBFeaturedItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'productCategoryList':
          instance.categories.map((e) => e.toJson()).toList(),
      'productList': instance.products.map((e) => e.toJson()).toList(),
      'BBFeaturedItemImage': instance.images,
    };
