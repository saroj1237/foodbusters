import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/featured_item.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/usecases/featured_item_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'featured_item_bloc.freezed.dart';
part 'featured_item_event.dart';
part 'featured_item_state.dart';

class FeaturedItemBloc extends Bloc<FeaturedItemEvent, FeaturedItemState> {
  final FeaturedItemUsecase usecase;

  FeaturedItemBloc(this.usecase) : super(const Initial()) {
    on<GetFeaturedItems>((event, emit) async {
      emit(const FeaturedItemsLoading());
      final failureOrList = await usecase(NoParams());
      failureOrList.fold((failure) {
        if (failure is NetworkFailure) {
          emit(FeaturedItemsFailure(
              NetworkExceptions.getErrorMessage(failure.error)));
        }
      }, (featuredItems) {
        // print(featuredItems);
        // featuredItems.sort((a, b) => b.sortNumber.compareTo(a.sortNumber));
        // print(featuredItems);
        emit(FeaturedItemsLoaded(featuredItems));
      });
    });
  }
}
