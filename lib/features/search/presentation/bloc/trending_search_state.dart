part of 'trending_search_bloc.dart';

@freezed
class TrendingSearchState with _$TrendingSearchState {
  const factory TrendingSearchState.trendingInitial() = TrendingSearchInitial;
  const factory TrendingSearchState.trendingLoading() = TrendingLoading;
  const factory TrendingSearchState.trendingError(String msg) = TrendingError;
  const factory TrendingSearchState.trendingLoaded(TrendingRes response) =
      TrendingLoaded;
}
