import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/order/domain/entities/order_entity.dart';
import 'package:foodbusters/features/order/domain/usecases/delivery_fee_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_fee_cubit.freezed.dart';
part 'delivery_fee_state.dart';

class DeliveryFeeCubit extends Cubit<DeliveryFeeState> {
  final DeliveryFeeUsecase usecase;
  DeliveryFeeCubit(this.usecase) : super(const DeliveryFeeState.initial());
  void getDeliverFee(DeliveryFeeReq req) async {
    emit(const DeliveryFeeLoading());
    final failureOrFee = await usecase(req);
    failureOrFee.fold((failure) {
      if (failure is NetworkFailure) {
        emit(DeliveryFeeFailure(
            NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (fee) {
      emit(DeliveryFeeLoaded(fee));
    });
  }

  void resetDeliveryFee() {
    emit(const Initial());
  }
}
