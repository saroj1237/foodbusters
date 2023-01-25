import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/entities/bb_order_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/usecases/bb_order_history_detail_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/usecases/bb_order_history_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bborder_history_bloc.freezed.dart';
part 'bborder_history_event.dart';
part 'bborder_history_state.dart';

class BborderHistoryBloc
    extends Bloc<BborderHistoryEvent, BborderHistoryState> {
  final BbOrderHistoryUsecase listUsecase;
  final BbOrderHistoryDetailUsecase detailUsecase;
  BborderHistoryBloc(this.listUsecase, this.detailUsecase)
      : super(const Initial()) {
    on<GetBbOrderHistories>((event, emit) async {
      emit(const BbOrderHistoryLoading());
      final failureOrSuccess = await listUsecase(NoParams());
      failureOrSuccess.fold((failure) {
        if (failure is NetworkFailure) {
          emit(BbOrderHistoryError(
              NetworkExceptions.getErrorMessage(failure.error)));
        }
      }, (histories) {
        emit(BbOrderHistoryLoaded(histories: histories, histroyDetail: null));
      });
    });
    on<GetBbOrderHistoryDetails>((event, emit) async {
      final state = this.state;
      if (state is BbOrderHistoryLoaded) {
        final failureOrSuccess = await detailUsecase(event.orderHistory);
        failureOrSuccess.fold((failuer) {
          emit(state);
        }, (detail) {
          emit(state.copyWith(histroyDetail: detail));
        });
      } else {
        emit(state);
      }
    });
  }
}
