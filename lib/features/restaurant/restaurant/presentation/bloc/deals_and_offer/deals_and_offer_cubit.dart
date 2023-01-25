import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/entities/entiry.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/usecases/deals_and_offer_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deals_and_offer_cubit.freezed.dart';
part 'deals_and_offer_state.dart';

class DealsAndOfferCubit extends Cubit<DealsAndOfferState> {
  final DealsAndOfferUsecase usecase;
  List<Food> loadedData = [];
  DealsAndOfferCubit(this.usecase) : super(const Initial());
  getOfferAndDealsFoodsList() async {
    if (loadedData.isNotEmpty) {
      emit(OfferLoaded(loadedData));
    } else {
      emit(const OfferLoading());
      final failureOrList = await usecase(NoParams());
      failureOrList.fold((failure) {
        if (failure is NetworkFailure) {
          emit(OfferFailure(NetworkExceptions.getErrorMessage(failure.error)));
        }
      }, (list) {
        if (list.isNotEmpty) {
          loadedData.addAll(list);
        }
        emit(OfferLoaded(list));
      });
    }
  }

  getRestaurantDeals() async {
    emit(const OfferLoading());
    final failureOrList = await usecase(NoParams());
    failureOrList.fold((failure) {
      if (failure is NetworkFailure) {
        emit(OfferFailure(NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (list) {
      emit(OfferLoaded(list));
    });
  }
}
