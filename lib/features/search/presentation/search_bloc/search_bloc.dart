import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/entities/entiry.dart';
import 'package:foodbusters/features/search/domain/entities/search_entity.dart';
import 'package:foodbusters/features/search/domain/usecases/search_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchUsecase searchUsecase;
  List<Food> foods = [];
  List<Food> resFoodFinal = [];
  List<Restaurant> restaurants = [];
  String queryString = '';
  int pageIndex = 1;
  int totalPages = 0;
  bool toggler = true;

  SearchBloc({required this.searchUsecase}) : super(const SearchInitial()) {
    on<StartSearch>(_onStartSearch);
    // on<StartReSearch>(_onStartResSearch);
    on<SearchNxtPage>(_searchNextPage);
    // on<ResSearchNxtPage>(_onStartResSearchNxtPage);
    on<ResetState>(_onResetState);
  }
  _onStartSearch(StartSearch event, Emitter<SearchState> emit) async {
    pageIndex = 1;
    queryString = event.query;
    foods = [];
    restaurants = [];
    String urlParams = "$queryString&page=$pageIndex";
    emit(const SearchLoading());
    final failureOrSuccess = await searchUsecase(urlParams);
    failureOrSuccess.fold((failure) {
      if (failure is NetworkFailure) {
        emit(SearchError(NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (result) {
      foods.addAll(result.foods);
      restaurants.addAll(result.restaurants);
      totalPages = result.meta.pages ?? 0;
      pageIndex += 1;
      toggler = !toggler;
      emit(SearchLoaded(
        restaurants: restaurants,
        foods: foods,
        searchNextPage: true,
        toggler: toggler,
      ));
    });
  }

  _searchNextPage(SearchNxtPage event, Emitter<SearchState> emit) async {
    if (pageIndex <= totalPages) {
      final urlParams = "$queryString&page=$pageIndex";
      final failureOrSuccess = await searchUsecase(urlParams);
      failureOrSuccess.fold((failure) {
        if (failure is NetworkFailure) {
          toggler = !toggler;
          emit(SearchLoaded(
            restaurants: restaurants,
            foods: foods,
            searchNextPage: false,
            toggler: toggler,
          ));
        }
      }, (result) {
        foods.addAll(result.foods);
        restaurants.addAll(result.restaurants);
        pageIndex += 1;
        toggler = !toggler;
        emit(SearchLoaded(
            restaurants: restaurants,
            foods: foods,
            searchNextPage: true,
            toggler: toggler));
      });
    } else {
      toggler = !toggler;
      emit(SearchLoaded(
          restaurants: restaurants,
          foods: foods,
          searchNextPage: false,
          toggler: toggler));
    }
  }

  // _onStartResSearch(StartReSearch event, Emitter<SearchState> emit) async {
  //   add(const ResetState());
  //   emit(const SearchLoading());
  //   final failureOrSuccess = await resSearchUsecase('');
  //   failureOrSuccess.fold((failure) {
  //     if (failure is NetworkFailure) {
  //       emit(SearchError(NetworkExceptions.getErrorMessage(failure.error)));
  //     }
  //   }, (result) {
  //     resFoodFinal = resFoodFinal + result;
  //     emit(RestaurantSearchLoaded(resFoodFinal));
  //   });
  // }

  // _onStartResSearchNxtPage(
  //     ResSearchNxtPage event, Emitter<SearchState> emit) async {
  //   final failureOrSuccess = await resSearchUsecase(event.query);
  //   failureOrSuccess.fold((failure) {
  //     if (failure is NetworkFailure) {
  //       emit(SearchError(NetworkExceptions.getErrorMessage(failure.error)));
  //     }
  //   }, (result) {
  //     if (result.isNotEmpty) {
  //       resFoodFinal = resFoodFinal + result;
  //       emit(RestaurantSearchLoaded(resFoodFinal));
  //     } else {
  //       emit(RestaurantSearchReachedMax(true, resFoodFinal));
  //     }
  //   });
  // }

  _onResetState(ResetState event, Emitter<SearchState> emit) async {
    emit(const SearchInitial());
  }
}
