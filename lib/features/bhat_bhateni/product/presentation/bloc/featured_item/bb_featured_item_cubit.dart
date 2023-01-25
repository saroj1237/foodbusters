import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/featured_item.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/usecases/bb_featured_item_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bb_featured_item_cubit.freezed.dart';
part 'bb_featured_item_state.dart';

class BBFeaturedItemCubit extends Cubit<BBFeaturedItemState> {
  final BBFeaturedItemUsecase featuredItemUsecase;

  BBFeaturedItemCubit(this.featuredItemUsecase)
      : super(const BBFeaturedItemState.initial());
  void getBBSMFeaturedItem() async {
    emit(const BBFeaturedItemLoading());
    final failuerOrSuccesss = await featuredItemUsecase(NoParams());
    failuerOrSuccesss.fold((failuer) {
      if (failuer is NetworkFailure) {
        emit(BBFeaturedItemError(
            NetworkExceptions.getErrorMessage(failuer.error)));
      }
    }, (featuredItems) {
      emit(BBFeaturedItemLoaded(featuredItems));
    });
  }
}
