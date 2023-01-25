import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/payment/domain/entities/payment_entity.dart';

abstract class PaymentRemoteDatasource {
  Future<bool> verifyPayment(PaymentReq data);
}

class PaymentRemoteDatasourceImpl implements PaymentRemoteDatasource {
  final DioClient _dioClient;
  PaymentRemoteDatasourceImpl(DioClient dioClient) : _dioClient = dioClient;
  @override
  Future<bool> verifyPayment(PaymentReq paymentReq) async {
    try {
      await _dioClient.post(
        ApiUrl.verifyPayment,
        data: {
          'paymentOption': paymentReq.paymentOption,
          "order_id": paymentReq.oid,
          'reference_id': paymentReq.referenceId
        },
      );
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
