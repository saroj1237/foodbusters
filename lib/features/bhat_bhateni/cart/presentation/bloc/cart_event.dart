part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = Started;
  const factory CartEvent.getCart({bool? hideLoading}) = GetCart;
  const factory CartEvent.addToCart({
    required AddToCartReq req,
  }) = AddToCart;
  const factory CartEvent.updateCart({
    required AddToCartReq req,
  }) = UpdateCart;

  const factory CartEvent.deleteCartItem(CartItem cartItem) = DeleteCartItem;
}
