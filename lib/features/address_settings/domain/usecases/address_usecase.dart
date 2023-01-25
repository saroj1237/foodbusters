import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/address_settings/domain/entities/address_entity.dart';
import 'package:foodbusters/features/address_settings/domain/repositories/address_repository.dart';

class AddressUsecase implements UseCase<bool, Address> {
  final AddressRepository repository;
  AddressUsecase(this.repository);
  @override
  Future<Either<Failure, bool>> call(Address params) async {
    return await repository.addAddress(params);
  }

  Future<Either<Failure, List<Address>>> getAddress() async {
    return await repository.getAddress();
  }

  Future<Either<Failure, bool>> deleteAddress(String addressId) async {
    return await repository.deleteAddress(addressId);
  }
}
