part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = Initial;
  const factory CartState.cartLoading() = CartLoading;
  const factory CartState.cartError(String error) = CartError;
  const factory CartState.addToCartSuccess() = AddToCartSuccess;
  const factory CartState.getCartSuccess({
    required CartResponse cartResponse,
  }) = GetCartSuccess;
}
