// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity.freezed.dart';
part 'entity.g.dart';

//===================FOR RESTAURANT LIST API ============
@freezed
class Restaurant with _$Restaurant {
  const factory Restaurant({
    required String id,
    @JsonKey(name: 'restaurant_name') required String name,
    String? images,
    String? address,
    num? lat,
    num? lng,
    @Default(false) bool isFavorite,
    @JsonKey(name: "opening_time") String? openingTime,
    @JsonKey(name: 'closing_time') String? closingTime,
  }) = _Restaurant;
  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);
}

// ============ FOR RESTAURANT DETAIL API ================
@freezed
class RestaurantDetail with _$RestaurantDetail {
  const factory RestaurantDetail({
    required String id,
    @JsonKey(name: 'restaurant_name') required String restaurantName,
    String? description,
    String? address,
    String? images,
    String? contact,
    @JsonKey(name: "opening_time") String? openingTime,
    @JsonKey(name: "closing_time") String? closingTime,
    num? lat,
    num? lng,
    num? rating,
    @Default(false) bool isFavorite,
    @Default([]) List<dynamic> reviews,
  }) = _RestaurantDetail;

  factory RestaurantDetail.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDetailFromJson(json);
}

// =================== MENU OF A RESTAURANT ===============
@freezed
class Menu with _$Menu {
  @JsonSerializable(explicitToJson: true)
  const factory Menu({
    required String id,
    required String title,
    @Default([]) List<Food> foods,
  }) = _Menu;
  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
}

// =============== FOOD OF A MENU OF A RESTAURANT =================
@freezed
class Food with _$Food {
  const factory Food({
    required String id,
    @JsonKey(name: "restaurant_id") String? restaurantId,
    @JsonKey(name: "restaurant") String? restaurantName,
    String? name,
    String? detail,
    num? price,
    num? discount,
    num? discountedPrice,
    List<String>? foodImage,
    bool? isVeg,
    required bool offer,
    @JsonKey(name: "offer_name") String? offerName,
  }) = _Food;
  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}

@freezed
class RestaurantDetailWithMenu with _$RestaurantDetailWithMenu {
  const factory RestaurantDetailWithMenu({
    required RestaurantDetail detail,
    @Default([]) List<Menu> menuList,
  }) = _RestaurantDetailWithMenu;
}
