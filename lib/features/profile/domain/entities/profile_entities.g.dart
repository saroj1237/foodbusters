// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      address: json['address'] as String?,
      createdDate: json['createdDate'] as String?,
      email: json['email'] as String?,
      fullName: json['fullName'] as String?,
      image: json['image'] as String?,
      id: json['id'] as String?,
      phone: json['phone'] as String?,
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'createdDate': instance.createdDate,
      'email': instance.email,
      'fullName': instance.fullName,
      'image': instance.image,
      'id': instance.id,
      'phone': instance.phone,
      'verified': instance.verified,
    };
