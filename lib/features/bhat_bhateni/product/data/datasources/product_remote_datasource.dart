import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/featured_item.dart';

abstract class ProductRemoteDatasource {
  Future<BBProductPagination> getCategoryProducts(
      String subCategoryId, int pageIndex);
  Future<List<Product>> getAllProducts();
  Future<List<Product>> getAllDeals();
  Future<List<BBFeaturedItem>> getFeaturedItems();
  Future<List<Product>> getFeaturedItemProducts(String id);
  Future<Product> getProductDetail(String id);
}

class ProductRemoteDatasourceImpl implements ProductRemoteDatasource {
  final DioClient _dioClient;
  ProductRemoteDatasourceImpl(DioClient dioClient) : _dioClient = dioClient;
  @override
  Future<BBProductPagination> getCategoryProducts(
      String subCategoryId, int pageIndex) async {
    try {
      final url =
          ApiUrl.getSubCategoryProducts.replaceAll("{id}", subCategoryId);

      final finalUrl = "$url?page=$pageIndex";

      final response = await _dioClient.get(finalUrl);

      final json = response;
      Iterable l = json['data'];
      UrlMeta meta = UrlMeta.fromJson(json['meta']);

      List<Product> products = [];
      for (var p in l) {
        products.add(Product.fromJson(p));
      }
      return BBProductPagination(categories: products, meta: meta);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Product>> getAllProducts() async {
    try {
      const url = ApiUrl.getAllProducts;
      final response = await _dioClient.get(url);

      final json = response;
      Iterable l = json['data'];
      List<Product> products = [];
      for (var p in l) {
        products.add(Product.fromJson(p));
      }
      return products;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Product>> getAllDeals() async {
    try {
      const url = ApiUrl.getbbDeals;
      final response = await _dioClient.get(url);

      final json = response;
      Iterable l = json['data'];
      List<Product> products = [];
      for (var p in l) {
        products.add(Product.fromJson(p));
      }
      return products;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<BBFeaturedItem>> getFeaturedItems() async {
    try {
      const url = ApiUrl.getBBFeaturedItems;
      final response = await _dioClient.get(url);

      final json = response;
      Iterable l = json['data'];

      List<BBFeaturedItem> featuredItems = [];
      for (var p in l) {
        featuredItems.add(BBFeaturedItem.fromJson(p));
      }
      return featuredItems;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Product>> getFeaturedItemProducts(String id) async {
    try {
      final url = ApiUrl.getBBFeaturedItemProducts.replaceAll("{id}", id);
      final response = await _dioClient.get(url);

      final json = response;
      Iterable l = json['data'][0]['productList'];

      List<Product> featuredItemProducts = [];
      for (var p in l) {
        featuredItemProducts.add(Product.fromJson(p));
      }
      return featuredItemProducts;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Product> getProductDetail(String id) async {
    try {
      final url = ApiUrl.getProductDetail.replaceAll("{id}", id);
      final response = await _dioClient.get(url);

      Product productDetail = Product.fromJson(response['data']);

      return productDetail;
    } catch (e) {
      rethrow;
    }
  }
}
