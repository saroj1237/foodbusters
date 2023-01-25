// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeaturedItem _$$_FeaturedItemFromJson(Map<String, dynamic> json) =>
    _$_FeaturedItem(
      id: json['id'] as String,
      title: json['title'] as String,
      sortNumber: json['sortNumber'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_FeaturedItemToJson(_$_FeaturedItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sortNumber': instance.sortNumber,
      'items': instance.items,
    };
