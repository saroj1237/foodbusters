part of 'order_history_cubit.dart';

@freezed
class OrderHistoryState with _$OrderHistoryState {
  const factory OrderHistoryState.initial() = Initial;
  const factory OrderHistoryState.orderHistoryLoading() = OrderHistoryLoading;
  const factory OrderHistoryState.orderHistoryError(String error) =
      OrderHistoryError;
  const factory OrderHistoryState.orderHistoryLoaded({
    required OrderHistory orderHistory,
    OrderHistoryItem? orderDetail,
  }) = OrderHistoryLoaded;
}
