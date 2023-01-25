part of 'restaurant_list_bloc.dart';

@freezed
class RestaurantListEvent with _$RestaurantListEvent {
  const factory RestaurantListEvent.getRestaurantsList(String resId) =
      GetRestaurantsList;
}
