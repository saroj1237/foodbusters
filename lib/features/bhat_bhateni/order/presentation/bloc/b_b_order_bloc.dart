import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/entities/bb_order_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/usecases/place_order_usecase.dart';
import 'package:foodbusters/features/order/domain/entities/order_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'b_b_order_bloc.freezed.dart';
part 'b_b_order_event.dart';
part 'b_b_order_state.dart';

class BBOrderBloc extends Bloc<BBOrderEvent, BBOrderState> {
  final BBPlaceOrderUsecase placeOrderUsecase;
  BBOrderBloc(this.placeOrderUsecase) : super(const Initial()) {
    on<PlaceOrder>(_onPlaceOrder);
  }
  _onPlaceOrder(PlaceOrder event, Emitter<BBOrderState> emit) async {
    emit(const PlaceOrderLoading());
    final failureOrSuccess = await placeOrderUsecase(event.orderRequest);
    failureOrSuccess.fold((failure) {
      if (failure is NetworkFailure) {
        emit(PlaceOrderFailure(
            NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (successRes) {
      emit(PlaceOrderSuccess(successRes));
    });
  }
}
