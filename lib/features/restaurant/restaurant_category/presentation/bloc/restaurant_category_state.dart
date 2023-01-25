part of 'restaurant_category_bloc.dart';

@freezed
class RestaurantCategoryState with _$RestaurantCategoryState {
  const factory RestaurantCategoryState.initial() = Initial;
  const factory RestaurantCategoryState.getRestaurantCategoryLoading() =
      GetRestaurantCategoryLoading;
  const factory RestaurantCategoryState.getRestaurantCategorySuccess({
    required List<RestaurantCategory> restaurantCategories,
  }) = GetRestaurantCategorySuccess;
  const factory RestaurantCategoryState.getRestaurantCategoryFailure() =
      GetRestaurantCategoryFailure;
}
