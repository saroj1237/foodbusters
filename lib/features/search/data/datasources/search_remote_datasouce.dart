import 'package:flutter/material.dart';
import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/search/domain/entities/search_entity.dart';

import '../../../restaurant/restaurant/domain/entities/entity.dart';

abstract class SearchRemoteDatasource {
  Future<SearchRes> startSearch(String query);
  Future<List<Food>> startResSearch(String query);
  Future<TrendingRes> getTrendingSearches();
}

class SearchRemoteDatasourceImpl implements SearchRemoteDatasource {
  final DioClient _dioClient;

  SearchRemoteDatasourceImpl(DioClient dioClient) : _dioClient = dioClient;

  @override
  Future<SearchRes> startSearch(String params) async {
    try {
      final url = ApiUrl.search.replaceAll("{query}", params);
      debugPrint("==============>$url");
      final response = await _dioClient.get(url);
      Iterable f = response['data'][0]['Food'] ?? [];
      Iterable r = response['data'][1]['Restaurant'] ?? [];
      // debugPrint(f);
      // debugPrint(r);
      List<Food> foods = [];
      List<Restaurant> restaurants = [];
      Meta meta = Meta.fromJson(response['meta']);
      for (var food in f) {
        foods.add(Food.fromJson(food));
      }
      for (var restaurant in r) {
        restaurants.add(Restaurant.fromJson(restaurant));
      }
      // debugPrint(foods);
      // debugPrint(restaurants);
      return SearchRes(foods: foods, restaurants: restaurants, meta: meta);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Food>> startResSearch(String query) async {
    try {
      final url = ApiUrl.restaurantSearch + query;
      // debugPrint("==============>" + url);
      final response = await _dioClient.get(url);
      Iterable f = response['data'] ?? [];

      List<Food> foods = [];

      for (var food in f) {
        foods.add(Food.fromJson(food));
      }

      return foods;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<TrendingRes> getTrendingSearches() async {
    try {
      const url = ApiUrl.trendingSearches;
      final response = await _dioClient.get(url);
      // final result = response['data'] ?? [];

      Iterable t = response['data'][1]['trendingSearch'] ?? [];
      Iterable r = response['data'][0]['recentSearch'] ?? [];

      List<String> trendingSearches = [];
      List<String> recentSearches = [];
      for (var element in t) {
        trendingSearches.add((element));
      }

      for (var element in r) {
        recentSearches.add((element));
      }

      return TrendingRes(
          trendingSearches: trendingSearches, recentSearches: recentSearches);
    } catch (e) {
      rethrow;
    }
  }
}
