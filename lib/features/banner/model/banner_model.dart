import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_model.g.dart';

@JsonSerializable()
class BannerModel {
  final String id;
  final String? title;
  @JsonKey(name: "bannerImage")
  final String image;
  final String? restId;
  final String? categoryId;

  BannerModel({
    required this.id,
    this.title,
    required this.image,
    this.restId,
    this.categoryId,
  });

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}
