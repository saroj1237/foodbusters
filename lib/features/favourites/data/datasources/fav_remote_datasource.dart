import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/entities/entiry.dart';

abstract class FavRemoteDatasource {
  Future<List<Restaurant>> getFavouriteRestaurats();
  Future<String> addFavouriteRestaurant(String restId);
}

class FavRemoteDatasourceImpl implements FavRemoteDatasource {
  final DioClient _dioClient;
  FavRemoteDatasourceImpl(DioClient dioClient) : _dioClient = dioClient;
  @override
  Future<List<Restaurant>> getFavouriteRestaurats() async {
    try {
      final response = await _dioClient.get(ApiUrl.getFavRestaurants);
      Iterable r = response['data'];
      List<Restaurant> favRestaurants = [];
      for (var rest in r) {
        favRestaurants.add(Restaurant.fromJson(rest));
      }
      return favRestaurants;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> addFavouriteRestaurant(String restId) async {
    try {
      final response =
          await _dioClient.post("${ApiUrl.addFavRestaurant}$restId");
      final successMsg = response['message'];
      return successMsg;
    } catch (e) {
      rethrow;
    }
  }
}
