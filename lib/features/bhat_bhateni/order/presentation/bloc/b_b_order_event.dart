part of 'b_b_order_bloc.dart';

@freezed
class BBOrderEvent with _$BBOrderEvent {
  const factory BBOrderEvent.started() = Started;
  const factory BBOrderEvent.placeOrder(PlaceOrderReq orderRequest) =
      PlaceOrder;
}
