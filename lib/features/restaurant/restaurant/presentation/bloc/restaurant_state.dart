part of 'restaurant_bloc.dart';

@freezed
class RestaurantState with _$RestaurantState {
  const factory RestaurantState.initial() = Initial;
  const factory RestaurantState.getRestaurantListLoading() =
      GetRestaurantListLoading;
  const factory RestaurantState.getRestaurantListSuccess({
    required List<Restaurant> restaurantList,
    List<Menu>? menuList,
    RestaurantDetail? restaurantDetail,
  }) = GetRestaurantListSuccess;
  const factory RestaurantState.getRestaurantListFailure() =
      GetRestaurantListFailure;
  const factory RestaurantState.getRestaurantMenuListSuccess({
    required List<Restaurant> restaurantList,
    List<Menu>? menuList,
    RestaurantDetail? restaurantDetail,
  }) = GetRestaurantMenuListSuccess;

  const factory RestaurantState.restaurantSearchReachedMax(
      bool max, List<Menu> menu) = RestaurantSearchReachedMax;
}
