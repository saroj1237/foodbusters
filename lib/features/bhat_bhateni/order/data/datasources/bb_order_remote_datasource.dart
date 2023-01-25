import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/entities/bb_order_entity.dart';

abstract class BBOrderRemoteDatasource {
  Future<BBPlaceOrderSuccessRes> placeOrder(PlaceOrderReq orderRequest);
  Future<num> calculateBBDeliveryFee(String addressId);
  Future<List<BBOrderHistory>> getBbOrderHistories();
  Future<BBOrderHistoryDetail> getBbOrderHistoryDetails(
      BBOrderHistory orderHistory);
}

class BBOrderRemoteDatasourceImpl implements BBOrderRemoteDatasource {
  final DioClient _dioClient;
  BBOrderRemoteDatasourceImpl(DioClient dioClient) : _dioClient = dioClient;
  @override
  Future<BBPlaceOrderSuccessRes> placeOrder(PlaceOrderReq orderRequest) async {
    try {
      Map<String, dynamic> d = {};
      if (orderRequest.couponId != null) {
        d['coupon_id'] = orderRequest.couponId;
      }
      d['addressId'] = orderRequest.addressId;
      d['special_instruction'] = orderRequest.addressId;
      final res = await _dioClient.post(ApiUrl.bbPlaceOrder, data: d);
      BBPlaceOrderSuccessRes data =
          BBPlaceOrderSuccessRes.fromJson(res['data']);
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<num> calculateBBDeliveryFee(String addressId) async {
    try {
      final res = await _dioClient.post(
        ApiUrl.getDeliveryFee,
        data: {
          'userAddId': addressId,
        },
      );
      num data = res['data'];
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<BBOrderHistory>> getBbOrderHistories() async {
    try {
      final res = await _dioClient.get(ApiUrl.getOrderHistory);
      Iterable data = res['data']['bbsm_order'] ?? [];
      List<BBOrderHistory> list = [];
      for (var i in data) {
        list.add(BBOrderHistory.fromJson(i));
      }
      return list;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<BBOrderHistoryDetail> getBbOrderHistoryDetails(
      BBOrderHistory orderHistory) async {
    final url =
        ApiUrl.getOrderHistoryDetail.replaceAll("{id}", orderHistory.oid);
    try {
      final res = await _dioClient.get(url);
      var data = res['data'];
      final history = BBOrderHistoryDetail.fromJson(data);
      print(history);
      return history;
    } catch (e) {
      rethrow;
    }
  }
}
