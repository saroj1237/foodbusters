// ignore_for_file: invalid_annotation_target

import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'featured_item.freezed.dart';
part 'featured_item.g.dart';

@freezed
class BBFeaturedItem with _$BBFeaturedItem {
  @JsonSerializable(explicitToJson: true)
  const factory BBFeaturedItem({
    required String id,
    required String title,
    @JsonKey(name: 'productCategoryList') required List<BBCategory> categories,
    @JsonKey(name: 'productList') required List<Product> products,
    @JsonKey(name: "BBFeaturedItemImage") List<String>? images,
  }) = _BBFeaturedItem;
  factory BBFeaturedItem.fromJson(Map<String, dynamic> json) =>
      _$BBFeaturedItemFromJson(json);
}
