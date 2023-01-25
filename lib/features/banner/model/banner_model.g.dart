// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => BannerModel(
      id: json['id'] as String,
      title: json['title'] as String?,
      image: json['bannerImage'] as String,
      restId: json['restId'] as String?,
      categoryId: json['categoryId'] as String?,
    );

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'bannerImage': instance.image,
      'restId': instance.restId,
      'categoryId': instance.categoryId,
    };
