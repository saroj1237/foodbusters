import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/address_settings/data/datasources/address_remote_datasource.dart';
import 'package:foodbusters/features/address_settings/domain/entities/address_entity.dart';
import 'package:foodbusters/features/address_settings/domain/repositories/address_repository.dart';

class AddressRepositoryImpl implements AddressRepository {
  final AddressRemoteDatasource remoteDatasource;
  AddressRepositoryImpl(this.remoteDatasource);
  @override
  Future<Either<Failure, bool>> addAddress(Address address) async {
    try {
      final success = await remoteDatasource.addAddress(address);
      return Right(success);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, List<Address>>> getAddress() async {
    try {
      final addressList = await remoteDatasource.getAddress();
      return Right(addressList);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteAddress(String adderssId) async {
    try {
      final deleteSuccess = await remoteDatasource.deleteAddress(adderssId);
      return Right(deleteSuccess);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
