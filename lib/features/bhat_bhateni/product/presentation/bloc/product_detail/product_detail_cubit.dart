import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/usecases/product_detail_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_cubit.freezed.dart';
part 'product_detail_state.dart';

class ProductDetailCubit extends Cubit<ProductDetailState> {
  final ProductDetailUsecase productDetailUsecase;
  Map<String, Product> fetchedProductDetail = {};
  ProductDetailCubit({required this.productDetailUsecase})
      : super(const ProductDetailState.initial());

  void getProductDetail(String productId) async {
    if (fetchedProductDetail.containsKey(productId)) {
      final detail = fetchedProductDetail[productId] as Product;

      emit(ProductDetailLoaded(detail));
    } else {
      emit(const ProductDetailLoading());
      final failureOrSuccess = await productDetailUsecase(productId);
      failureOrSuccess.fold((failure) {
        if (failure is NetworkFailure) {
          emit(ProductDetailFailure(
              NetworkExceptions.getErrorMessage(failure.error)));
        }
      }, (productDetail) {
        fetchedProductDetail[productId] = productDetail;
        emit(ProductDetailLoaded(productDetail));
      });
    }
  }
}
