import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/order/domain/entities/order_entity.dart';
import 'package:foodbusters/features/order/domain/usecases/order_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderUsecase orderUsecase;

  OrderBloc(this.orderUsecase) : super(const Initial()) {
    on<PlaceOrder>(_onPlaceOrder);
  }
  void _onPlaceOrder(PlaceOrder event, Emitter<OrderState> emit) async {
    emit(const OrderLoading());
    final failureOrSuccess = await orderUsecase(event.reqModel);
    failureOrSuccess.fold(
      (failure) {
        if (failure is NetworkFailure) {
          emit(PlaceOrderFailure(
              NetworkExceptions.getErrorMessage(failure.error)));
        }
      },
      (success) {
        emit(PlaceOrderSuccess(successRes: success));
      },
    );
  }
}
