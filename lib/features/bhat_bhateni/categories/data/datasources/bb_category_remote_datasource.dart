import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/common/data/mapper.dart';

abstract class BBCategoryRemoteDataSource {
  Future<CategoryPaginationData> getCategoryList(int page);
  Future<List<BBSubCategory>> getSubCategoryList(String categoryId);
  Future<List<SliderCategory>> getCategorySlider();
  Future<Either<Failure, List<BBCategory>>> searchCategory(String queryString);
}

class BBCategoryRemoteDataSourceImpl implements BBCategoryRemoteDataSource {
  final DioClient _dioClient;
  BBCategoryRemoteDataSourceImpl(DioClient dioClient) : _dioClient = dioClient;
  @override
  Future<CategoryPaginationData> getCategoryList(int page) async {
    try {
      final url = "${ApiUrl.getBBCategoryList}?page=$page&limit=21";
      final response = await _dioClient.get(url);

      final json = response;

      Iterable l = json['data'];
      var meta = json['meta'];
      UrlMeta finalMeta = UrlMeta.fromJson(meta);
      List<BBCategory> categories = [];

      for (var category in l) {
        categories.add(BBCategory.fromJson(category).toDomain());
      }

      CategoryPaginationData categoryPaginationData =
          CategoryPaginationData(categories: categories, meta: finalMeta);

      return categoryPaginationData;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<BBSubCategory>> getSubCategoryList(String categoryId) async {
    try {
      final url = ApiUrl.getBBSubCategoryList.replaceAll("{id}", categoryId);
      final response = await _dioClient.get(url);

      final json = response;

      Iterable l = json['data'];
      List<BBSubCategory> subcategories = [];

      for (var subcategory in l) {
        subcategories.add(BBSubCategory.fromJson(subcategory));
      }
      return subcategories;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<SliderCategory>> getCategorySlider() async {
    try {
      const url = ApiUrl.getbbSlider;
      final response = await _dioClient.get(url);
      final json = response;
      Iterable data = json["data"];
      List<SliderCategory> slider = [];
      for (var restaurant in data) {
        slider.add(SliderCategory.fromJson(restaurant));
      }

      return slider;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Either<Failure, List<BBCategory>>> searchCategory(
      String queryString) async {
    try {
      var url = "bbsm/cat-search?query=$queryString";

      final response = await _dioClient.get(url);
      final Iterable l = response['data'];
      List<BBCategory> categories =
          List<BBCategory>.from(l.map((e) => BBCategory.fromJson(e)));
      return Right(categories);
    } catch (e) {
      rethrow;
    }
  }
}
