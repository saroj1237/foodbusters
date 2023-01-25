part of 'address_bloc.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState.initial() = InitialState;
  const factory AddressState.loading() = Loading;
  const factory AddressState.loaded(
      {required Position position, String? address}) = Loaded;
  const factory AddressState.addAddressSuccess() = AddAddressSuccess;
  const factory AddressState.addAddressFailure(String error) =
      AddAddressFailure;

  factory AddressState.getAddressSuccess({
    required List<Address> addressList,
  }) = GetAddressSuccess;
  const factory AddressState.getAddressFailure(String error) =
      GetAddressFailure;
}
