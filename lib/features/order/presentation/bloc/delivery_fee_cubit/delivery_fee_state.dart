part of 'delivery_fee_cubit.dart';

@freezed
class DeliveryFeeState with _$DeliveryFeeState {
  const factory DeliveryFeeState.initial() = Initial;
  const factory DeliveryFeeState.deliveryFeeLoading() = DeliveryFeeLoading;
  const factory DeliveryFeeState.deliveryFeeFailure(String error) =
      DeliveryFeeFailure;
  const factory DeliveryFeeState.deliveryFeeLoaded(num deliveryFee) =
      DeliveryFeeLoaded;
}
