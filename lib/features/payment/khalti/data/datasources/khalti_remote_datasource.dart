import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/features/payment/khalti/domain/entities/khalti_entity.dart';

abstract class KhaltiRemoteDatasource {
  Future<bool> confirmWithBackend(KhaltiRequestModel requestModel);
}

class KhaltiRemoteDatasourceImpl implements KhaltiRemoteDatasource {
  final DioClient _dioClient;
  KhaltiRemoteDatasourceImpl(DioClient dioClient) : _dioClient = dioClient;

  @override
  Future<bool> confirmWithBackend(KhaltiRequestModel requestModel) async {
    try {
      await _dioClient.post(ApiUrl.verifyKhaltiTrnx,
          data: requestModel.toJson());
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
