part of 'favourite_bloc.dart';

@freezed
class FavouriteEvent with _$FavouriteEvent {
  const factory FavouriteEvent.getFavouriteRestaurants() =
      GetFavouriteRestaurants;
  const factory FavouriteEvent.addFavouriteRestaurant(
      String restId, bool isAdd) = AddFavouriteRestaurant;
}
