// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_entity.freezed.dart';
part 'address_entity.g.dart';

@freezed
class Address with _$Address {
  @JsonSerializable(explicitToJson: true)
  const factory Address({
    @Default('') String id,
    @Default(false) bool isSelected,
    required String name,
    required AddrLocation location,
  }) = _Address;
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
class AddrLocation with _$AddrLocation {
  const factory AddrLocation({
    @JsonKey(name: "lat") required num latitude,
    @JsonKey(name: "lng") required num longitude,
  }) = _AddrLocation;
  factory AddrLocation.fromJson(Map<String, dynamic> json) =>
      _$AddrLocationFromJson(json);
}
