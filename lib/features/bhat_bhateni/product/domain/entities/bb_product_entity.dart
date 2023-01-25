// ignore_for_file: invalid_annotation_target

import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bb_product_entity.freezed.dart';
part 'bb_product_entity.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String name,
    String? detail,
    required num price,
    num? discount,
    num? discountPrice,
    required bool isVeg,
    @JsonKey(name: "productImage") List<String>? images,
  }) = _Product;
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

class BBProductPagination {
  final List<Product> categories;
  final UrlMeta meta;

  BBProductPagination({required this.categories, required this.meta});
}
