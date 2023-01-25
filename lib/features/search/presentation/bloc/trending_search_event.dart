part of 'trending_search_bloc.dart';

@freezed
class TrendingSearchEvent with _$TrendingSearchEvent {
  const factory TrendingSearchEvent.getTrendingSearches() = GetTrendingSearches;
}
