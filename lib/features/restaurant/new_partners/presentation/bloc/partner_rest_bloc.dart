import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/usecases/usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../restaurant/domain/entities/entity.dart';

part 'partner_rest_bloc.freezed.dart';
part 'partner_rest_event.dart';
part 'partner_rest_state.dart';

class PartnerRestBloc extends Bloc<PartnerRestEvent, PartnerRestState> {
  final PartnerRestaurantUsecase usecase;
  PartnerRestBloc(this.usecase) : super(const PartnerRestState.initial()) {
    on<GetPartnerRestaurantList>(_onGetPartnerRestaurantList);
  }
  _onGetPartnerRestaurantList(
      GetPartnerRestaurantList event, Emitter<PartnerRestState> emit) async {
    final failureOrList = await usecase.call(NoParams());
    failureOrList.fold(
      (failure) {
        if (failure is NetworkFailure) {
          emit(Error(error: NetworkExceptions.getErrorMessage(failure.error)));
        }
      },
      (restList) {
        emit(Loaded(partnerRestaurants: restList));
      },
    );
  }
}
