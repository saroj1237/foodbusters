import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/features/banner/model/banner_model.dart';

class BannerRepository {
  final DioClient _dioClient;

  BannerRepository(DioClient dioClient) : _dioClient = dioClient;
  Future<Either<Failure, List<BannerModel>>> getBanners() async {
    try {
      final response = await _dioClient.get(ApiUrl.banners);
      Iterable l = response['data'];
      List<BannerModel> banners = [];
      for (var banner in l) {
        banners.add(BannerModel.fromJson(banner));
      }
      debugPrint(banners.toString());
      return Right(banners);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
