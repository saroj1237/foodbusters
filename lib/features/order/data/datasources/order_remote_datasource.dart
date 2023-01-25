import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/features/order/domain/entities/order_entity.dart';

abstract class OrderRemoteDataSource {
  Future<PlaceOrderSuccessRes> placeOrder(PlaceOrderReq orderReq);
  Future<OrderHistory> getOrderHistory();
  Future<OrderHistoryItem> getOrderHistoryDetail(String orderId);
  Future<num> calculateDeliveryFee(DeliveryFeeReq req);
  Future<CouponCodeRes> applyCoupon(CouponCodeReq req);
}

class OrderRemoteDataSourceImpl implements OrderRemoteDataSource {
  final DioClient _dioClient;
  OrderRemoteDataSourceImpl(DioClient dioClient) : _dioClient = dioClient;
  @override
  Future<PlaceOrderSuccessRes> placeOrder(PlaceOrderReq orderReq) async {
    try {
      final url = ApiUrl.placeOrder.replaceAll("{id}", orderReq.restaurantId!);
      final data = {};
      data['addressId'] = orderReq.addressId;
      data['special_instruction'] = orderReq.specialInstruction;
      if (orderReq.couponId != null) {
        data['coupon_id'] = orderReq.couponId;
      }
      final response = await _dioClient.post(
        url,
        data: data,
      );

      final json = response;
      final result = PlaceOrderSuccessRes.fromJson(json['data']);
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<OrderHistory> getOrderHistory() async {
    try {
      final response = await _dioClient.get(ApiUrl.getOrderHistory);
      if (response['message'] == 'No orders found') {
        return OrderHistory(orderHistoryItems: []);
      }
      Iterable data = response['data']['rest_order'] ?? [];
      List<OrderHistoryItem> list = [];
      for (var i in data) {
        list.add(OrderHistoryItem.fromJson(i));
      }
      PendingOrdersInfo? pendingOrdersInfo =
          response['data']['onGoingOrders'] != null
              ? PendingOrdersInfo.fromJson(response['data']['onGoingOrders'])
              : null;
      return OrderHistory(
          orderHistoryItems: list, pendingOrdersInfo: pendingOrdersInfo);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<OrderHistoryItem> getOrderHistoryDetail(String orderId) async {
    try {
      final url = ApiUrl.getOrderHistoryDetail.replaceAll("{id}", orderId);
      final response = await _dioClient.get(url);
      var data = response['data'];

      return OrderHistoryItem.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<num> calculateDeliveryFee(DeliveryFeeReq req) async {
    try {
      final response = await _dioClient.post(
        ApiUrl.getDeliveryFee,
        data: req.toJson(),
      );
      final deliveryFee = response['data'];
      return deliveryFee;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CouponCodeRes> applyCoupon(CouponCodeReq req) async {
    try {
      dynamic data = {};
      if (req.type == "restaurant") {
        data = req.toJson();
      } else {
        data['price'] = req.price;
        data['coupon_code'] = req.couponCode;
        data['type_of'] = req.type;
      }
      final response =
          await _dioClient.post(ApiUrl.applyCouponCode, data: data);
      final result = response['data'];

      return CouponCodeRes.fromJson(result);
    } catch (e) {
      rethrow;
    }
  }
}
