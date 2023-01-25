part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.searchInitial() = SearchInitial;
  const factory SearchState.searchLoading() = SearchLoading;
  const factory SearchState.searchError(String error) = SearchError;
  const factory SearchState.searchLoaded({
    required List<Food> foods,
    required List<Restaurant> restaurants,
    required bool searchNextPage,
    required bool toggler,
  }) = SearchLoaded;
  const factory SearchState.searchReachedMax(bool max, SearchRes foods) =
      SearchedReachedMax;
  const factory SearchState.restaurantSearchLoaded(List<Food> foods) =
      RestaurantSearchLoaded;
  const factory SearchState.restaurantSearchReachedMax(
      bool max, List<Food> foods) = RestaurantSearchReachedMax;
}
