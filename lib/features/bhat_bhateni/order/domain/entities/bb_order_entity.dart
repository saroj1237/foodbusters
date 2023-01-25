import 'package:foodbusters/features/bhat_bhateni/cart/domain/entities/cart_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:foodbusters/features/order/domain/entities/order_entity.dart';

part 'bb_order_entity.freezed.dart';
part 'bb_order_entity.g.dart';

@freezed
class BBPlaceOrderSuccessRes with _$BBPlaceOrderSuccessRes {
  const factory BBPlaceOrderSuccessRes({
    @JsonKey(name: "id") required String orderId,
    @JsonKey(name: "oid") required String oid,
    required num bbsmPrice,
    required num totalPrice,
    num? couponPrice,
    @JsonKey(name: "delivery_charge") required num deliveryCharge,
  }) = _BBPlaceOrderSuccessRes;
  factory BBPlaceOrderSuccessRes.fromJson(Map<String, dynamic> json) =>
      _$BBPlaceOrderSuccessResFromJson(json);
}

@freezed
class BBOrderHistory with _$BBOrderHistory {
  const factory BBOrderHistory({
    @JsonKey(name: "id") required String orderId,
    @JsonKey(name: "oid") required String oid,
    required num bbsmPrice,
    required num totalPrice,
    required bool paidStatus,
    String? orderStatus,
    String? paymentOption,
    num? couponPrice,
    required String createdDate,
    @JsonKey(name: "delivery_charge") required num deliveryCharge,
  }) = _BBOrderHistory;
  factory BBOrderHistory.fromJson(Map<String, dynamic> json) =>
      _$BBOrderHistoryFromJson(json);
}

@freezed
class BBOrderHistoryDetail with _$BBOrderHistoryDetail {
  const factory BBOrderHistoryDetail({
    @JsonKey(name: "id") required String orderId,
    @JsonKey(name: "oid") required String oid,
    required num bbsmPrice,
    required num totalPrice,
    required bool paidStatus,
    @JsonKey(name: "bbsmCart") required CartResponse cartResponse,
    String? orderStatus,
    String? paymentOption,
    num? couponPrice,
    required String createdDate,
    @JsonKey(name: "delivery_charge") required num deliveryCharge,
  }) = _BBOrderHistoryDetail;
  factory BBOrderHistoryDetail.fromJson(Map<String, dynamic> json) =>
      _$BBOrderHistoryDetailFromJson(json);
}
