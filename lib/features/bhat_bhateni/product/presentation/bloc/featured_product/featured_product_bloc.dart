import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/usecases/featured_item_products_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'featured_product_bloc.freezed.dart';
part 'featured_product_event.dart';
part 'featured_product_state.dart';

class FeaturedProductBloc
    extends Bloc<FeaturedProductEvent, FeaturedProductState> {
  final FeaturedItemProductsUsecase usecase;
  FeaturedProductBloc(this.usecase) : super(const Initial()) {
    on<GetFeaturedProducts>(_onGetFeaturedProducts);
  }
  _onGetFeaturedProducts(
      GetFeaturedProducts event, Emitter<FeaturedProductState> emit) async {
    emit(const FeaturedProductsLoading());
    final failureOrSuccess = await usecase(event.featuredItemId);
    failureOrSuccess.fold((failure) {
      if (failure is NetworkFailure) {
        emit(FeaturedProductsError(
            NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (products) {
      emit(FeaturedProductsLoaded(products));
    });
  }
}
