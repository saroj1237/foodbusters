part of 'coupon_cubit.dart';

@freezed
class CouponState with _$CouponState {
  const factory CouponState.initial() = Initial;
  const factory CouponState.couponLoading() = CouponLoading;
  const factory CouponState.couponFailure(String error) = CouponFailure;
  const factory CouponState.couponSuccess(CouponCodeRes couponRes) =
      CouponSuccess;
  const factory CouponState.couponChangeState(bool validaOrNot) =
      CouponChangeState;
}
