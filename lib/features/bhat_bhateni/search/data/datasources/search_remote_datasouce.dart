import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:foodbusters/features/search/domain/entities/search_entity.dart';

import '../../../../../core/usecases/base_usecase.dart';
import '../../domain/usecases/search_usecase.dart';

abstract class BBSearchRemoteDatasource {
  Future<BBSearchResponse> startSearch(String query);
  Future<TrendingRes> getTrendingSearches();
}

class BBSearchRemoteDatasourceImpl implements BBSearchRemoteDatasource {
  final DioClient _dioClient;

  BBSearchRemoteDatasourceImpl(DioClient dioClient) : _dioClient = dioClient;

  @override
  Future<BBSearchResponse> startSearch(String query) async {
    try {
      final url = ApiUrl.bbSearch.replaceAll("{query}", query);
      // debugPrint("==============>" + url);
      final response = await _dioClient.get(url);
      Iterable f = response['data'];

      List<Product> products = [];
      for (var food in f) {
        products.add(Product.fromJson(food));
      }
      Meta meta = Meta.fromJson(response['meta']);
      // Meta meta = Meta(hasNext: false);

      return BBSearchResponse(products: products, meta: meta);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<TrendingRes> getTrendingSearches() async {
    try {
      const url = ApiUrl.bbTrending;
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
