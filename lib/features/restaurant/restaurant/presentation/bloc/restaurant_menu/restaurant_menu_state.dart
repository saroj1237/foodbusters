part of 'restaurant_menu_bloc.dart';

@freezed
class RestaurantMenuState with _$RestaurantMenuState {
  const factory RestaurantMenuState.initial() = Initial;
  const factory RestaurantMenuState.getRestaurantMenuLoading() =
      GetRestaurantMenuLoading;
  const factory RestaurantMenuState.getRestaurantMenuLoaded(
      List<Menu> menuList) = GetRestaurantMenuLoaded;
  const factory RestaurantMenuState.getRestaurantMenuError(String error) =
      GetRestaurantMenuError;
  const factory RestaurantMenuState.getRestaurantMenuReachedMax(
      bool max, List<Menu> menuList) = GetRestaurantMenuReachedMax;
}
