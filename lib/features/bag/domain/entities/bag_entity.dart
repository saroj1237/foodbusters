// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bag_entity.freezed.dart';
part 'bag_entity.g.dart';

@freezed
class AddTobagRequest with _$AddTobagRequest {
  const factory AddTobagRequest({
    required int quantity,
  }) = _AddTobagRequest;

  factory AddTobagRequest.fromJson(Map<String, dynamic> json) =>
      _$AddTobagRequestFromJson(json);
}

@freezed
class BagItem with _$BagItem {
  @JsonSerializable(explicitToJson: true)
  const factory BagItem({
    @JsonKey(name: "restaurant_id") required String restaurantId,
    @JsonKey(name: "restaurant_name") String? restaurantName,
    @JsonKey(name: "restaurant_address") String? restaurantAddress,
    @JsonKey(name: "restaurant_image") String? restaurantImages,
    @JsonKey(name: "total_price") required num totalPrice,
    List<BagFood>? foodList,
  }) = _BagItem;
  factory BagItem.fromJson(Map<String, dynamic> json) =>
      _$BagItemFromJson(json);
}

@freezed
class BagFood with _$BagFood {
  const factory BagFood({
    @JsonKey(name: 'food_id') required String foodId,
    @JsonKey(name: 'food_name') String? foodName,
    required num quantity,
    @JsonKey(name: 'food_image') List<String>? foodImages,
    @JsonKey(name: 'unit_price') num? unitPrice,
    @JsonKey(name: 'total_price') num? totalPrice,
  }) = _BagFood;
  factory BagFood.fromJson(Map<String, dynamic> json) =>
      _$BagFoodFromJson(json);
}
