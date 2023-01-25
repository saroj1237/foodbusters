import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bag/domain/entities/bag_entity.dart';
import 'package:foodbusters/features/bag/domain/usecases/bag_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bag_bloc.freezed.dart';
part 'bag_event.dart';
part 'bag_state.dart';

class BagBloc extends Bloc<BagEvent, BagState> {
  final BagUsecase usecase;
  BagBloc(this.usecase) : super(const BagState.initial()) {
    on<AddItemTobag>(_onAddItemTobag);
    on<GetBagItems>(_onGetBagItems);
    on<RemoveBagItem>(_onRemoveBagItem);
    on<RemoveFood>(_onRemoveFood);
    on<ChangeQuantity>(_onChangeQuantity);
    on<ChangeActiveBagItem>(_onChangeActiveBagItem);
  }

  void _onAddItemTobag(AddItemTobag event, Emitter<BagState> emit) async {
    emit(const AddTobagLoading());
    final failureOrSuccess =
        await usecase.addItemTobag(event.request, event.foodId);
    failureOrSuccess.fold(
      (failure) {
        emit(const AddTobagFailure());
      },
      (success) {
        emit(const AddTobagSuccess());
      },
    );
  }

  void _onGetBagItems(GetBagItems event, Emitter<BagState> emit) async {
    if (event.restaurantId == null) {
      emit(const BagLoading());
    }
    final failureOrList = await usecase.call(NoParams());
    failureOrList.fold((failure) {
      emit(const GetBagItemsFailure());
    }, (list) {
      if (list.isEmpty) {
        emit(GetBagItemsSuccess(list, null));
      } else {
        if (event.restaurantId == null) {
          emit(GetBagItemsSuccess(list, list[0]));
        } else {
          final BagItem activeItem = list
              .firstWhere((item) => item.restaurantId == event.restaurantId);
          emit(GetBagItemsSuccess(list, activeItem));
        }
      }
    });
  }

  void _onRemoveBagItem(RemoveBagItem event, Emitter<BagState> emit) async {
    final state = this.state;
    if (state is GetBagItemsSuccess) {
      final currentState = state;
      final failureOrSuccess = await usecase.removeBagItem(event.restaurantId);
      failureOrSuccess.fold((l) {
        emit(currentState);
      }, (r) {
        add(const GetBagItems());
      });
    } else {
      emit(state);
    }
  }

  void _onRemoveFood(RemoveFood event, Emitter<BagState> emit) async {
    final failureOrSuccess = await usecase.removeFood(event.foodId);
    failureOrSuccess.fold(
      (failure) {
        emit(state);
      },
      (success) {
        add(GetBagItems(restaurantId: event.restaurantId));
      },
    );
  }

  void _onChangeQuantity(ChangeQuantity event, Emitter<BagState> emit) async {
    final state = this.state;
    if (state is GetBagItemsSuccess) {
      final failureOrSuccess = await usecase.addItemTobag(
          AddTobagRequest(quantity: event.quantity), event.foodId);
      failureOrSuccess.fold((l) {
        emit(state);
      }, (r) {
        add(GetBagItems(restaurantId: event.restaurantId));
      });
    } else {
      emit(state);
    }
  }

  void _onChangeActiveBagItem(
      ChangeActiveBagItem event, Emitter<BagState> emit) {
    final state = this.state;
    if (state is GetBagItemsSuccess) {
      emit(state.copyWith(activeBagItem: event.bagItem));
    }
  }
}
