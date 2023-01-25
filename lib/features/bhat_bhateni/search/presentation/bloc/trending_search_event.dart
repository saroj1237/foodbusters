part of 'trending_search_bloc.dart';

@freezed
class BBTrendingSearchEvent with _$BBTrendingSearchEvent {
  const factory BBTrendingSearchEvent.getTrendingSearches() =
      BBGetTrendingSearches;
}
