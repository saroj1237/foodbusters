import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/domain/entities/resturant_entity.dart';

import '../../../../common/common.dart';

abstract class ResturantCategoryRemoteDataSource {
  Future<List<RestaurantCategory>> getResturantCategories();
  Future<List<Restaurant>> getResturantsList(String id);
}

class ResturantCategoryRemoteDataSourceImpl
    implements ResturantCategoryRemoteDataSource {
  final DioClient _dioClient;
  ResturantCategoryRemoteDataSourceImpl(DioClient dioClient)
      : _dioClient = dioClient;
  @override
  Future<List<RestaurantCategory>> getResturantCategories() async {
    try {
      const url = ApiUrl.getResturantCategories;
      final response = await _dioClient.get(url);

      final json = response;

      Iterable l = json['data'];
      List<RestaurantCategory> restaurantCategories = [];
      for (var restaurant in l) {
        restaurantCategories
            .add(RestaurantCategory.fromJson(restaurant).toDomain());
      }
      // debugPrint(restaurantCategories);
      return restaurantCategories;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Restaurant>> getResturantsList(String id) async {
    try {
      final url = ApiUrl.getRestaurantsList.replaceAll("{id}", id);
      final response = await _dioClient.get(url);

      final json = response;
      Iterable l = json['data'];
      List<Restaurant> restaurantList = [];
      for (var resturant in l) {
        restaurantList.add(Restaurant.fromJson(resturant));
      }
      // debugPrint(restaurantList);
      return restaurantList;
    } catch (e) {
      rethrow;
    }
  }
}
