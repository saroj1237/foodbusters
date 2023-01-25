part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.startSearch(String query) = StartSearch;
  const factory SearchEvent.searchNextPage() = SearchNxtPage;
  const factory SearchEvent.resetState() = ResetState;
}
