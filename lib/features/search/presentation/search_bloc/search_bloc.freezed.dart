// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) startSearch,
    required TResult Function() searchNextPage,
    required TResult Function() resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? startSearch,
    TResult? Function()? searchNextPage,
    TResult? Function()? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? startSearch,
    TResult Function()? searchNextPage,
    TResult Function()? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartSearch value) startSearch,
    required TResult Function(SearchNxtPage value) searchNextPage,
    required TResult Function(ResetState value) resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartSearch value)? startSearch,
    TResult? Function(SearchNxtPage value)? searchNextPage,
    TResult? Function(ResetState value)? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartSearch value)? startSearch,
    TResult Function(SearchNxtPage value)? searchNextPage,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartSearchCopyWith<$Res> {
  factory _$$StartSearchCopyWith(
          _$StartSearch value, $Res Function(_$StartSearch) then) =
      __$$StartSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$StartSearchCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$StartSearch>
    implements _$$StartSearchCopyWith<$Res> {
  __$$StartSearchCopyWithImpl(
      _$StartSearch _value, $Res Function(_$StartSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$StartSearch(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartSearch implements StartSearch {
  const _$StartSearch(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.startSearch(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartSearch &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartSearchCopyWith<_$StartSearch> get copyWith =>
      __$$StartSearchCopyWithImpl<_$StartSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) startSearch,
    required TResult Function() searchNextPage,
    required TResult Function() resetState,
  }) {
    return startSearch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? startSearch,
    TResult? Function()? searchNextPage,
    TResult? Function()? resetState,
  }) {
    return startSearch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? startSearch,
    TResult Function()? searchNextPage,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (startSearch != null) {
      return startSearch(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartSearch value) startSearch,
    required TResult Function(SearchNxtPage value) searchNextPage,
    required TResult Function(ResetState value) resetState,
  }) {
    return startSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartSearch value)? startSearch,
    TResult? Function(SearchNxtPage value)? searchNextPage,
    TResult? Function(ResetState value)? resetState,
  }) {
    return startSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartSearch value)? startSearch,
    TResult Function(SearchNxtPage value)? searchNextPage,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (startSearch != null) {
      return startSearch(this);
    }
    return orElse();
  }
}

abstract class StartSearch implements SearchEvent {
  const factory StartSearch(final String query) = _$StartSearch;

  String get query;
  @JsonKey(ignore: true)
  _$$StartSearchCopyWith<_$StartSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchNxtPageCopyWith<$Res> {
  factory _$$SearchNxtPageCopyWith(
          _$SearchNxtPage value, $Res Function(_$SearchNxtPage) then) =
      __$$SearchNxtPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchNxtPageCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchNxtPage>
    implements _$$SearchNxtPageCopyWith<$Res> {
  __$$SearchNxtPageCopyWithImpl(
      _$SearchNxtPage _value, $Res Function(_$SearchNxtPage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchNxtPage implements SearchNxtPage {
  const _$SearchNxtPage();

  @override
  String toString() {
    return 'SearchEvent.searchNextPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchNxtPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) startSearch,
    required TResult Function() searchNextPage,
    required TResult Function() resetState,
  }) {
    return searchNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? startSearch,
    TResult? Function()? searchNextPage,
    TResult? Function()? resetState,
  }) {
    return searchNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? startSearch,
    TResult Function()? searchNextPage,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (searchNextPage != null) {
      return searchNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartSearch value) startSearch,
    required TResult Function(SearchNxtPage value) searchNextPage,
    required TResult Function(ResetState value) resetState,
  }) {
    return searchNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartSearch value)? startSearch,
    TResult? Function(SearchNxtPage value)? searchNextPage,
    TResult? Function(ResetState value)? resetState,
  }) {
    return searchNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartSearch value)? startSearch,
    TResult Function(SearchNxtPage value)? searchNextPage,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (searchNextPage != null) {
      return searchNextPage(this);
    }
    return orElse();
  }
}

abstract class SearchNxtPage implements SearchEvent {
  const factory SearchNxtPage() = _$SearchNxtPage;
}

/// @nodoc
abstract class _$$ResetStateCopyWith<$Res> {
  factory _$$ResetStateCopyWith(
          _$ResetState value, $Res Function(_$ResetState) then) =
      __$$ResetStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStateCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ResetState>
    implements _$$ResetStateCopyWith<$Res> {
  __$$ResetStateCopyWithImpl(
      _$ResetState _value, $Res Function(_$ResetState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetState implements ResetState {
  const _$ResetState();

  @override
  String toString() {
    return 'SearchEvent.resetState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) startSearch,
    required TResult Function() searchNextPage,
    required TResult Function() resetState,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? startSearch,
    TResult? Function()? searchNextPage,
    TResult? Function()? resetState,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? startSearch,
    TResult Function()? searchNextPage,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartSearch value) startSearch,
    required TResult Function(SearchNxtPage value) searchNextPage,
    required TResult Function(ResetState value) resetState,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartSearch value)? startSearch,
    TResult? Function(SearchNxtPage value)? searchNextPage,
    TResult? Function(ResetState value)? resetState,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartSearch value)? startSearch,
    TResult Function(SearchNxtPage value)? searchNextPage,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class ResetState implements SearchEvent {
  const factory ResetState() = _$ResetState;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)
        searchLoaded,
    required TResult Function(bool max, SearchRes foods) searchReachedMax,
    required TResult Function(List<Food> foods) restaurantSearchLoaded,
    required TResult Function(bool max, List<Food> foods)
        restaurantSearchReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchInitial,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)?
        searchLoaded,
    TResult? Function(bool max, SearchRes foods)? searchReachedMax,
    TResult? Function(List<Food> foods)? restaurantSearchLoaded,
    TResult? Function(bool max, List<Food> foods)? restaurantSearchReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)?
        searchLoaded,
    TResult Function(bool max, SearchRes foods)? searchReachedMax,
    TResult Function(List<Food> foods)? restaurantSearchLoaded,
    TResult Function(bool max, List<Food> foods)? restaurantSearchReachedMax,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) searchInitial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchError value) searchError,
    required TResult Function(SearchLoaded value) searchLoaded,
    required TResult Function(SearchedReachedMax value) searchReachedMax,
    required TResult Function(RestaurantSearchLoaded value)
        restaurantSearchLoaded,
    required TResult Function(RestaurantSearchReachedMax value)
        restaurantSearchReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? searchInitial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(SearchLoaded value)? searchLoaded,
    TResult? Function(SearchedReachedMax value)? searchReachedMax,
    TResult? Function(RestaurantSearchLoaded value)? restaurantSearchLoaded,
    TResult? Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? searchInitial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchError value)? searchError,
    TResult Function(SearchLoaded value)? searchLoaded,
    TResult Function(SearchedReachedMax value)? searchReachedMax,
    TResult Function(RestaurantSearchLoaded value)? restaurantSearchLoaded,
    TResult Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchInitialCopyWith<$Res> {
  factory _$$SearchInitialCopyWith(
          _$SearchInitial value, $Res Function(_$SearchInitial) then) =
      __$$SearchInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchInitialCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchInitial>
    implements _$$SearchInitialCopyWith<$Res> {
  __$$SearchInitialCopyWithImpl(
      _$SearchInitial _value, $Res Function(_$SearchInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchInitial implements SearchInitial {
  const _$SearchInitial();

  @override
  String toString() {
    return 'SearchState.searchInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)
        searchLoaded,
    required TResult Function(bool max, SearchRes foods) searchReachedMax,
    required TResult Function(List<Food> foods) restaurantSearchLoaded,
    required TResult Function(bool max, List<Food> foods)
        restaurantSearchReachedMax,
  }) {
    return searchInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchInitial,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)?
        searchLoaded,
    TResult? Function(bool max, SearchRes foods)? searchReachedMax,
    TResult? Function(List<Food> foods)? restaurantSearchLoaded,
    TResult? Function(bool max, List<Food> foods)? restaurantSearchReachedMax,
  }) {
    return searchInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)?
        searchLoaded,
    TResult Function(bool max, SearchRes foods)? searchReachedMax,
    TResult Function(List<Food> foods)? restaurantSearchLoaded,
    TResult Function(bool max, List<Food> foods)? restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (searchInitial != null) {
      return searchInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) searchInitial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchError value) searchError,
    required TResult Function(SearchLoaded value) searchLoaded,
    required TResult Function(SearchedReachedMax value) searchReachedMax,
    required TResult Function(RestaurantSearchLoaded value)
        restaurantSearchLoaded,
    required TResult Function(RestaurantSearchReachedMax value)
        restaurantSearchReachedMax,
  }) {
    return searchInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? searchInitial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(SearchLoaded value)? searchLoaded,
    TResult? Function(SearchedReachedMax value)? searchReachedMax,
    TResult? Function(RestaurantSearchLoaded value)? restaurantSearchLoaded,
    TResult? Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
  }) {
    return searchInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? searchInitial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchError value)? searchError,
    TResult Function(SearchLoaded value)? searchLoaded,
    TResult Function(SearchedReachedMax value)? searchReachedMax,
    TResult Function(RestaurantSearchLoaded value)? restaurantSearchLoaded,
    TResult Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (searchInitial != null) {
      return searchInitial(this);
    }
    return orElse();
  }
}

abstract class SearchInitial implements SearchState {
  const factory SearchInitial() = _$SearchInitial;
}

/// @nodoc
abstract class _$$SearchLoadingCopyWith<$Res> {
  factory _$$SearchLoadingCopyWith(
          _$SearchLoading value, $Res Function(_$SearchLoading) then) =
      __$$SearchLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLoadingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoading>
    implements _$$SearchLoadingCopyWith<$Res> {
  __$$SearchLoadingCopyWithImpl(
      _$SearchLoading _value, $Res Function(_$SearchLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchLoading implements SearchLoading {
  const _$SearchLoading();

  @override
  String toString() {
    return 'SearchState.searchLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)
        searchLoaded,
    required TResult Function(bool max, SearchRes foods) searchReachedMax,
    required TResult Function(List<Food> foods) restaurantSearchLoaded,
    required TResult Function(bool max, List<Food> foods)
        restaurantSearchReachedMax,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchInitial,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)?
        searchLoaded,
    TResult? Function(bool max, SearchRes foods)? searchReachedMax,
    TResult? Function(List<Food> foods)? restaurantSearchLoaded,
    TResult? Function(bool max, List<Food> foods)? restaurantSearchReachedMax,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)?
        searchLoaded,
    TResult Function(bool max, SearchRes foods)? searchReachedMax,
    TResult Function(List<Food> foods)? restaurantSearchLoaded,
    TResult Function(bool max, List<Food> foods)? restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) searchInitial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchError value) searchError,
    required TResult Function(SearchLoaded value) searchLoaded,
    required TResult Function(SearchedReachedMax value) searchReachedMax,
    required TResult Function(RestaurantSearchLoaded value)
        restaurantSearchLoaded,
    required TResult Function(RestaurantSearchReachedMax value)
        restaurantSearchReachedMax,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? searchInitial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(SearchLoaded value)? searchLoaded,
    TResult? Function(SearchedReachedMax value)? searchReachedMax,
    TResult? Function(RestaurantSearchLoaded value)? restaurantSearchLoaded,
    TResult? Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? searchInitial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchError value)? searchError,
    TResult Function(SearchLoaded value)? searchLoaded,
    TResult Function(SearchedReachedMax value)? searchReachedMax,
    TResult Function(RestaurantSearchLoaded value)? restaurantSearchLoaded,
    TResult Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class SearchLoading implements SearchState {
  const factory SearchLoading() = _$SearchLoading;
}

/// @nodoc
abstract class _$$SearchErrorCopyWith<$Res> {
  factory _$$SearchErrorCopyWith(
          _$SearchError value, $Res Function(_$SearchError) then) =
      __$$SearchErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SearchErrorCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchError>
    implements _$$SearchErrorCopyWith<$Res> {
  __$$SearchErrorCopyWithImpl(
      _$SearchError _value, $Res Function(_$SearchError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SearchError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchError implements SearchError {
  const _$SearchError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SearchState.searchError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchErrorCopyWith<_$SearchError> get copyWith =>
      __$$SearchErrorCopyWithImpl<_$SearchError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)
        searchLoaded,
    required TResult Function(bool max, SearchRes foods) searchReachedMax,
    required TResult Function(List<Food> foods) restaurantSearchLoaded,
    required TResult Function(bool max, List<Food> foods)
        restaurantSearchReachedMax,
  }) {
    return searchError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchInitial,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)?
        searchLoaded,
    TResult? Function(bool max, SearchRes foods)? searchReachedMax,
    TResult? Function(List<Food> foods)? restaurantSearchLoaded,
    TResult? Function(bool max, List<Food> foods)? restaurantSearchReachedMax,
  }) {
    return searchError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)?
        searchLoaded,
    TResult Function(bool max, SearchRes foods)? searchReachedMax,
    TResult Function(List<Food> foods)? restaurantSearchLoaded,
    TResult Function(bool max, List<Food> foods)? restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) searchInitial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchError value) searchError,
    required TResult Function(SearchLoaded value) searchLoaded,
    required TResult Function(SearchedReachedMax value) searchReachedMax,
    required TResult Function(RestaurantSearchLoaded value)
        restaurantSearchLoaded,
    required TResult Function(RestaurantSearchReachedMax value)
        restaurantSearchReachedMax,
  }) {
    return searchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? searchInitial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(SearchLoaded value)? searchLoaded,
    TResult? Function(SearchedReachedMax value)? searchReachedMax,
    TResult? Function(RestaurantSearchLoaded value)? restaurantSearchLoaded,
    TResult? Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
  }) {
    return searchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? searchInitial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchError value)? searchError,
    TResult Function(SearchLoaded value)? searchLoaded,
    TResult Function(SearchedReachedMax value)? searchReachedMax,
    TResult Function(RestaurantSearchLoaded value)? restaurantSearchLoaded,
    TResult Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(this);
    }
    return orElse();
  }
}

abstract class SearchError implements SearchState {
  const factory SearchError(final String error) = _$SearchError;

  String get error;
  @JsonKey(ignore: true)
  _$$SearchErrorCopyWith<_$SearchError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLoadedCopyWith<$Res> {
  factory _$$SearchLoadedCopyWith(
          _$SearchLoaded value, $Res Function(_$SearchLoaded) then) =
      __$$SearchLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Food> foods,
      List<Restaurant> restaurants,
      bool searchNextPage,
      bool toggler});
}

/// @nodoc
class __$$SearchLoadedCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoaded>
    implements _$$SearchLoadedCopyWith<$Res> {
  __$$SearchLoadedCopyWithImpl(
      _$SearchLoaded _value, $Res Function(_$SearchLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
    Object? restaurants = null,
    Object? searchNextPage = null,
    Object? toggler = null,
  }) {
    return _then(_$SearchLoaded(
      foods: null == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
      restaurants: null == restaurants
          ? _value._restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
      searchNextPage: null == searchNextPage
          ? _value.searchNextPage
          : searchNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      toggler: null == toggler
          ? _value.toggler
          : toggler // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchLoaded implements SearchLoaded {
  const _$SearchLoaded(
      {required final List<Food> foods,
      required final List<Restaurant> restaurants,
      required this.searchNextPage,
      required this.toggler})
      : _foods = foods,
        _restaurants = restaurants;

  final List<Food> _foods;
  @override
  List<Food> get foods {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  final List<Restaurant> _restaurants;
  @override
  List<Restaurant> get restaurants {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restaurants);
  }

  @override
  final bool searchNextPage;
  @override
  final bool toggler;

  @override
  String toString() {
    return 'SearchState.searchLoaded(foods: $foods, restaurants: $restaurants, searchNextPage: $searchNextPage, toggler: $toggler)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoaded &&
            const DeepCollectionEquality().equals(other._foods, _foods) &&
            const DeepCollectionEquality()
                .equals(other._restaurants, _restaurants) &&
            (identical(other.searchNextPage, searchNextPage) ||
                other.searchNextPage == searchNextPage) &&
            (identical(other.toggler, toggler) || other.toggler == toggler));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_foods),
      const DeepCollectionEquality().hash(_restaurants),
      searchNextPage,
      toggler);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLoadedCopyWith<_$SearchLoaded> get copyWith =>
      __$$SearchLoadedCopyWithImpl<_$SearchLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)
        searchLoaded,
    required TResult Function(bool max, SearchRes foods) searchReachedMax,
    required TResult Function(List<Food> foods) restaurantSearchLoaded,
    required TResult Function(bool max, List<Food> foods)
        restaurantSearchReachedMax,
  }) {
    return searchLoaded(foods, restaurants, searchNextPage, toggler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchInitial,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)?
        searchLoaded,
    TResult? Function(bool max, SearchRes foods)? searchReachedMax,
    TResult? Function(List<Food> foods)? restaurantSearchLoaded,
    TResult? Function(bool max, List<Food> foods)? restaurantSearchReachedMax,
  }) {
    return searchLoaded?.call(foods, restaurants, searchNextPage, toggler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)?
        searchLoaded,
    TResult Function(bool max, SearchRes foods)? searchReachedMax,
    TResult Function(List<Food> foods)? restaurantSearchLoaded,
    TResult Function(bool max, List<Food> foods)? restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (searchLoaded != null) {
      return searchLoaded(foods, restaurants, searchNextPage, toggler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) searchInitial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchError value) searchError,
    required TResult Function(SearchLoaded value) searchLoaded,
    required TResult Function(SearchedReachedMax value) searchReachedMax,
    required TResult Function(RestaurantSearchLoaded value)
        restaurantSearchLoaded,
    required TResult Function(RestaurantSearchReachedMax value)
        restaurantSearchReachedMax,
  }) {
    return searchLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? searchInitial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(SearchLoaded value)? searchLoaded,
    TResult? Function(SearchedReachedMax value)? searchReachedMax,
    TResult? Function(RestaurantSearchLoaded value)? restaurantSearchLoaded,
    TResult? Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
  }) {
    return searchLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? searchInitial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchError value)? searchError,
    TResult Function(SearchLoaded value)? searchLoaded,
    TResult Function(SearchedReachedMax value)? searchReachedMax,
    TResult Function(RestaurantSearchLoaded value)? restaurantSearchLoaded,
    TResult Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (searchLoaded != null) {
      return searchLoaded(this);
    }
    return orElse();
  }
}

abstract class SearchLoaded implements SearchState {
  const factory SearchLoaded(
      {required final List<Food> foods,
      required final List<Restaurant> restaurants,
      required final bool searchNextPage,
      required final bool toggler}) = _$SearchLoaded;

  List<Food> get foods;
  List<Restaurant> get restaurants;
  bool get searchNextPage;
  bool get toggler;
  @JsonKey(ignore: true)
  _$$SearchLoadedCopyWith<_$SearchLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchedReachedMaxCopyWith<$Res> {
  factory _$$SearchedReachedMaxCopyWith(_$SearchedReachedMax value,
          $Res Function(_$SearchedReachedMax) then) =
      __$$SearchedReachedMaxCopyWithImpl<$Res>;
  @useResult
  $Res call({bool max, SearchRes foods});
}

/// @nodoc
class __$$SearchedReachedMaxCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchedReachedMax>
    implements _$$SearchedReachedMaxCopyWith<$Res> {
  __$$SearchedReachedMaxCopyWithImpl(
      _$SearchedReachedMax _value, $Res Function(_$SearchedReachedMax) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? max = null,
    Object? foods = null,
  }) {
    return _then(_$SearchedReachedMax(
      null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as bool,
      null == foods
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as SearchRes,
    ));
  }
}

/// @nodoc

class _$SearchedReachedMax implements SearchedReachedMax {
  const _$SearchedReachedMax(this.max, this.foods);

  @override
  final bool max;
  @override
  final SearchRes foods;

  @override
  String toString() {
    return 'SearchState.searchReachedMax(max: $max, foods: $foods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedReachedMax &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.foods, foods) || other.foods == foods));
  }

  @override
  int get hashCode => Object.hash(runtimeType, max, foods);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedReachedMaxCopyWith<_$SearchedReachedMax> get copyWith =>
      __$$SearchedReachedMaxCopyWithImpl<_$SearchedReachedMax>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)
        searchLoaded,
    required TResult Function(bool max, SearchRes foods) searchReachedMax,
    required TResult Function(List<Food> foods) restaurantSearchLoaded,
    required TResult Function(bool max, List<Food> foods)
        restaurantSearchReachedMax,
  }) {
    return searchReachedMax(max, foods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchInitial,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)?
        searchLoaded,
    TResult? Function(bool max, SearchRes foods)? searchReachedMax,
    TResult? Function(List<Food> foods)? restaurantSearchLoaded,
    TResult? Function(bool max, List<Food> foods)? restaurantSearchReachedMax,
  }) {
    return searchReachedMax?.call(max, foods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)?
        searchLoaded,
    TResult Function(bool max, SearchRes foods)? searchReachedMax,
    TResult Function(List<Food> foods)? restaurantSearchLoaded,
    TResult Function(bool max, List<Food> foods)? restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (searchReachedMax != null) {
      return searchReachedMax(max, foods);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) searchInitial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchError value) searchError,
    required TResult Function(SearchLoaded value) searchLoaded,
    required TResult Function(SearchedReachedMax value) searchReachedMax,
    required TResult Function(RestaurantSearchLoaded value)
        restaurantSearchLoaded,
    required TResult Function(RestaurantSearchReachedMax value)
        restaurantSearchReachedMax,
  }) {
    return searchReachedMax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? searchInitial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(SearchLoaded value)? searchLoaded,
    TResult? Function(SearchedReachedMax value)? searchReachedMax,
    TResult? Function(RestaurantSearchLoaded value)? restaurantSearchLoaded,
    TResult? Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
  }) {
    return searchReachedMax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? searchInitial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchError value)? searchError,
    TResult Function(SearchLoaded value)? searchLoaded,
    TResult Function(SearchedReachedMax value)? searchReachedMax,
    TResult Function(RestaurantSearchLoaded value)? restaurantSearchLoaded,
    TResult Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (searchReachedMax != null) {
      return searchReachedMax(this);
    }
    return orElse();
  }
}

abstract class SearchedReachedMax implements SearchState {
  const factory SearchedReachedMax(final bool max, final SearchRes foods) =
      _$SearchedReachedMax;

  bool get max;
  SearchRes get foods;
  @JsonKey(ignore: true)
  _$$SearchedReachedMaxCopyWith<_$SearchedReachedMax> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestaurantSearchLoadedCopyWith<$Res> {
  factory _$$RestaurantSearchLoadedCopyWith(_$RestaurantSearchLoaded value,
          $Res Function(_$RestaurantSearchLoaded) then) =
      __$$RestaurantSearchLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Food> foods});
}

/// @nodoc
class __$$RestaurantSearchLoadedCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$RestaurantSearchLoaded>
    implements _$$RestaurantSearchLoadedCopyWith<$Res> {
  __$$RestaurantSearchLoadedCopyWithImpl(_$RestaurantSearchLoaded _value,
      $Res Function(_$RestaurantSearchLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
  }) {
    return _then(_$RestaurantSearchLoaded(
      null == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ));
  }
}

/// @nodoc

class _$RestaurantSearchLoaded implements RestaurantSearchLoaded {
  const _$RestaurantSearchLoaded(final List<Food> foods) : _foods = foods;

  final List<Food> _foods;
  @override
  List<Food> get foods {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  @override
  String toString() {
    return 'SearchState.restaurantSearchLoaded(foods: $foods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantSearchLoaded &&
            const DeepCollectionEquality().equals(other._foods, _foods));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_foods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantSearchLoadedCopyWith<_$RestaurantSearchLoaded> get copyWith =>
      __$$RestaurantSearchLoadedCopyWithImpl<_$RestaurantSearchLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)
        searchLoaded,
    required TResult Function(bool max, SearchRes foods) searchReachedMax,
    required TResult Function(List<Food> foods) restaurantSearchLoaded,
    required TResult Function(bool max, List<Food> foods)
        restaurantSearchReachedMax,
  }) {
    return restaurantSearchLoaded(foods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchInitial,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)?
        searchLoaded,
    TResult? Function(bool max, SearchRes foods)? searchReachedMax,
    TResult? Function(List<Food> foods)? restaurantSearchLoaded,
    TResult? Function(bool max, List<Food> foods)? restaurantSearchReachedMax,
  }) {
    return restaurantSearchLoaded?.call(foods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)?
        searchLoaded,
    TResult Function(bool max, SearchRes foods)? searchReachedMax,
    TResult Function(List<Food> foods)? restaurantSearchLoaded,
    TResult Function(bool max, List<Food> foods)? restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (restaurantSearchLoaded != null) {
      return restaurantSearchLoaded(foods);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) searchInitial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchError value) searchError,
    required TResult Function(SearchLoaded value) searchLoaded,
    required TResult Function(SearchedReachedMax value) searchReachedMax,
    required TResult Function(RestaurantSearchLoaded value)
        restaurantSearchLoaded,
    required TResult Function(RestaurantSearchReachedMax value)
        restaurantSearchReachedMax,
  }) {
    return restaurantSearchLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? searchInitial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(SearchLoaded value)? searchLoaded,
    TResult? Function(SearchedReachedMax value)? searchReachedMax,
    TResult? Function(RestaurantSearchLoaded value)? restaurantSearchLoaded,
    TResult? Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
  }) {
    return restaurantSearchLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? searchInitial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchError value)? searchError,
    TResult Function(SearchLoaded value)? searchLoaded,
    TResult Function(SearchedReachedMax value)? searchReachedMax,
    TResult Function(RestaurantSearchLoaded value)? restaurantSearchLoaded,
    TResult Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (restaurantSearchLoaded != null) {
      return restaurantSearchLoaded(this);
    }
    return orElse();
  }
}

abstract class RestaurantSearchLoaded implements SearchState {
  const factory RestaurantSearchLoaded(final List<Food> foods) =
      _$RestaurantSearchLoaded;

  List<Food> get foods;
  @JsonKey(ignore: true)
  _$$RestaurantSearchLoadedCopyWith<_$RestaurantSearchLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestaurantSearchReachedMaxCopyWith<$Res> {
  factory _$$RestaurantSearchReachedMaxCopyWith(
          _$RestaurantSearchReachedMax value,
          $Res Function(_$RestaurantSearchReachedMax) then) =
      __$$RestaurantSearchReachedMaxCopyWithImpl<$Res>;
  @useResult
  $Res call({bool max, List<Food> foods});
}

/// @nodoc
class __$$RestaurantSearchReachedMaxCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$RestaurantSearchReachedMax>
    implements _$$RestaurantSearchReachedMaxCopyWith<$Res> {
  __$$RestaurantSearchReachedMaxCopyWithImpl(
      _$RestaurantSearchReachedMax _value,
      $Res Function(_$RestaurantSearchReachedMax) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? max = null,
    Object? foods = null,
  }) {
    return _then(_$RestaurantSearchReachedMax(
      null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as bool,
      null == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ));
  }
}

/// @nodoc

class _$RestaurantSearchReachedMax implements RestaurantSearchReachedMax {
  const _$RestaurantSearchReachedMax(this.max, final List<Food> foods)
      : _foods = foods;

  @override
  final bool max;
  final List<Food> _foods;
  @override
  List<Food> get foods {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  @override
  String toString() {
    return 'SearchState.restaurantSearchReachedMax(max: $max, foods: $foods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantSearchReachedMax &&
            (identical(other.max, max) || other.max == max) &&
            const DeepCollectionEquality().equals(other._foods, _foods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, max, const DeepCollectionEquality().hash(_foods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantSearchReachedMaxCopyWith<_$RestaurantSearchReachedMax>
      get copyWith => __$$RestaurantSearchReachedMaxCopyWithImpl<
          _$RestaurantSearchReachedMax>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)
        searchLoaded,
    required TResult Function(bool max, SearchRes foods) searchReachedMax,
    required TResult Function(List<Food> foods) restaurantSearchLoaded,
    required TResult Function(bool max, List<Food> foods)
        restaurantSearchReachedMax,
  }) {
    return restaurantSearchReachedMax(max, foods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchInitial,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)?
        searchLoaded,
    TResult? Function(bool max, SearchRes foods)? searchReachedMax,
    TResult? Function(List<Food> foods)? restaurantSearchLoaded,
    TResult? Function(bool max, List<Food> foods)? restaurantSearchReachedMax,
  }) {
    return restaurantSearchReachedMax?.call(max, foods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(List<Food> foods, List<Restaurant> restaurants,
            bool searchNextPage, bool toggler)?
        searchLoaded,
    TResult Function(bool max, SearchRes foods)? searchReachedMax,
    TResult Function(List<Food> foods)? restaurantSearchLoaded,
    TResult Function(bool max, List<Food> foods)? restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (restaurantSearchReachedMax != null) {
      return restaurantSearchReachedMax(max, foods);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) searchInitial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchError value) searchError,
    required TResult Function(SearchLoaded value) searchLoaded,
    required TResult Function(SearchedReachedMax value) searchReachedMax,
    required TResult Function(RestaurantSearchLoaded value)
        restaurantSearchLoaded,
    required TResult Function(RestaurantSearchReachedMax value)
        restaurantSearchReachedMax,
  }) {
    return restaurantSearchReachedMax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? searchInitial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchError value)? searchError,
    TResult? Function(SearchLoaded value)? searchLoaded,
    TResult? Function(SearchedReachedMax value)? searchReachedMax,
    TResult? Function(RestaurantSearchLoaded value)? restaurantSearchLoaded,
    TResult? Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
  }) {
    return restaurantSearchReachedMax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? searchInitial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchError value)? searchError,
    TResult Function(SearchLoaded value)? searchLoaded,
    TResult Function(SearchedReachedMax value)? searchReachedMax,
    TResult Function(RestaurantSearchLoaded value)? restaurantSearchLoaded,
    TResult Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (restaurantSearchReachedMax != null) {
      return restaurantSearchReachedMax(this);
    }
    return orElse();
  }
}

abstract class RestaurantSearchReachedMax implements SearchState {
  const factory RestaurantSearchReachedMax(
      final bool max, final List<Food> foods) = _$RestaurantSearchReachedMax;

  bool get max;
  List<Food> get foods;
  @JsonKey(ignore: true)
  _$$RestaurantSearchReachedMaxCopyWith<_$RestaurantSearchReachedMax>
      get copyWith => throw _privateConstructorUsedError;
}
