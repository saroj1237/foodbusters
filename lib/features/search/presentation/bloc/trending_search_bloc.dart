import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/search/domain/entities/search_entity.dart';
import 'package:foodbusters/features/search/domain/usecases/search_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_search_event.dart';
part 'trending_search_state.dart';
part 'trending_search_bloc.freezed.dart';

class TrendingSearchBloc
    extends Bloc<TrendingSearchEvent, TrendingSearchState> {
  final TrendingSearchUsecase trendingSearchUsecase;
  TrendingSearchBloc({required this.trendingSearchUsecase})
      : super(const TrendingSearchInitial()) {
    on<GetTrendingSearches>(_getTrendingSearches);
  }
  _getTrendingSearches(
      GetTrendingSearches event, Emitter<TrendingSearchState> emit) async {
    emit(const TrendingLoading());
    final failureOrSuccess = await trendingSearchUsecase(NoParams());
    failureOrSuccess.fold((failure) {
      if (failure is NetworkFailure) {
        emit(TrendingSearchState.trendingError(
            NetworkExceptions.getErrorMessage(failure.error)));
      }

      emit(TrendingSearchState.trendingError(failure.toString()));
    }, (result) {
      emit(TrendingLoaded(result));
    });
  }
}
