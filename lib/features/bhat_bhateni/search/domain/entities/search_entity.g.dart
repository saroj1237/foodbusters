// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrendingSearches _$$_TrendingSearchesFromJson(Map<String, dynamic> json) =>
    _$_TrendingSearches(
      trendingSearch: (json['trendingSearch'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_TrendingSearchesToJson(_$_TrendingSearches instance) =>
    <String, dynamic>{
      'trendingSearch': instance.trendingSearch,
    };

_$_RecentSearches _$$_RecentSearchesFromJson(Map<String, dynamic> json) =>
    _$_RecentSearches(
      recentSearch: (json['recentSearch'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_RecentSearchesToJson(_$_RecentSearches instance) =>
    <String, dynamic>{
      'recentSearch': instance.recentSearch,
    };
