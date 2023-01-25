import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/usecases/bb_deals_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bb_deals_event.dart';
part 'bb_deals_state.dart';
part 'bb_deals_bloc.freezed.dart';

class BbDealsBloc extends Bloc<BbDealsEvent, BbDealsState> {
  final BBDealsUsecase usecase;

  BbDealsBloc(this.usecase) : super(const BbDealsState.initial()) {
    on<GetBBDeals>((event, emit) async {
      emit(const GetBBDealsLoading());
      final failureOrDeals = await usecase.call(NoParams());
      failureOrDeals.fold((failure) => emit(const GetBBDealsFailure()),
          (deals) => emit(GetBBDealsSuccess(product: deals)));
    });
  }
}
