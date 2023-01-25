part of 'restaurant_offer_cubit.dart';

@freezed
class RestaurantOfferState with _$RestaurantOfferState {
  const factory RestaurantOfferState.initial() = Initial;
  const factory RestaurantOfferState.restaurantOfferLoading() =
      RestaurantOfferLoading;
  const factory RestaurantOfferState.restaurantOfferLoaded(
      List<Food> offerFoods) = RestaurantOfferLoaded;
  const factory RestaurantOfferState.restaurantOfferFailure(String error) =
      RestaurantOfferFailure;
}
