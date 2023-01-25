part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = Initial;
  const factory OrderState.orderLoading() = OrderLoading;
  const factory OrderState.placeOrderSuccess({
    required PlaceOrderSuccessRes successRes,
  }) = PlaceOrderSuccess;
  const factory OrderState.placeOrderFailure(String errorMsg) =
      PlaceOrderFailure;
}
