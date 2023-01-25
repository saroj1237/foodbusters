import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/featured_item.dart';

abstract class RestaurantRemoteDataSource {
  /// [GET] the list of restaurant of specific category
  Future<List<Restaurant>> getRestaurantList(String id);

  /// [GET] all the restaurants available
  Future<List<Restaurant>> getAllRestaurants();

  /// [GET] the menu of the restaurant
  Future<List<Menu>> getRestaurantMenu(String restaurantId);

  /// [GET] the restaurant detail
  Future<RestaurantDetail> getRestaurantDetail(String restaturntId);

  /// [GET] the deals and offer food list
  Future<List<Food>> getOfferAndDeals();

  /// [GET] the list of featured restaurants
  Future<List<Restaurant>> getFetaturedRestaurants();

  /// [GET] the foods of restaurant
  Future<List<Food>> getRestaurantFoods(String restId);

  /// [GET] the featured items for home page
  Future<List<FeaturedItem>> getFeaturedItems();

  /// [GET] the offer food items of a restaurant
  Future<List<Food>> getRestaurantOffers(String restaurantId);
}

class RestaurantRemoteDataSourceImpl implements RestaurantRemoteDataSource {
  final DioClient _dioClient;
  RestaurantRemoteDataSourceImpl(DioClient dioClient) : _dioClient = dioClient;
  @override
  Future<List<Restaurant>> getRestaurantList(String id) async {
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

  @override
  Future<List<Menu>> getRestaurantMenu(String restaurantId) async {
    try {
      final url = ApiUrl.getRestaurantMenu.replaceAll("{id}", restaurantId);
      final response = await _dioClient.get(url);

      final json = response;
      Iterable l = json['data'];
      List<Menu> menuList = [];
      for (var menu in l) {
        menuList.add(Menu.fromJson(menu));
      }
      // debugPrint(menuList);
      return menuList;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RestaurantDetail> getRestaurantDetail(String restaurantId) async {
    try {
      final url = ApiUrl.getRestaurantDetail.replaceAll('{id}', restaurantId);
      final response = await _dioClient.get(url);
      final json = response['data'];
      RestaurantDetail restaurantDetail = RestaurantDetail.fromJson(json);
      // debugPrint(restaurantDetail);
      return restaurantDetail;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Restaurant>> getAllRestaurants() async {
    try {
      const url = ApiUrl.getAllRestaurants;
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

  @override
  Future<List<Food>> getOfferAndDeals() async {
    try {
      final response = await _dioClient.get(ApiUrl.getOfferAndDealsFoodsList);
      final json = response;
      Iterable l = json['data'];
      List<Food> offerAndDealsFoodList = [];
      for (var food in l) {
        offerAndDealsFoodList.add(Food.fromJson(food));
      }
      return offerAndDealsFoodList;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Restaurant>> getFetaturedRestaurants() async {
    try {
      final response = await _dioClient.get(ApiUrl.getFetaturedRestaurants);
      Iterable l = response["data"];
      List<Restaurant> featuredList = [];
      for (var rest in l) {
        featuredList.add(Restaurant.fromJson(rest));
      }
      return featuredList;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Food>> getRestaurantFoods(String restId) async {
    try {
      final url = ApiUrl.getRestaurantFoods.replaceAll("{restId}", restId);
      final response = await _dioClient.get(url);
      Iterable l = response['data'];
      List<Food> foodList = [];
      for (var food in l) {
        foodList.add(Food.fromJson(food));
      }
      return foodList;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<FeaturedItem>> getFeaturedItems() async {
    try {
      final response = await _dioClient.get(ApiUrl.getFeaturedItems);
      Iterable l = response['data'];
      List<FeaturedItem> featuredItems = [];
      for (var f in l) {
        featuredItems.add(FeaturedItem.fromJson(f));
      }
      // debugPrint(featuredItems);
      return featuredItems;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Food>> getRestaurantOffers(String restaurantId) async {
    try {
      final url = ApiUrl.getRestaurantOffer.replaceAll("{id}", restaurantId);

      final response = await _dioClient.get(url);
      List<dynamic> f = response['data'];
      List<Food> offerFoods = List<Food>.from(
        f.map((e) => Food.fromJson(e)),
      );
      print(offerFoods);
      return offerFoods;
    } catch (e) {
      rethrow;
    }
  }
}
