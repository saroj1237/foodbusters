import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/helpers/location_helper.dart';
import 'package:foodbusters/features/address_settings/domain/entities/address_entity.dart';
import 'package:foodbusters/features/address_settings/domain/usecases/address_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'address_bloc.freezed.dart';
part 'address_event.dart';
part 'address_state.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final AddressUsecase usecase;
  final LocationHelper locationHelper;
  AddressBloc({required this.usecase, required this.locationHelper})
      : super(const AddressState.initial()) {
    on<Initial>((event, emit) async {
      await locationHelper.determinePosition();
    });
    on<GetAddress>(_onGetAddress);
    on<AddAddress>(_onAddAddress);
    on<DeleteAddress>(_onDeleteAddress);
  }
  void _onGetAddress(GetAddress event, Emitter<AddressState> emit) async {
    emit(const Loading());
    final failureOrList = await usecase.getAddress();
    failureOrList.fold((failure) {
      if (failure is NetworkFailure) {
        emit(GetAddressFailure(
            NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (addressList) {
      if (addressList.isEmpty) {
        emit(GetAddressSuccess(addressList: addressList));
      } else {
        addressList[0].copyWith(isSelected: true);

        emit(GetAddressSuccess(addressList: addressList));
      }
    });
  }

  // void _onSetAddress(SetAddress event, Emitter<AddressState> emit) async {
  //   emit(const Loading());
  //   final String? address = await LocationHelper.getAddressFromLatLong(Position(
  //     longitude: event.position.latitude, // 15.8343731, //
  //     latitude: event.position.longitude, // 74.5165815, //
  //     timestamp: event.position.timestamp,
  //     accuracy: event.position.accuracy,
  //     altitude: event.position.altitude,
  //     heading: event.position.heading,
  //     speed: event.position.speed,
  //     speedAccuracy: event.position.speedAccuracy,
  //   ));
  //   emit(
  //     Loaded(position: event.position, address: address),
  //   );
  // }

  void _onAddAddress(AddAddress event, Emitter<AddressState> emit) async {
    emit(const Loading());
    final failureOrSuccess = await usecase(event.address);
    failureOrSuccess.fold((failure) {
      if (failure is NetworkFailure) {
        emit(AddAddressFailure(
            NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (success) {
      emit(const AddAddressSuccess());

      add(const GetAddress());
    });
  }

  void _onDeleteAddress(DeleteAddress event, Emitter<AddressState> emit) async {
    final state = this.state;
    if (state is GetAddressSuccess) {
      // final loadedState = state;
      final failureOrSuccess = await usecase.deleteAddress(event.addressId);
      failureOrSuccess.fold((failure) {
        emit(state);
      }, (success) {
        // List<Address> updatedAddressList = [];
        // for (int i = 0; i < loadedState.addressList.length; i++) {
        //   if (event.addressId != loadedState.addressList[i]) {
        //     updatedAddressList.add(loadedState.addressList[i]);
        //   }
        // }
        // emit(loadedState.copyWith(addressList: updatedAddressList));
        add(const GetAddress());
      });
    }
  }
}
