part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required CurrentState state,
    List<Product>? categoryProducts,
    BBProductPagination? paginationData,
    List<Product>? allProucts,
  }) = _ProductState;
}

enum CurrentState { initial, loading, loaded, error }
