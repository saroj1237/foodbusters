import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/error/network_exceptions.dart';
import '../../../../../search/domain/usecases/search_usecase.dart';
import '../../../domain/entities/entity.dart';

part 'menu_search_cubit.freezed.dart';
part 'menu_search_state.dart';

class MenuSearchCubit extends Cubit<MenuSearchState> {
  final RestaurantSearchUsecase searchUsecase;

  MenuSearchCubit(this.searchUsecase) : super(const MenuSearchState.initial());
  searchMenu(String query) async {
    emit(const MenuSearchLoading());
    final failureOrSuccess = await searchUsecase(query);
    failureOrSuccess.fold((failure) {
      if (failure is NetworkFailure) {
        emit(MenuSearchFailure(
            NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (result) {
      emit(MenuSearchLoaded(result));
    });
  }

  void resetMenuSearchCubitState() {
    emit(const Initial());
  }
}
