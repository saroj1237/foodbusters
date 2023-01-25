import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/entities/entiry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_entity.freezed.dart';
part 'search_entity.g.dart';

//for search resault
class SearchRes {
  final List<Food> foods;
  final List<Restaurant> restaurants;
  final Meta meta;

  SearchRes(
      {required this.foods, required this.restaurants, required this.meta});
}

//for trending and recent search keywords

class TrendingRes {
  final List<String> trendingSearches;
  final List<String> recentSearches;
  TrendingRes({required this.trendingSearches, required this.recentSearches});
}

@freezed
class TrendingSearches with _$TrendingSearches {
  const factory TrendingSearches({
    List<String>? trendingSearch,
  }) = _TrendingSearches;
  factory TrendingSearches.fromJson(Map<String, dynamic> json) =>
      _$TrendingSearchesFromJson(json);
}

@freezed
class RecentSearches with _$RecentSearches {
  const factory RecentSearches({
    List<String>? recentSearch,
  }) = _RecentSearches;
  factory RecentSearches.fromJson(Map<String, dynamic> json) =>
      _$RecentSearchesFromJson(json);
}
