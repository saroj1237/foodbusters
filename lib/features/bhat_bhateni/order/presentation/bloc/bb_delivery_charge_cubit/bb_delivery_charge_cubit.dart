import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/usecases/place_order_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bb_delivery_charge_cubit.freezed.dart';
part 'bb_delivery_charge_state.dart';

class BbDeliveryChargeCubit extends Cubit<BbDeliveryChargeState> {
  final CalulateBBDeliveryFeeUsecase usecase;

  BbDeliveryChargeCubit(this.usecase)
      : super(const BbDeliveryChargeState.initial());

  void calculateBBDeliveryFee(String addressId) async {
    emit(const BBDeliveryFeeLoading());
    final successOrFailure = await usecase(addressId);
    successOrFailure.fold((failure) {
      if (failure is NetworkFailure) {
        emit(BBDeliveryFeeFailure(
            NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (amount) {
      emit(BBDeliveryFeeSuccess(amount));
    });
  }

  void resetBBDeliveryFee() {
    emit(const BbDeliveryChargeState.initial());
  }
}
