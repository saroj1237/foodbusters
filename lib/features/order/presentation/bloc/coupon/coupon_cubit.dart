import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/helpers/input_validators.dart';
import 'package:foodbusters/features/order/domain/entities/order_entity.dart';
import 'package:foodbusters/features/order/domain/usecases/coupon_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_cubit.freezed.dart';
part 'coupon_state.dart';

class CouponCubit extends Cubit<CouponState> {
  final CouponUsecase usecase;

  CouponCubit(this.usecase) : super(const CouponState.initial());
  void applyCoupon(CouponCodeReq req) async {
    emit(const CouponLoading());
    final failureOrSuccess = await usecase(req);
    failureOrSuccess.fold((failuer) {
      if (failuer is NetworkFailure) {
        emit(CouponFailure(NetworkExceptions.getErrorMessage(failuer.error)));
      }
    }, (success) {
      emit(CouponSuccess(success));
    });
  }

  void onCouponChange(String couponCode) {
    if (InputValidators.commonValidation(couponCode) == null) {
      emit(const CouponChangeState(true));
    } else {
      emit(const CouponChangeState(false));
    }
  }

  void clearCoupon() {
    emit(const Initial());
  }
}
