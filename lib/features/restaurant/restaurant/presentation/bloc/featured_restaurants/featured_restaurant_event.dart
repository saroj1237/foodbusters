part of 'featured_restaurant_bloc.dart';

@freezed
class FeaturedRestaurantEvent with _$FeaturedRestaurantEvent {
  const factory FeaturedRestaurantEvent.started() = Started;
  const factory FeaturedRestaurantEvent.getFeatturedRestaurants() =
      GetFeatturedRestaurants;
  const factory FeaturedRestaurantEvent.getRestaurantFoods(
      Restaurant restaurant) = GetRestaurantFoods;
}
