part of 'search_bloc.dart';

@freezed
class BBSearchState with _$BBSearchState {
  const factory BBSearchState.searchInitial() = SearchInitial;
  const factory BBSearchState.searchLoading() = SearchLoading;
  const factory BBSearchState.searchError(String error) = SearchError;
  const factory BBSearchState.searchLoaded({
    required List<Product> products,
    required bool loadNextPage,
  }) = SearchLoaded;
  const factory BBSearchState.searchReachedMax(bool max, List<Product> foods) =
      SearchedReachedMax;
  const factory BBSearchState.restaurantSearchLoaded(List<Food> foods) =
      RestaurantSearchLoaded;
  const factory BBSearchState.restaurantSearchReachedMax(
      bool max, List<Product> foods) = RestaurantSearchReachedMax;
}
