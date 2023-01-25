// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'khalti_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KhaltiRequestModel _$KhaltiRequestModelFromJson(Map<String, dynamic> json) =>
    KhaltiRequestModel(
      referenceId: json['reference_id'] as String,
      orderId: json['order_id'] as String,
    );

Map<String, dynamic> _$KhaltiRequestModelToJson(KhaltiRequestModel instance) =>
    <String, dynamic>{
      'reference_id': instance.referenceId,
      'order_id': instance.orderId,
    };
