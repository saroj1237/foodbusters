part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.started() = Started;
  const factory OrderEvent.placeOrder({required PlaceOrderReq reqModel}) =
      PlaceOrder;
}
