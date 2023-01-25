part of 'restaurant_category_bloc.dart';

@freezed
class RestaurantCategoryEvent with _$RestaurantCategoryEvent {
  const factory RestaurantCategoryEvent.getRestaurantCategory() =
      GetRestaurantCategory;
}
