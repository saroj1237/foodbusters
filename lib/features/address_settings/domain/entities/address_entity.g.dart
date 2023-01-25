// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      id: json['id'] as String? ?? '',
      isSelected: json['isSelected'] as bool? ?? false,
      name: json['name'] as String,
      location: AddrLocation.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isSelected': instance.isSelected,
      'name': instance.name,
      'location': instance.location.toJson(),
    };

_$_AddrLocation _$$_AddrLocationFromJson(Map<String, dynamic> json) =>
    _$_AddrLocation(
      latitude: json['lat'] as num,
      longitude: json['lng'] as num,
    );

Map<String, dynamic> _$$_AddrLocationToJson(_$_AddrLocation instance) =>
    <String, dynamic>{
      'lat': instance.latitude,
      'lng': instance.longitude,
    };
