part of 'restaurant_list_bloc.dart';

@freezed
class RestaurantListState with _$RestaurantListState {
  const factory RestaurantListState.initial() = Initial;
  const factory RestaurantListState.restaurantsListloading() =
      RestaurantsListLoading;
  const factory RestaurantListState.restaurantsListloaded(
      List<Restaurant> restaurants) = RestaurantsListLoaded;
  const factory RestaurantListState.restaurantsListError(String errorMsg) =
      RestaurantsListError;
}
