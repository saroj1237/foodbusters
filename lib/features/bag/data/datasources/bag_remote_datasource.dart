import 'package:flutter/material.dart';
import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/features/bag/domain/entities/bag_entity.dart';
import 'package:foodbusters/features/common/data/mapper.dart';

abstract class BagRemoteDataSource {
  Future<List<BagItem>> getBagItems();
  Future<String> addItemTobag(AddTobagRequest request, String foodId);
  Future<bool> removeBagItem(String restaurantId);
  Future<bool> removeFood(String foodId);
}

class BagRemoteDataSourceImpl implements BagRemoteDataSource {
  final DioClient _dioClient;
  BagRemoteDataSourceImpl(DioClient dioClient) : _dioClient = dioClient;
  @override
  Future<String> addItemTobag(AddTobagRequest request, String foodId) async {
    try {
      final url = ApiUrl.addItemTobag.replaceAll("{id}", foodId);
      await _dioClient.post(
        url,
        data: request.toJson(),
      );
      return "success";
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<BagItem>> getBagItems() async {
    try {
      final response = await _dioClient.get(
        ApiUrl.getBagItems,
      );
      final json = response;
      List<BagItem> itemList = [];
      Iterable l = json['data'];
      for (var i in l) {
        itemList.add(
          BagItem.fromJson(i).toDomain(),
        );
      }
      debugPrint(itemList.toString());
      return itemList;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> removeBagItem(String restaurantId) async {
    try {
      final url = ApiUrl.removeBagItem.replaceAll("{id}", restaurantId);
      await _dioClient.post(url);
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> removeFood(String foodId) async {
    try {
      final url = ApiUrl.removeFood.replaceAll("{foodId}", foodId);
      await _dioClient.delete(url);
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
