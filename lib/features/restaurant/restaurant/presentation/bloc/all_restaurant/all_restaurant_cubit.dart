import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/usecases/all_restaurant_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_restaurant_cubit.freezed.dart';
part 'all_restaurant_state.dart';

class AllRestaurantCubit extends Cubit<AllRestaurantState> {
  final AllRestaurantUsecase usecase;

  AllRestaurantCubit({required this.usecase})
      : super(const AllRestaurantState.initial());

  void getAllRestaurants() async {
    emit(const Loading());
    final failureOrList = await usecase(NoParams());
    failureOrList.fold((failure) {
      if (failure is NetworkFailure) {
        emit(Error(NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (list) {
      emit(Loaded(list));
    });
  }
}
