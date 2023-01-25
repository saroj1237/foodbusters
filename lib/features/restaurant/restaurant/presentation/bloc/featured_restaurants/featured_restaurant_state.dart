part of 'featured_restaurant_bloc.dart';

@freezed
class FeaturedRestaurantState with _$FeaturedRestaurantState {
  const factory FeaturedRestaurantState.initial() = Initial;
  const factory FeaturedRestaurantState.featuredRestaurantLoading() =
      FeaturedRestaurantLoading;
  const factory FeaturedRestaurantState.featuredRestaurantFailure(
      String error) = FeaturedRestaurantFailure;
  const factory FeaturedRestaurantState.featuredRestaurantLoaded({
    required List<Restaurant> featuredRestaurants,
    required Restaurant selectedRest,
    List<Food>? foodList,
  }) = FeaturedRestaurantLoaded;
}
