part of 'restaurant_menu_bloc.dart';

@freezed
class RestaurantMenuEvent with _$RestaurantMenuEvent {
  const factory RestaurantMenuEvent.getRestaurantMenu(String id) =
      GetRestaurantMenu;
  const factory RestaurantMenuEvent.getRestaurantMenuNextPage(String id) =
      GetRestaurantMenuNextPage;
}
