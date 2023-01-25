import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/address_settings/domain/entities/address_entity.dart';

abstract class AddressRepository {
  Future<Either<Failure, bool>> addAddress(Address address);
  Future<Either<Failure, List<Address>>> getAddress();
  Future<Either<Failure, bool>> deleteAddress(String adderssId);
}
