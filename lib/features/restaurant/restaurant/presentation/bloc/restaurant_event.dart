part of 'restaurant_bloc.dart';

@freezed
class RestaurantEvent with _$RestaurantEvent {
  /// [Get] the restaurant list of specific restaurant category
  const factory RestaurantEvent.getRestaurantList(String id) =
      GetRestaurantList;

  /// [Get] all the restaurants available
  // const factory RestaurantEvent.getAllRestaturants() = GetAllRestaurants;

  /// [Get] the restaurant detail of a specific restaurnat
  const factory RestaurantEvent.getRestaturantDetail(String restaurantId) =
      GetRestaurantDetail;

  const factory RestaurantEvent.getResMenu(String restaurantId) = GetResMenu;

  const factory RestaurantEvent.getResMenuNxtPage(String restaurantId) =
      GetResMenuNxtPage;
}
