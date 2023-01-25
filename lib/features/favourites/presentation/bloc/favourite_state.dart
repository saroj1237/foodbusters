part of 'favourite_bloc.dart';

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState.initial() = Initial;
  const factory FavouriteState.favLoading() = FavLoading;
  const factory FavouriteState.favRestLoaded(List<Restaurant> favRestaurants) =
      FavRestLoaded;
  const factory FavouriteState.favRestFailure(String error) = FavRestFailure;
  // favourite restaurant adding states
  const factory FavouriteState.addFavRestSuccess(String successMessage) =
      AddFavRestSuccess;
  const factory FavouriteState.addFavRestFailure(String error) =
      AddFavRestFailure;
}
