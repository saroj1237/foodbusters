// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      hasNext: json['hasNext'] as bool?,
      hasPrevious: json['hasPrevious'] as bool?,
      page: json['page'] as int?,
      pages: json['pages'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'hasNext': instance.hasNext,
      'hasPrevious': instance.hasPrevious,
      'page': instance.page,
      'pages': instance.pages,
      'total': instance.total,
    };
