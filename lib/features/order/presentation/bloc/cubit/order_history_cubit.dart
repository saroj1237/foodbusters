import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/order/domain/entities/order_entity.dart';
import 'package:foodbusters/features/order/domain/usecases/order_history_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_history_cubit.freezed.dart';
part 'order_history_state.dart';

class OrderHistoryCubit extends Cubit<OrderHistoryState> {
  final OrderHistoryUsecase usecase;
  final OrderHistoryDetailUsecase detailUsecase;
  OrderHistoryCubit({required this.usecase, required this.detailUsecase})
      : super(const OrderHistoryState.initial());

  void getOrderHistory() async {
    emit(const OrderHistoryLoading());
    final failureOrSuccess = await usecase(NoParams());
    failureOrSuccess.fold((failure) {
      if (failure is NetworkFailure) {
        emit(OrderHistoryError(
            NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (history) {
      emit(OrderHistoryLoaded(orderHistory: history));
    });
  }

  void getOrderHistoryDetail(String orderId) async {
    final state = this.state;
    if (state is OrderHistoryLoaded) {
      final orderHistory = state.orderHistory;
      emit(const OrderHistoryLoading());
      final failureOrSuccess = await detailUsecase(orderId);
      failureOrSuccess.fold((failure) {
        emit(OrderHistoryLoaded(orderHistory: orderHistory));
      }, (orderDetail) {
        emit(OrderHistoryLoaded(
            orderHistory: orderHistory, orderDetail: orderDetail));
      });
    } else {
      emit(const OrderHistoryLoading());
      final failureOrSuccess = await detailUsecase(orderId);
      failureOrSuccess.fold((failure) {
        emit(OrderHistoryLoaded(
            orderHistory: OrderHistory(orderHistoryItems: [])));
      }, (orderDetail) {
        emit(OrderHistoryLoaded(
            orderHistory: OrderHistory(orderHistoryItems: []),
            orderDetail: orderDetail));
      });
    }
  }
}
