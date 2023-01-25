import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';

abstract class PartnerRestaurantRemoteDataSource {
  Future<List<Restaurant>> getPartnerRestaurants();
}

class PartnerRestaurantRemoteDataSourceImpl
    implements PartnerRestaurantRemoteDataSource {
  final DioClient _dioClient;
  PartnerRestaurantRemoteDataSourceImpl(DioClient dioClient)
      : _dioClient = dioClient;
  @override
  Future<List<Restaurant>> getPartnerRestaurants() async {
    try {
      final response = await _dioClient.get(ApiUrl.getPartnerRestaurantList);

      final json = response;
      final List<Restaurant> restList = [];
      for (var rest in json['data']) {
        restList.add(Restaurant.fromJson(rest));
      }
      return restList;
    } catch (e) {
      rethrow;
    }
  }
}
