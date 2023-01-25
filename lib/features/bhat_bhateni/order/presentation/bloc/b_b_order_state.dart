part of 'b_b_order_bloc.dart';

@freezed
class BBOrderState with _$BBOrderState {
  const factory BBOrderState.initial() = Initial;
  const factory BBOrderState.placeOrderLoading() = PlaceOrderLoading;
  const factory BBOrderState.placeOrderFailure(String error) =
      PlaceOrderFailure;
  const factory BBOrderState.placeOrderSuccess(
      BBPlaceOrderSuccessRes successRes) = PlaceOrderSuccess;
}
