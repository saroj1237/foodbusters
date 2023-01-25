// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_entity.freezed.dart';
part 'cart_entity.g.dart';

// request
class AddToCartReq {
  final String productId;
  final int quantity;
  AddToCartReq({required this.productId, required this.quantity});
}

// response
@freezed
class CartResponse with _$CartResponse {
  @JsonSerializable(explicitToJson: true)
  const factory CartResponse({
    required String id,
    @JsonKey(name: "total_price")
        num? totalPrice,
    @JsonKey(
      name: "productList",
      defaultValue: <CartItem>[],
    )
        List<CartItem>? items,
  }) = _CartResponse;
  factory CartResponse.fromJson(Map<String, dynamic> json) =>
      _$CartResponseFromJson(json);
}

@freezed
class CartItem with _$CartItem {
  const factory CartItem(
      {required String id,
      required String name,
      required int quantity,
      List<String>? productImage,
      @JsonKey(name: "unit_price") required num unitPrice,
      @JsonKey(name: "total_price") required num totalPrice}) = _CartItem;
  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}
