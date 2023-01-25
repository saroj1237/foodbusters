import 'package:freezed_annotation/freezed_annotation.dart';

part 'resturant_entity.freezed.dart';
part 'resturant_entity.g.dart';

@freezed
class RestaurantCategory with _$RestaurantCategory {
  // const RestaurantCategory._();
  // @JsonSerializable(explicitToJson: true)
  const factory RestaurantCategory({
    String? id,
    String? createdDate,
    String? image,
    String? name,
  }) = _RestaurantCategory;

  factory RestaurantCategory.fromJson(Map<String, dynamic> json) =>
      _$RestaurantCategoryFromJson(json);
}
