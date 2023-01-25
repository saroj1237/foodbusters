import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/location_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'current_position_cubit.freezed.dart';
part 'current_position_state.dart';

class CurrentPositionCubit extends Cubit<CurrentPositionState> {
  final LocationHelper locationHelper;
  CurrentPositionCubit(this.locationHelper)
      : super(const CurrentPositionState.initial());
  void getCurrentPosition() async {
    try {
      final Position currentPosition = await locationHelper.determinePosition();
      final String? currentAddress =
          await locationHelper.getAddressFromLatLng(currentPosition);
      emit(CurrentPositionLoaded(
          currentPosition,
          currentAddress ??
              "${currentPosition.latitude}°N, ${currentPosition.longitude}°E"));
    } catch (e) {
      emit(const CurrentPositionNotLoaded());
    }
  }
}
