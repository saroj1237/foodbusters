part of 'address_bloc.dart';

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.initial() = Initial;
  const factory AddressEvent.addAddress({
    required Address address,
  }) = AddAddress;

  const factory AddressEvent.getAddress() = GetAddress;
  const factory AddressEvent.deleteAddress(String addressId) = DeleteAddress;

}
