// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'featured_item.freezed.dart';
part 'featured_item.g.dart';

@freezed
class FeaturedItem with _$FeaturedItem {
  @JsonSerializable(explicitToJson: true)
  const factory FeaturedItem({
    required String id,
    required String title,
    required int sortNumber,
    required List<Map<String, dynamic>> items,
  }) = _FeaturedItem;
  factory FeaturedItem.fromJson(Map<String, dynamic> json) =>
      _$FeaturedItemFromJson(json);
}
