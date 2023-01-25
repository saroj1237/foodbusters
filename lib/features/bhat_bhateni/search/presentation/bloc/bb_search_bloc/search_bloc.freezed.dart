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
mixin _$BBSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchProducts,
    required TResult Function() loadMoreProducts,
    required TResult Function() resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchProducts,
    TResult? Function()? loadMoreProducts,
    TResult? Function()? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchProducts,
    TResult Function()? loadMoreProducts,
    TResult Function()? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchProducts value) searchProducts,
    required TResult Function(LoadMoreProducts value) loadMoreProducts,
    required TResult Function(BBSearchResetState value) resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchProducts value)? searchProducts,
    TResult? Function(LoadMoreProducts value)? loadMoreProducts,
    TResult? Function(BBSearchResetState value)? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchProducts value)? searchProducts,
    TResult Function(LoadMoreProducts value)? loadMoreProducts,
    TResult Function(BBSearchResetState value)? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BBSearchEventCopyWith<$Res> {
  factory $BBSearchEventCopyWith(
          BBSearchEvent value, $Res Function(BBSearchEvent) then) =
      _$BBSearchEventCopyWithImpl<$Res, BBSearchEvent>;
}

/// @nodoc
class _$BBSearchEventCopyWithImpl<$Res, $Val extends BBSearchEvent>
    implements $BBSearchEventCopyWith<$Res> {
  _$BBSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchProductsCopyWith<$Res> {
  factory _$$SearchProductsCopyWith(
          _$SearchProducts value, $Res Function(_$SearchProducts) then) =
      __$$SearchProductsCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchProductsCopyWithImpl<$Res>
    extends _$BBSearchEventCopyWithImpl<$Res, _$SearchProducts>
    implements _$$SearchProductsCopyWith<$Res> {
  __$$SearchProductsCopyWithImpl(
      _$SearchProducts _value, $Res Function(_$SearchProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchProducts(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProducts implements SearchProducts {
  const _$SearchProducts(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'BBSearchEvent.searchProducts(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProducts &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductsCopyWith<_$SearchProducts> get copyWith =>
      __$$SearchProductsCopyWithImpl<_$SearchProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchProducts,
    required TResult Function() loadMoreProducts,
    required TResult Function() resetState,
  }) {
    return searchProducts(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchProducts,
    TResult? Function()? loadMoreProducts,
    TResult? Function()? resetState,
  }) {
    return searchProducts?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchProducts,
    TResult Function()? loadMoreProducts,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (searchProducts != null) {
      return searchProducts(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchProducts value) searchProducts,
    required TResult Function(LoadMoreProducts value) loadMoreProducts,
    required TResult Function(BBSearchResetState value) resetState,
  }) {
    return searchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchProducts value)? searchProducts,
    TResult? Function(LoadMoreProducts value)? loadMoreProducts,
    TResult? Function(BBSearchResetState value)? resetState,
  }) {
    return searchProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchProducts value)? searchProducts,
    TResult Function(LoadMoreProducts value)? loadMoreProducts,
    TResult Function(BBSearchResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (searchProducts != null) {
      return searchProducts(this);
    }
    return orElse();
  }
}

abstract class SearchProducts implements BBSearchEvent {
  const factory SearchProducts(final String query) = _$SearchProducts;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchProductsCopyWith<_$SearchProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreProductsCopyWith<$Res> {
  factory _$$LoadMoreProductsCopyWith(
          _$LoadMoreProducts value, $Res Function(_$LoadMoreProducts) then) =
      __$$LoadMoreProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreProductsCopyWithImpl<$Res>
    extends _$BBSearchEventCopyWithImpl<$Res, _$LoadMoreProducts>
    implements _$$LoadMoreProductsCopyWith<$Res> {
  __$$LoadMoreProductsCopyWithImpl(
      _$LoadMoreProducts _value, $Res Function(_$LoadMoreProducts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreProducts implements LoadMoreProducts {
  const _$LoadMoreProducts();

  @override
  String toString() {
    return 'BBSearchEvent.loadMoreProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchProducts,
    required TResult Function() loadMoreProducts,
    required TResult Function() resetState,
  }) {
    return loadMoreProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchProducts,
    TResult? Function()? loadMoreProducts,
    TResult? Function()? resetState,
  }) {
    return loadMoreProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchProducts,
    TResult Function()? loadMoreProducts,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (loadMoreProducts != null) {
      return loadMoreProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchProducts value) searchProducts,
    required TResult Function(LoadMoreProducts value) loadMoreProducts,
    required TResult Function(BBSearchResetState value) resetState,
  }) {
    return loadMoreProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchProducts value)? searchProducts,
    TResult? Function(LoadMoreProducts value)? loadMoreProducts,
    TResult? Function(BBSearchResetState value)? resetState,
  }) {
    return loadMoreProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchProducts value)? searchProducts,
    TResult Function(LoadMoreProducts value)? loadMoreProducts,
    TResult Function(BBSearchResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (loadMoreProducts != null) {
      return loadMoreProducts(this);
    }
    return orElse();
  }
}

abstract class LoadMoreProducts implements BBSearchEvent {
  const factory LoadMoreProducts() = _$LoadMoreProducts;
}

/// @nodoc
abstract class _$$BBSearchResetStateCopyWith<$Res> {
  factory _$$BBSearchResetStateCopyWith(_$BBSearchResetState value,
          $Res Function(_$BBSearchResetState) then) =
      __$$BBSearchResetStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BBSearchResetStateCopyWithImpl<$Res>
    extends _$BBSearchEventCopyWithImpl<$Res, _$BBSearchResetState>
    implements _$$BBSearchResetStateCopyWith<$Res> {
  __$$BBSearchResetStateCopyWithImpl(
      _$BBSearchResetState _value, $Res Function(_$BBSearchResetState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BBSearchResetState implements BBSearchResetState {
  const _$BBSearchResetState();

  @override
  String toString() {
    return 'BBSearchEvent.resetState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BBSearchResetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchProducts,
    required TResult Function() loadMoreProducts,
    required TResult Function() resetState,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchProducts,
    TResult? Function()? loadMoreProducts,
    TResult? Function()? resetState,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchProducts,
    TResult Function()? loadMoreProducts,
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
    required TResult Function(SearchProducts value) searchProducts,
    required TResult Function(LoadMoreProducts value) loadMoreProducts,
    required TResult Function(BBSearchResetState value) resetState,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchProducts value)? searchProducts,
    TResult? Function(LoadMoreProducts value)? loadMoreProducts,
    TResult? Function(BBSearchResetState value)? resetState,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchProducts value)? searchProducts,
    TResult Function(LoadMoreProducts value)? loadMoreProducts,
    TResult Function(BBSearchResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class BBSearchResetState implements BBSearchEvent {
  const factory BBSearchResetState() = _$BBSearchResetState;
}

/// @nodoc
mixin _$BBSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(List<Product> products, bool loadNextPage)
        searchLoaded,
    required TResult Function(bool max, List<Product> foods) searchReachedMax,
    required TResult Function(List<Food> foods) restaurantSearchLoaded,
    required TResult Function(bool max, List<Product> foods)
        restaurantSearchReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchInitial,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(List<Product> products, bool loadNextPage)? searchLoaded,
    TResult? Function(bool max, List<Product> foods)? searchReachedMax,
    TResult? Function(List<Food> foods)? restaurantSearchLoaded,
    TResult? Function(bool max, List<Product> foods)?
        restaurantSearchReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(List<Product> products, bool loadNextPage)? searchLoaded,
    TResult Function(bool max, List<Product> foods)? searchReachedMax,
    TResult Function(List<Food> foods)? restaurantSearchLoaded,
    TResult Function(bool max, List<Product> foods)? restaurantSearchReachedMax,
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
abstract class $BBSearchStateCopyWith<$Res> {
  factory $BBSearchStateCopyWith(
          BBSearchState value, $Res Function(BBSearchState) then) =
      _$BBSearchStateCopyWithImpl<$Res, BBSearchState>;
}

/// @nodoc
class _$BBSearchStateCopyWithImpl<$Res, $Val extends BBSearchState>
    implements $BBSearchStateCopyWith<$Res> {
  _$BBSearchStateCopyWithImpl(this._value, this._then);

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
    extends _$BBSearchStateCopyWithImpl<$Res, _$SearchInitial>
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
    return 'BBSearchState.searchInitial()';
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
    required TResult Function(List<Product> products, bool loadNextPage)
        searchLoaded,
    required TResult Function(bool max, List<Product> foods) searchReachedMax,
    required TResult Function(List<Food> foods) restaurantSearchLoaded,
    required TResult Function(bool max, List<Product> foods)
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
    TResult? Function(List<Product> products, bool loadNextPage)? searchLoaded,
    TResult? Function(bool max, List<Product> foods)? searchReachedMax,
    TResult? Function(List<Food> foods)? restaurantSearchLoaded,
    TResult? Function(bool max, List<Product> foods)?
        restaurantSearchReachedMax,
  }) {
    return searchInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(List<Product> products, bool loadNextPage)? searchLoaded,
    TResult Function(bool max, List<Product> foods)? searchReachedMax,
    TResult Function(List<Food> foods)? restaurantSearchLoaded,
    TResult Function(bool max, List<Product> foods)? restaurantSearchReachedMax,
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

abstract class SearchInitial implements BBSearchState {
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
    extends _$BBSearchStateCopyWithImpl<$Res, _$SearchLoading>
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
    return 'BBSearchState.searchLoading()';
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
    required TResult Function(List<Product> products, bool loadNextPage)
        searchLoaded,
    required TResult Function(bool max, List<Product> foods) searchReachedMax,
    required TResult Function(List<Food> foods) restaurantSearchLoaded,
    required TResult Function(bool max, List<Product> foods)
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
    TResult? Function(List<Product> products, bool loadNextPage)? searchLoaded,
    TResult? Function(bool max, List<Product> foods)? searchReachedMax,
    TResult? Function(List<Food> foods)? restaurantSearchLoaded,
    TResult? Function(bool max, List<Product> foods)?
        restaurantSearchReachedMax,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(List<Product> products, bool loadNextPage)? searchLoaded,
    TResult Function(bool max, List<Product> foods)? searchReachedMax,
    TResult Function(List<Food> foods)? restaurantSearchLoaded,
    TResult Function(bool max, List<Product> foods)? restaurantSearchReachedMax,
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

abstract class SearchLoading implements BBSearchState {
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
    extends _$BBSearchStateCopyWithImpl<$Res, _$SearchError>
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
    return 'BBSearchState.searchError(error: $error)';
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
    required TResult Function(List<Product> products, bool loadNextPage)
        searchLoaded,
    required TResult Function(bool max, List<Product> foods) searchReachedMax,
    required TResult Function(List<Food> foods) restaurantSearchLoaded,
    required TResult Function(bool max, List<Product> foods)
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
    TResult? Function(List<Product> products, bool loadNextPage)? searchLoaded,
    TResult? Function(bool max, List<Product> foods)? searchReachedMax,
    TResult? Function(List<Food> foods)? restaurantSearchLoaded,
    TResult? Function(bool max, List<Product> foods)?
        restaurantSearchReachedMax,
  }) {
    return searchError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(List<Product> products, bool loadNextPage)? searchLoaded,
    TResult Function(bool max, List<Product> foods)? searchReachedMax,
    TResult Function(List<Food> foods)? restaurantSearchLoaded,
    TResult Function(bool max, List<Product> foods)? restaurantSearchReachedMax,
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

abstract class SearchError implements BBSearchState {
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
  $Res call({List<Product> products, bool loadNextPage});
}

/// @nodoc
class __$$SearchLoadedCopyWithImpl<$Res>
    extends _$BBSearchStateCopyWithImpl<$Res, _$SearchLoaded>
    implements _$$SearchLoadedCopyWith<$Res> {
  __$$SearchLoadedCopyWithImpl(
      _$SearchLoaded _value, $Res Function(_$SearchLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? loadNextPage = null,
  }) {
    return _then(_$SearchLoaded(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      loadNextPage: null == loadNextPage
          ? _value.loadNextPage
          : loadNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchLoaded implements SearchLoaded {
  const _$SearchLoaded(
      {required final List<Product> products, required this.loadNextPage})
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final bool loadNextPage;

  @override
  String toString() {
    return 'BBSearchState.searchLoaded(products: $products, loadNextPage: $loadNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoaded &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.loadNextPage, loadNextPage) ||
                other.loadNextPage == loadNextPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), loadNextPage);

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
    required TResult Function(List<Product> products, bool loadNextPage)
        searchLoaded,
    required TResult Function(bool max, List<Product> foods) searchReachedMax,
    required TResult Function(List<Food> foods) restaurantSearchLoaded,
    required TResult Function(bool max, List<Product> foods)
        restaurantSearchReachedMax,
  }) {
    return searchLoaded(products, loadNextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchInitial,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(List<Product> products, bool loadNextPage)? searchLoaded,
    TResult? Function(bool max, List<Product> foods)? searchReachedMax,
    TResult? Function(List<Food> foods)? restaurantSearchLoaded,
    TResult? Function(bool max, List<Product> foods)?
        restaurantSearchReachedMax,
  }) {
    return searchLoaded?.call(products, loadNextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(List<Product> products, bool loadNextPage)? searchLoaded,
    TResult Function(bool max, List<Product> foods)? searchReachedMax,
    TResult Function(List<Food> foods)? restaurantSearchLoaded,
    TResult Function(bool max, List<Product> foods)? restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (searchLoaded != null) {
      return searchLoaded(products, loadNextPage);
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

abstract class SearchLoaded implements BBSearchState {
  const factory SearchLoaded(
      {required final List<Product> products,
      required final bool loadNextPage}) = _$SearchLoaded;

  List<Product> get products;
  bool get loadNextPage;
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
  $Res call({bool max, List<Product> foods});
}

/// @nodoc
class __$$SearchedReachedMaxCopyWithImpl<$Res>
    extends _$BBSearchStateCopyWithImpl<$Res, _$SearchedReachedMax>
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
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$SearchedReachedMax implements SearchedReachedMax {
  const _$SearchedReachedMax(this.max, final List<Product> foods)
      : _foods = foods;

  @override
  final bool max;
  final List<Product> _foods;
  @override
  List<Product> get foods {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  @override
  String toString() {
    return 'BBSearchState.searchReachedMax(max: $max, foods: $foods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedReachedMax &&
            (identical(other.max, max) || other.max == max) &&
            const DeepCollectionEquality().equals(other._foods, _foods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, max, const DeepCollectionEquality().hash(_foods));

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
    required TResult Function(List<Product> products, bool loadNextPage)
        searchLoaded,
    required TResult Function(bool max, List<Product> foods) searchReachedMax,
    required TResult Function(List<Food> foods) restaurantSearchLoaded,
    required TResult Function(bool max, List<Product> foods)
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
    TResult? Function(List<Product> products, bool loadNextPage)? searchLoaded,
    TResult? Function(bool max, List<Product> foods)? searchReachedMax,
    TResult? Function(List<Food> foods)? restaurantSearchLoaded,
    TResult? Function(bool max, List<Product> foods)?
        restaurantSearchReachedMax,
  }) {
    return searchReachedMax?.call(max, foods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(List<Product> products, bool loadNextPage)? searchLoaded,
    TResult Function(bool max, List<Product> foods)? searchReachedMax,
    TResult Function(List<Food> foods)? restaurantSearchLoaded,
    TResult Function(bool max, List<Product> foods)? restaurantSearchReachedMax,
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

abstract class SearchedReachedMax implements BBSearchState {
  const factory SearchedReachedMax(final bool max, final List<Product> foods) =
      _$SearchedReachedMax;

  bool get max;
  List<Product> get foods;
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
    extends _$BBSearchStateCopyWithImpl<$Res, _$RestaurantSearchLoaded>
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
    return 'BBSearchState.restaurantSearchLoaded(foods: $foods)';
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
    required TResult Function(List<Product> products, bool loadNextPage)
        searchLoaded,
    required TResult Function(bool max, List<Product> foods) searchReachedMax,
    required TResult Function(List<Food> foods) restaurantSearchLoaded,
    required TResult Function(bool max, List<Product> foods)
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
    TResult? Function(List<Product> products, bool loadNextPage)? searchLoaded,
    TResult? Function(bool max, List<Product> foods)? searchReachedMax,
    TResult? Function(List<Food> foods)? restaurantSearchLoaded,
    TResult? Function(bool max, List<Product> foods)?
        restaurantSearchReachedMax,
  }) {
    return restaurantSearchLoaded?.call(foods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(List<Product> products, bool loadNextPage)? searchLoaded,
    TResult Function(bool max, List<Product> foods)? searchReachedMax,
    TResult Function(List<Food> foods)? restaurantSearchLoaded,
    TResult Function(bool max, List<Product> foods)? restaurantSearchReachedMax,
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

abstract class RestaurantSearchLoaded implements BBSearchState {
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
  $Res call({bool max, List<Product> foods});
}

/// @nodoc
class __$$RestaurantSearchReachedMaxCopyWithImpl<$Res>
    extends _$BBSearchStateCopyWithImpl<$Res, _$RestaurantSearchReachedMax>
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
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$RestaurantSearchReachedMax implements RestaurantSearchReachedMax {
  const _$RestaurantSearchReachedMax(this.max, final List<Product> foods)
      : _foods = foods;

  @override
  final bool max;
  final List<Product> _foods;
  @override
  List<Product> get foods {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  @override
  String toString() {
    return 'BBSearchState.restaurantSearchReachedMax(max: $max, foods: $foods)';
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
    required TResult Function(List<Product> products, bool loadNextPage)
        searchLoaded,
    required TResult Function(bool max, List<Product> foods) searchReachedMax,
    required TResult Function(List<Food> foods) restaurantSearchLoaded,
    required TResult Function(bool max, List<Product> foods)
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
    TResult? Function(List<Product> products, bool loadNextPage)? searchLoaded,
    TResult? Function(bool max, List<Product> foods)? searchReachedMax,
    TResult? Function(List<Food> foods)? restaurantSearchLoaded,
    TResult? Function(bool max, List<Product> foods)?
        restaurantSearchReachedMax,
  }) {
    return restaurantSearchReachedMax?.call(max, foods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(List<Product> products, bool loadNextPage)? searchLoaded,
    TResult Function(bool max, List<Product> foods)? searchReachedMax,
    TResult Function(List<Food> foods)? restaurantSearchLoaded,
    TResult Function(bool max, List<Product> foods)? restaurantSearchReachedMax,
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

abstract class RestaurantSearchReachedMax implements BBSearchState {
  const factory RestaurantSearchReachedMax(
      final bool max, final List<Product> foods) = _$RestaurantSearchReachedMax;

  bool get max;
  List<Product> get foods;
  @JsonKey(ignore: true)
  _$$RestaurantSearchReachedMaxCopyWith<_$RestaurantSearchReachedMax>
      get copyWith => throw _privateConstructorUsedError;
}
