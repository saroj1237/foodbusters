import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/network_services/network_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_cubit.freezed.dart';
part 'connectivity_state.dart';

class ConnectivityCubit extends Cubit<ConnectivityState> {
  final NetworkInfo networkInfo;
  ConnectivityCubit({
    required this.networkInfo,
  }) : super(const ConnectivityState.initial());

  Future<void> checkConnection() async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      emit(const Connected());
    } else {
      emit(const Disconnected());
    }
  }
}
