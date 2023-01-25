part of 'trending_search_bloc.dart';

@freezed
class BBTrendingSearchState with _$BBTrendingSearchState {
  const factory BBTrendingSearchState.trendingInitial() = TrendingSearchInitial;
  const factory BBTrendingSearchState.trendingLoading() = TrendingLoading;
  const factory BBTrendingSearchState.trendingError(String msg) = TrendingError;
  const factory BBTrendingSearchState.trendingLoaded(TrendingRes response) =
      TrendingLoaded;
}
