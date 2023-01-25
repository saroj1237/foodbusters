import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/usecases/all_product_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/usecases/category_product_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final CategoryProductsUsecase categoryProductsUsecase;
  final AllProductsUsecase allProductsUsecase;
  Map<String, List<Product>> loadedProducts = {};

  List<Product> finalProduct = [];
  ProductBloc(
      {required this.categoryProductsUsecase, required this.allProductsUsecase})
      : super(const ProductState(state: CurrentState.initial)) {
    on<GetSubCategoryProducts>(_onGetSubCategoryProducts);
    on<GetSubCategoryNextProducts>(_onGetSubCategoryNextProducts);
    on<GetAllProducts>(_onGetAllProducts);
    on<ResetProductState>(_onResetProductState);
  }
  void _onGetSubCategoryProducts(
      GetSubCategoryProducts event, Emitter<ProductState> emit) async {
    // checkt the map(loadedProducts) contains the key for the subcategoryId
    if (loadedProducts.containsKey(event.subCategory.id)) {
      // emit the products fetching from the map(loadedProducts)
      // of the respective subCategory
      var products = loadedProducts[event.subCategory.id];

      emit(state.copyWith(
          state: CurrentState.loaded, categoryProducts: products));
    } else {
      // load from the api
      emit(state.copyWith(state: CurrentState.loading));
      final failureOrProudcts = await categoryProductsUsecase(
        CategoryPaginationRequest(
            subCategories: event.subCategory, pageIndex: event.pageIndex),
      );
      failureOrProudcts.fold(
        // if something went wrong
        (failure) {
          emit(state.copyWith(state: CurrentState.error));
        },
        // if sub category products are fetched
        (products) {
          // if the products of the subcategory is empty
          // dont save the key to the map(loadedProducts)
          if (products.categories.isEmpty) {
            emit(state
                .copyWith(state: CurrentState.loaded, categoryProducts: []));
          } else {
            finalProduct = products.categories;
            // if the products is not empty save the products to the map so that another
            // time there is no need to load from api
            loadedProducts[event.subCategory.id] = products.categories;
            emit(state.copyWith(
                state: CurrentState.loaded,
                paginationData: products,
                categoryProducts: products.categories));
          }
        },
      );
    }
  }

  void _onGetSubCategoryNextProducts(
      GetSubCategoryNextProducts event, Emitter<ProductState> emit) async {
    // load from the api
    final failureOrProudcts = await categoryProductsUsecase(
      CategoryPaginationRequest(
          subCategories: event.subCategory, pageIndex: event.pageIndex),
    );
    failureOrProudcts.fold(
      // if something went wrong
      (failure) {
        // emit(state.copyWith(state: CurrentState.error));
      },
      // if sub category products are fetched
      (products) {
        // if the products of the subcategory is empty
        // dont save the key to the map(loadedProducts)
        if (products.categories.isEmpty) {
          emit(state.copyWith(state: CurrentState.loaded));
        } else {
          // if the products is not empty save the products to the map so that another
          // time there is no need to load from api
          // loadedProducts[event.subCategory.id] = products.categories;

          finalProduct = finalProduct + products.categories;

          emit(state.copyWith(
              state: CurrentState.loaded, categoryProducts: finalProduct));
        }
      },
    );
  }

  void _onGetAllProducts(
      GetAllProducts event, Emitter<ProductState> emit) async {
    emit(state.copyWith(state: CurrentState.loading));
    final failureOrProudcts = await allProductsUsecase(NoParams());
    failureOrProudcts.fold((failure) {
      emit(state.copyWith(state: CurrentState.error));
    }, (products) {
      emit(state.copyWith(state: CurrentState.loaded, allProucts: products));
    });
  }

  _onResetProductState(ResetProductState event, Emitter<ProductState> emit) {
    emit(state.copyWith(
        state: CurrentState.initial, categoryProducts: null, allProucts: null));
  }
}
