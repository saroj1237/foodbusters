import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/features/address_settings/domain/entities/address_entity.dart';

abstract class AddressRemoteDatasource {
  Future<bool> addAddress(Address address);
  Future<List<Address>> getAddress();
  Future<bool> deleteAddress(String addressId);
}

class AddressRemoteDatasourceImpl implements AddressRemoteDatasource {
  final DioClient _dioClient;
  AddressRemoteDatasourceImpl(DioClient dioClient) : _dioClient = dioClient;
  @override
  Future<bool> addAddress(Address address) async {
    try {
      await _dioClient.post(
        ApiUrl.address,
        data: {
          'name': address.name,
          'location': {
            "lat": address.location.latitude,
            "lng": address.location.longitude,
          }
        },
        // options: Options(
        //     contentType: "application/json", headers: {'authToken': authToken}),
      );
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Address>> getAddress() async {
    try {
      final response = await _dioClient.get(
        ApiUrl.address,
        // options: Options(headers: {"authToken": authToken}),
      );

      final json = response;
      final Iterable l = json['data'];
      List<Address> addressList = [];
      for (var i in l) {
        addressList.add(Address.fromJson(i));
      }
      // debugPrint(addressList);
      return addressList;
    } catch (e) {
      // debugPrint(e);
      rethrow;
    }
  }

  @override
  Future<bool> deleteAddress(String addressId) async {
    try {
      String url =
          ApiUrl.baseUrl + ApiUrl.deleteAddress.replaceAll("{id}", addressId);
      await _dioClient.delete(
        url,
        // options: Options(headers: {"authToken": authToken}),
      );

      return true;
    } catch (e) {
      rethrow;
    }
  }
}
