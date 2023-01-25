// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restaurant_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RestaurantListEvent {
  String get resId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String resId) getRestaurantsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String resId)? getRestaurantsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String resId)? getRestaurantsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurantsList value) getRestaurantsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRestaurantsList value)? getRestaurantsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurantsList value)? getRestaurantsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantListEventCopyWith<RestaurantListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantListEventCopyWith<$Res> {
  factory $RestaurantListEventCopyWith(
          RestaurantListEvent value, $Res Function(RestaurantListEvent) then) =
      _$RestaurantListEventCopyWithImpl<$Res, RestaurantListEvent>;
  @useResult
  $Res call({String resId});
}

/// @nodoc
class _$RestaurantListEventCopyWithImpl<$Res, $Val extends RestaurantListEvent>
    implements $RestaurantListEventCopyWith<$Res> {
  _$RestaurantListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resId = null,
  }) {
    return _then(_value.copyWith(
      resId: null == resId
          ? _value.resId
          : resId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRestaurantsListCopyWith<$Res>
    implements $RestaurantListEventCopyWith<$Res> {
  factory _$$GetRestaurantsListCopyWith(_$GetRestaurantsList value,
          $Res Function(_$GetRestaurantsList) then) =
      __$$GetRestaurantsListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String resId});
}

/// @nodoc
class __$$GetRestaurantsListCopyWithImpl<$Res>
    extends _$RestaurantListEventCopyWithImpl<$Res, _$GetRestaurantsList>
    implements _$$GetRestaurantsListCopyWith<$Res> {
  __$$GetRestaurantsListCopyWithImpl(
      _$GetRestaurantsList _value, $Res Function(_$GetRestaurantsList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resId = null,
  }) {
    return _then(_$GetRestaurantsList(
      null == resId
          ? _value.resId
          : resId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRestaurantsList implements GetRestaurantsList {
  const _$GetRestaurantsList(this.resId);

  @override
  final String resId;

  @override
  String toString() {
    return 'RestaurantListEvent.getRestaurantsList(resId: $resId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRestaurantsList &&
            (identical(other.resId, resId) || other.resId == resId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRestaurantsListCopyWith<_$GetRestaurantsList> get copyWith =>
      __$$GetRestaurantsListCopyWithImpl<_$GetRestaurantsList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String resId) getRestaurantsList,
  }) {
    return getRestaurantsList(resId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String resId)? getRestaurantsList,
  }) {
    return getRestaurantsList?.call(resId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String resId)? getRestaurantsList,
    required TResult orElse(),
  }) {
    if (getRestaurantsList != null) {
      return getRestaurantsList(resId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurantsList value) getRestaurantsList,
  }) {
    return getRestaurantsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRestaurantsList value)? getRestaurantsList,
  }) {
    return getRestaurantsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurantsList value)? getRestaurantsList,
    required TResult orElse(),
  }) {
    if (getRestaurantsList != null) {
      return getRestaurantsList(this);
    }
    return orElse();
  }
}

abstract class GetRestaurantsList implements RestaurantListEvent {
  const factory GetRestaurantsList(final String resId) = _$GetRestaurantsList;

  @override
  String get resId;
  @override
  @JsonKey(ignore: true)
  _$$GetRestaurantsListCopyWith<_$GetRestaurantsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RestaurantListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() restaurantsListloading,
    required TResult Function(List<Restaurant> restaurants)
        restaurantsListloaded,
    required TResult Function(String errorMsg) restaurantsListError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? restaurantsListloading,
    TResult? Function(List<Restaurant> restaurants)? restaurantsListloaded,
    TResult? Function(String errorMsg)? restaurantsListError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? restaurantsListloading,
    TResult Function(List<Restaurant> restaurants)? restaurantsListloaded,
    TResult Function(String errorMsg)? restaurantsListError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RestaurantsListLoading value)
        restaurantsListloading,
    required TResult Function(RestaurantsListLoaded value)
        restaurantsListloaded,
    required TResult Function(RestaurantsListError value) restaurantsListError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RestaurantsListLoading value)? restaurantsListloading,
    TResult? Function(RestaurantsListLoaded value)? restaurantsListloaded,
    TResult? Function(RestaurantsListError value)? restaurantsListError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RestaurantsListLoading value)? restaurantsListloading,
    TResult Function(RestaurantsListLoaded value)? restaurantsListloaded,
    TResult Function(RestaurantsListError value)? restaurantsListError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantListStateCopyWith<$Res> {
  factory $RestaurantListStateCopyWith(
          RestaurantListState value, $Res Function(RestaurantListState) then) =
      _$RestaurantListStateCopyWithImpl<$Res, RestaurantListState>;
}

/// @nodoc
class _$RestaurantListStateCopyWithImpl<$Res, $Val extends RestaurantListState>
    implements $RestaurantListStateCopyWith<$Res> {
  _$RestaurantListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$RestaurantListStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'RestaurantListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() restaurantsListloading,
    required TResult Function(List<Restaurant> restaurants)
        restaurantsListloaded,
    required TResult Function(String errorMsg) restaurantsListError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? restaurantsListloading,
    TResult? Function(List<Restaurant> restaurants)? restaurantsListloaded,
    TResult? Function(String errorMsg)? restaurantsListError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? restaurantsListloading,
    TResult Function(List<Restaurant> restaurants)? restaurantsListloaded,
    TResult Function(String errorMsg)? restaurantsListError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RestaurantsListLoading value)
        restaurantsListloading,
    required TResult Function(RestaurantsListLoaded value)
        restaurantsListloaded,
    required TResult Function(RestaurantsListError value) restaurantsListError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RestaurantsListLoading value)? restaurantsListloading,
    TResult? Function(RestaurantsListLoaded value)? restaurantsListloaded,
    TResult? Function(RestaurantsListError value)? restaurantsListError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RestaurantsListLoading value)? restaurantsListloading,
    TResult Function(RestaurantsListLoaded value)? restaurantsListloaded,
    TResult Function(RestaurantsListError value)? restaurantsListError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RestaurantListState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$RestaurantsListLoadingCopyWith<$Res> {
  factory _$$RestaurantsListLoadingCopyWith(_$RestaurantsListLoading value,
          $Res Function(_$RestaurantsListLoading) then) =
      __$$RestaurantsListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestaurantsListLoadingCopyWithImpl<$Res>
    extends _$RestaurantListStateCopyWithImpl<$Res, _$RestaurantsListLoading>
    implements _$$RestaurantsListLoadingCopyWith<$Res> {
  __$$RestaurantsListLoadingCopyWithImpl(_$RestaurantsListLoading _value,
      $Res Function(_$RestaurantsListLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RestaurantsListLoading implements RestaurantsListLoading {
  const _$RestaurantsListLoading();

  @override
  String toString() {
    return 'RestaurantListState.restaurantsListloading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RestaurantsListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() restaurantsListloading,
    required TResult Function(List<Restaurant> restaurants)
        restaurantsListloaded,
    required TResult Function(String errorMsg) restaurantsListError,
  }) {
    return restaurantsListloading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? restaurantsListloading,
    TResult? Function(List<Restaurant> restaurants)? restaurantsListloaded,
    TResult? Function(String errorMsg)? restaurantsListError,
  }) {
    return restaurantsListloading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? restaurantsListloading,
    TResult Function(List<Restaurant> restaurants)? restaurantsListloaded,
    TResult Function(String errorMsg)? restaurantsListError,
    required TResult orElse(),
  }) {
    if (restaurantsListloading != null) {
      return restaurantsListloading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RestaurantsListLoading value)
        restaurantsListloading,
    required TResult Function(RestaurantsListLoaded value)
        restaurantsListloaded,
    required TResult Function(RestaurantsListError value) restaurantsListError,
  }) {
    return restaurantsListloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RestaurantsListLoading value)? restaurantsListloading,
    TResult? Function(RestaurantsListLoaded value)? restaurantsListloaded,
    TResult? Function(RestaurantsListError value)? restaurantsListError,
  }) {
    return restaurantsListloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RestaurantsListLoading value)? restaurantsListloading,
    TResult Function(RestaurantsListLoaded value)? restaurantsListloaded,
    TResult Function(RestaurantsListError value)? restaurantsListError,
    required TResult orElse(),
  }) {
    if (restaurantsListloading != null) {
      return restaurantsListloading(this);
    }
    return orElse();
  }
}

abstract class RestaurantsListLoading implements RestaurantListState {
  const factory RestaurantsListLoading() = _$RestaurantsListLoading;
}

/// @nodoc
abstract class _$$RestaurantsListLoadedCopyWith<$Res> {
  factory _$$RestaurantsListLoadedCopyWith(_$RestaurantsListLoaded value,
          $Res Function(_$RestaurantsListLoaded) then) =
      __$$RestaurantsListLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Restaurant> restaurants});
}

/// @nodoc
class __$$RestaurantsListLoadedCopyWithImpl<$Res>
    extends _$RestaurantListStateCopyWithImpl<$Res, _$RestaurantsListLoaded>
    implements _$$RestaurantsListLoadedCopyWith<$Res> {
  __$$RestaurantsListLoadedCopyWithImpl(_$RestaurantsListLoaded _value,
      $Res Function(_$RestaurantsListLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurants = null,
  }) {
    return _then(_$RestaurantsListLoaded(
      null == restaurants
          ? _value._restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
    ));
  }
}

/// @nodoc

class _$RestaurantsListLoaded implements RestaurantsListLoaded {
  const _$RestaurantsListLoaded(final List<Restaurant> restaurants)
      : _restaurants = restaurants;

  final List<Restaurant> _restaurants;
  @override
  List<Restaurant> get restaurants {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restaurants);
  }

  @override
  String toString() {
    return 'RestaurantListState.restaurantsListloaded(restaurants: $restaurants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantsListLoaded &&
            const DeepCollectionEquality()
                .equals(other._restaurants, _restaurants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_restaurants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantsListLoadedCopyWith<_$RestaurantsListLoaded> get copyWith =>
      __$$RestaurantsListLoadedCopyWithImpl<_$RestaurantsListLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() restaurantsListloading,
    required TResult Function(List<Restaurant> restaurants)
        restaurantsListloaded,
    required TResult Function(String errorMsg) restaurantsListError,
  }) {
    return restaurantsListloaded(restaurants);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? restaurantsListloading,
    TResult? Function(List<Restaurant> restaurants)? restaurantsListloaded,
    TResult? Function(String errorMsg)? restaurantsListError,
  }) {
    return restaurantsListloaded?.call(restaurants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? restaurantsListloading,
    TResult Function(List<Restaurant> restaurants)? restaurantsListloaded,
    TResult Function(String errorMsg)? restaurantsListError,
    required TResult orElse(),
  }) {
    if (restaurantsListloaded != null) {
      return restaurantsListloaded(restaurants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RestaurantsListLoading value)
        restaurantsListloading,
    required TResult Function(RestaurantsListLoaded value)
        restaurantsListloaded,
    required TResult Function(RestaurantsListError value) restaurantsListError,
  }) {
    return restaurantsListloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RestaurantsListLoading value)? restaurantsListloading,
    TResult? Function(RestaurantsListLoaded value)? restaurantsListloaded,
    TResult? Function(RestaurantsListError value)? restaurantsListError,
  }) {
    return restaurantsListloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RestaurantsListLoading value)? restaurantsListloading,
    TResult Function(RestaurantsListLoaded value)? restaurantsListloaded,
    TResult Function(RestaurantsListError value)? restaurantsListError,
    required TResult orElse(),
  }) {
    if (restaurantsListloaded != null) {
      return restaurantsListloaded(this);
    }
    return orElse();
  }
}

abstract class RestaurantsListLoaded implements RestaurantListState {
  const factory RestaurantsListLoaded(final List<Restaurant> restaurants) =
      _$RestaurantsListLoaded;

  List<Restaurant> get restaurants;
  @JsonKey(ignore: true)
  _$$RestaurantsListLoadedCopyWith<_$RestaurantsListLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestaurantsListErrorCopyWith<$Res> {
  factory _$$RestaurantsListErrorCopyWith(_$RestaurantsListError value,
          $Res Function(_$RestaurantsListError) then) =
      __$$RestaurantsListErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$RestaurantsListErrorCopyWithImpl<$Res>
    extends _$RestaurantListStateCopyWithImpl<$Res, _$RestaurantsListError>
    implements _$$RestaurantsListErrorCopyWith<$Res> {
  __$$RestaurantsListErrorCopyWithImpl(_$RestaurantsListError _value,
      $Res Function(_$RestaurantsListError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$RestaurantsListError(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RestaurantsListError implements RestaurantsListError {
  const _$RestaurantsListError(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'RestaurantListState.restaurantsListError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantsListError &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantsListErrorCopyWith<_$RestaurantsListError> get copyWith =>
      __$$RestaurantsListErrorCopyWithImpl<_$RestaurantsListError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() restaurantsListloading,
    required TResult Function(List<Restaurant> restaurants)
        restaurantsListloaded,
    required TResult Function(String errorMsg) restaurantsListError,
  }) {
    return restaurantsListError(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? restaurantsListloading,
    TResult? Function(List<Restaurant> restaurants)? restaurantsListloaded,
    TResult? Function(String errorMsg)? restaurantsListError,
  }) {
    return restaurantsListError?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? restaurantsListloading,
    TResult Function(List<Restaurant> restaurants)? restaurantsListloaded,
    TResult Function(String errorMsg)? restaurantsListError,
    required TResult orElse(),
  }) {
    if (restaurantsListError != null) {
      return restaurantsListError(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RestaurantsListLoading value)
        restaurantsListloading,
    required TResult Function(RestaurantsListLoaded value)
        restaurantsListloaded,
    required TResult Function(RestaurantsListError value) restaurantsListError,
  }) {
    return restaurantsListError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RestaurantsListLoading value)? restaurantsListloading,
    TResult? Function(RestaurantsListLoaded value)? restaurantsListloaded,
    TResult? Function(RestaurantsListError value)? restaurantsListError,
  }) {
    return restaurantsListError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RestaurantsListLoading value)? restaurantsListloading,
    TResult Function(RestaurantsListLoaded value)? restaurantsListloaded,
    TResult Function(RestaurantsListError value)? restaurantsListError,
    required TResult orElse(),
  }) {
    if (restaurantsListError != null) {
      return restaurantsListError(this);
    }
    return orElse();
  }
}

abstract class RestaurantsListError implements RestaurantListState {
  const factory RestaurantsListError(final String errorMsg) =
      _$RestaurantsListError;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$RestaurantsListErrorCopyWith<_$RestaurantsListError> get copyWith =>
      throw _privateConstructorUsedError;
}
