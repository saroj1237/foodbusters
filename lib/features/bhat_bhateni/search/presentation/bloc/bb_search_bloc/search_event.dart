part of 'search_bloc.dart';

@freezed
class BBSearchEvent with _$BBSearchEvent {
  const factory BBSearchEvent.searchProducts(String query) = SearchProducts;
  const factory BBSearchEvent.loadMoreProducts() = LoadMoreProducts;
  const factory BBSearchEvent.resetState() = BBSearchResetState;
}
