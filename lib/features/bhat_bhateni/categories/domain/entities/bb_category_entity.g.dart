// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_category_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BBCategory _$$_BBCategoryFromJson(Map<String, dynamic> json) =>
    _$_BBCategory(
      id: json['id'] as String,
      name: json['name'] as String,
      images: (json['productCatImage'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      discount: json['discount'] as num?,
    );

Map<String, dynamic> _$$_BBCategoryToJson(_$_BBCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'productCatImage': instance.images,
      'description': instance.description,
      'discount': instance.discount,
    };

_$_BBSubCategory _$$_BBSubCategoryFromJson(Map<String, dynamic> json) =>
    _$_BBSubCategory(
      id: json['id'] as String,
      name: json['name'] as String,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_BBSubCategoryToJson(_$_BBSubCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
    };

_$_SliderCategory _$$_SliderCategoryFromJson(Map<String, dynamic> json) =>
    _$_SliderCategory(
      id: json['id'] as String?,
      productId: json['productId'] as String?,
      productcategoryId: json['productcategoryId'] as String?,
      image: json['bannerImage'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$_SliderCategoryToJson(_$_SliderCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'productcategoryId': instance.productcategoryId,
      'bannerImage': instance.image,
      'title': instance.title,
    };

_$_UrlMeta _$$_UrlMetaFromJson(Map<String, dynamic> json) => _$_UrlMeta(
      hasNext: json['has_next'] as bool?,
      hasPrev: json['has_prev'] as bool?,
      nextNum: json['next_num'] as int?,
      page: json['page'] as int?,
      pages: json['pages'] as int?,
      prevNum: json['prev_num'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_UrlMetaToJson(_$_UrlMeta instance) =>
    <String, dynamic>{
      'has_next': instance.hasNext,
      'has_prev': instance.hasPrev,
      'next_num': instance.nextNum,
      'page': instance.page,
      'pages': instance.pages,
      'prev_num': instance.prevNum,
      'total': instance.total,
    };
