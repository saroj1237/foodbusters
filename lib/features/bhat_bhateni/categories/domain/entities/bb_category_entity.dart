// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bb_category_entity.freezed.dart';
part 'bb_category_entity.g.dart';

@freezed
class BBCategory with _$BBCategory {
  const factory BBCategory({
    required String id,
    required String name,
    @JsonKey(name: 'productCatImage') List<String>? images,
    String? description,
    num? discount,
  }) = _BBCategory;

  factory BBCategory.fromJson(Map<String, dynamic> json) =>
      _$BBCategoryFromJson(json);
}

@freezed
class BBSubCategory with _$BBSubCategory {
  const factory BBSubCategory({
    required String id,
    required String name,
    List<String>? images,
  }) = _BBSubCategory;

  factory BBSubCategory.fromJson(Map<String, dynamic> json) =>
      _$BBSubCategoryFromJson(json);
}

@freezed
class SliderCategory with _$SliderCategory {
  const factory SliderCategory({
    String? id,
    String? productId,
    String? productcategoryId,
    @JsonKey(name: "bannerImage") String? image,
    String? title,
  }) = _SliderCategory;

  factory SliderCategory.fromJson(Map<String, dynamic> json) =>
      _$SliderCategoryFromJson(json);
}

@freezed
class UrlMeta with _$UrlMeta {
  const factory UrlMeta({
    @JsonKey(name: 'has_next') bool? hasNext,
    @JsonKey(name: 'has_prev') bool? hasPrev,
    @JsonKey(name: 'next_num') int? nextNum,
    int? page,
    int? pages,
    @JsonKey(name: 'prev_num') int? prevNum,
    int? total,
  }) = _UrlMeta;

  factory UrlMeta.fromJson(Map<String, dynamic> json) =>
      _$UrlMetaFromJson(json);
}

class CategoryPaginationData {
  final List<BBCategory> categories;
  final UrlMeta meta;

  CategoryPaginationData({required this.categories, required this.meta});
}

class CategoryPaginationRequest {
  final BBSubCategory subCategories;
  final int pageIndex;

  CategoryPaginationRequest(
      {required this.subCategories, required this.pageIndex});
}
