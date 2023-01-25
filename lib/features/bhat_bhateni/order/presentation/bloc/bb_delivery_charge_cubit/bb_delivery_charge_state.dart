part of 'bb_delivery_charge_cubit.dart';

@freezed
class BbDeliveryChargeState with _$BbDeliveryChargeState {
  const factory BbDeliveryChargeState.initial() = Initial;
  const factory BbDeliveryChargeState.bBDeliveryFeeLoading() =
      BBDeliveryFeeLoading;
  const factory BbDeliveryChargeState.bBDeliveryFeeFailure(String errorMsg) =
      BBDeliveryFeeFailure;
  const factory BbDeliveryChargeState.bBDeliveryFeeSuccess(num amount) =
      BBDeliveryFeeSuccess;
}
