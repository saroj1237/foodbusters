import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/search/domain/usecases/search_usecase.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/entities/entiry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class BBSearchBloc extends Bloc<BBSearchEvent, BBSearchState> {
  final BBSearchUsecase searchUsecase;
  List<Product> products = [];
  int pageIndex = 1;
  int totalPages = 0;
  String queryString = '';

  BBSearchBloc({
    required this.searchUsecase,
  }) : super(const SearchInitial()) {
    on<SearchProducts>(_onSearchProducts);
    on<LoadMoreProducts>(_onLoadMoreProducts);
    on<BBSearchResetState>(_onResetState);
  }
  _onSearchProducts(SearchProducts event, Emitter<BBSearchState> emit) async {
    pageIndex = 1;
    queryString = event.query;
    products = [];
    String urlParams = "$queryString&page=$pageIndex";
    // String urlParams = queryString;
    emit(const SearchLoading());
    final failureOrSuccess = await searchUsecase(urlParams);
    failureOrSuccess.fold((failure) {
      if (failure is NetworkFailure) {
        emit(SearchError(NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (result) {
      pageIndex += 1;
      totalPages = result.meta.pages ?? 0;
      products.addAll(result.products);
      emit(SearchLoaded(products: products, loadNextPage: true));
    });
  }

  _onLoadMoreProducts(
      LoadMoreProducts event, Emitter<BBSearchState> emit) async {
    if (pageIndex <= totalPages) {
      // String urlParams = queryString;
      String urlParams = "$queryString&page=$pageIndex";
      final failureOrSuccess = await searchUsecase(urlParams);
      failureOrSuccess.fold((failure) {
        emit(SearchLoaded(products: products, loadNextPage: false));
      }, (result) {
        pageIndex += 1;
        products.addAll(result.products);
        emit(SearchLoaded(products: products, loadNextPage: true));
      });
    }
  }

  _onResetState(BBSearchResetState event, Emitter<BBSearchState> emit) async {
    emit(const SearchInitial());
  }
}
