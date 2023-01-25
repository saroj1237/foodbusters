// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favourite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavouriteRestaurants,
    required TResult Function(String restId, bool isAdd) addFavouriteRestaurant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavouriteRestaurants,
    TResult? Function(String restId, bool isAdd)? addFavouriteRestaurant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavouriteRestaurants,
    TResult Function(String restId, bool isAdd)? addFavouriteRestaurant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavouriteRestaurants value)
        getFavouriteRestaurants,
    required TResult Function(AddFavouriteRestaurant value)
        addFavouriteRestaurant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFavouriteRestaurants value)? getFavouriteRestaurants,
    TResult? Function(AddFavouriteRestaurant value)? addFavouriteRestaurant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavouriteRestaurants value)? getFavouriteRestaurants,
    TResult Function(AddFavouriteRestaurant value)? addFavouriteRestaurant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteEventCopyWith<$Res> {
  factory $FavouriteEventCopyWith(
          FavouriteEvent value, $Res Function(FavouriteEvent) then) =
      _$FavouriteEventCopyWithImpl<$Res, FavouriteEvent>;
}

/// @nodoc
class _$FavouriteEventCopyWithImpl<$Res, $Val extends FavouriteEvent>
    implements $FavouriteEventCopyWith<$Res> {
  _$FavouriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFavouriteRestaurantsCopyWith<$Res> {
  factory _$$GetFavouriteRestaurantsCopyWith(_$GetFavouriteRestaurants value,
          $Res Function(_$GetFavouriteRestaurants) then) =
      __$$GetFavouriteRestaurantsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavouriteRestaurantsCopyWithImpl<$Res>
    extends _$FavouriteEventCopyWithImpl<$Res, _$GetFavouriteRestaurants>
    implements _$$GetFavouriteRestaurantsCopyWith<$Res> {
  __$$GetFavouriteRestaurantsCopyWithImpl(_$GetFavouriteRestaurants _value,
      $Res Function(_$GetFavouriteRestaurants) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFavouriteRestaurants implements GetFavouriteRestaurants {
  const _$GetFavouriteRestaurants();

  @override
  String toString() {
    return 'FavouriteEvent.getFavouriteRestaurants()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavouriteRestaurants);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavouriteRestaurants,
    required TResult Function(String restId, bool isAdd) addFavouriteRestaurant,
  }) {
    return getFavouriteRestaurants();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavouriteRestaurants,
    TResult? Function(String restId, bool isAdd)? addFavouriteRestaurant,
  }) {
    return getFavouriteRestaurants?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavouriteRestaurants,
    TResult Function(String restId, bool isAdd)? addFavouriteRestaurant,
    required TResult orElse(),
  }) {
    if (getFavouriteRestaurants != null) {
      return getFavouriteRestaurants();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavouriteRestaurants value)
        getFavouriteRestaurants,
    required TResult Function(AddFavouriteRestaurant value)
        addFavouriteRestaurant,
  }) {
    return getFavouriteRestaurants(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFavouriteRestaurants value)? getFavouriteRestaurants,
    TResult? Function(AddFavouriteRestaurant value)? addFavouriteRestaurant,
  }) {
    return getFavouriteRestaurants?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavouriteRestaurants value)? getFavouriteRestaurants,
    TResult Function(AddFavouriteRestaurant value)? addFavouriteRestaurant,
    required TResult orElse(),
  }) {
    if (getFavouriteRestaurants != null) {
      return getFavouriteRestaurants(this);
    }
    return orElse();
  }
}

abstract class GetFavouriteRestaurants implements FavouriteEvent {
  const factory GetFavouriteRestaurants() = _$GetFavouriteRestaurants;
}

/// @nodoc
abstract class _$$AddFavouriteRestaurantCopyWith<$Res> {
  factory _$$AddFavouriteRestaurantCopyWith(_$AddFavouriteRestaurant value,
          $Res Function(_$AddFavouriteRestaurant) then) =
      __$$AddFavouriteRestaurantCopyWithImpl<$Res>;
  @useResult
  $Res call({String restId, bool isAdd});
}

/// @nodoc
class __$$AddFavouriteRestaurantCopyWithImpl<$Res>
    extends _$FavouriteEventCopyWithImpl<$Res, _$AddFavouriteRestaurant>
    implements _$$AddFavouriteRestaurantCopyWith<$Res> {
  __$$AddFavouriteRestaurantCopyWithImpl(_$AddFavouriteRestaurant _value,
      $Res Function(_$AddFavouriteRestaurant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restId = null,
    Object? isAdd = null,
  }) {
    return _then(_$AddFavouriteRestaurant(
      null == restId
          ? _value.restId
          : restId // ignore: cast_nullable_to_non_nullable
              as String,
      null == isAdd
          ? _value.isAdd
          : isAdd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddFavouriteRestaurant implements AddFavouriteRestaurant {
  const _$AddFavouriteRestaurant(this.restId, this.isAdd);

  @override
  final String restId;
  @override
  final bool isAdd;

  @override
  String toString() {
    return 'FavouriteEvent.addFavouriteRestaurant(restId: $restId, isAdd: $isAdd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavouriteRestaurant &&
            (identical(other.restId, restId) || other.restId == restId) &&
            (identical(other.isAdd, isAdd) || other.isAdd == isAdd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restId, isAdd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavouriteRestaurantCopyWith<_$AddFavouriteRestaurant> get copyWith =>
      __$$AddFavouriteRestaurantCopyWithImpl<_$AddFavouriteRestaurant>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavouriteRestaurants,
    required TResult Function(String restId, bool isAdd) addFavouriteRestaurant,
  }) {
    return addFavouriteRestaurant(restId, isAdd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavouriteRestaurants,
    TResult? Function(String restId, bool isAdd)? addFavouriteRestaurant,
  }) {
    return addFavouriteRestaurant?.call(restId, isAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavouriteRestaurants,
    TResult Function(String restId, bool isAdd)? addFavouriteRestaurant,
    required TResult orElse(),
  }) {
    if (addFavouriteRestaurant != null) {
      return addFavouriteRestaurant(restId, isAdd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavouriteRestaurants value)
        getFavouriteRestaurants,
    required TResult Function(AddFavouriteRestaurant value)
        addFavouriteRestaurant,
  }) {
    return addFavouriteRestaurant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFavouriteRestaurants value)? getFavouriteRestaurants,
    TResult? Function(AddFavouriteRestaurant value)? addFavouriteRestaurant,
  }) {
    return addFavouriteRestaurant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavouriteRestaurants value)? getFavouriteRestaurants,
    TResult Function(AddFavouriteRestaurant value)? addFavouriteRestaurant,
    required TResult orElse(),
  }) {
    if (addFavouriteRestaurant != null) {
      return addFavouriteRestaurant(this);
    }
    return orElse();
  }
}

abstract class AddFavouriteRestaurant implements FavouriteEvent {
  const factory AddFavouriteRestaurant(final String restId, final bool isAdd) =
      _$AddFavouriteRestaurant;

  String get restId;
  bool get isAdd;
  @JsonKey(ignore: true)
  _$$AddFavouriteRestaurantCopyWith<_$AddFavouriteRestaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavouriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favLoading,
    required TResult Function(List<Restaurant> favRestaurants) favRestLoaded,
    required TResult Function(String error) favRestFailure,
    required TResult Function(String successMessage) addFavRestSuccess,
    required TResult Function(String error) addFavRestFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favLoading,
    TResult? Function(List<Restaurant> favRestaurants)? favRestLoaded,
    TResult? Function(String error)? favRestFailure,
    TResult? Function(String successMessage)? addFavRestSuccess,
    TResult? Function(String error)? addFavRestFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favLoading,
    TResult Function(List<Restaurant> favRestaurants)? favRestLoaded,
    TResult Function(String error)? favRestFailure,
    TResult Function(String successMessage)? addFavRestSuccess,
    TResult Function(String error)? addFavRestFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FavLoading value) favLoading,
    required TResult Function(FavRestLoaded value) favRestLoaded,
    required TResult Function(FavRestFailure value) favRestFailure,
    required TResult Function(AddFavRestSuccess value) addFavRestSuccess,
    required TResult Function(AddFavRestFailure value) addFavRestFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FavLoading value)? favLoading,
    TResult? Function(FavRestLoaded value)? favRestLoaded,
    TResult? Function(FavRestFailure value)? favRestFailure,
    TResult? Function(AddFavRestSuccess value)? addFavRestSuccess,
    TResult? Function(AddFavRestFailure value)? addFavRestFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FavLoading value)? favLoading,
    TResult Function(FavRestLoaded value)? favRestLoaded,
    TResult Function(FavRestFailure value)? favRestFailure,
    TResult Function(AddFavRestSuccess value)? addFavRestSuccess,
    TResult Function(AddFavRestFailure value)? addFavRestFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteStateCopyWith<$Res> {
  factory $FavouriteStateCopyWith(
          FavouriteState value, $Res Function(FavouriteState) then) =
      _$FavouriteStateCopyWithImpl<$Res, FavouriteState>;
}

/// @nodoc
class _$FavouriteStateCopyWithImpl<$Res, $Val extends FavouriteState>
    implements $FavouriteStateCopyWith<$Res> {
  _$FavouriteStateCopyWithImpl(this._value, this._then);

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
    extends _$FavouriteStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'FavouriteState.initial()';
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
    required TResult Function() favLoading,
    required TResult Function(List<Restaurant> favRestaurants) favRestLoaded,
    required TResult Function(String error) favRestFailure,
    required TResult Function(String successMessage) addFavRestSuccess,
    required TResult Function(String error) addFavRestFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favLoading,
    TResult? Function(List<Restaurant> favRestaurants)? favRestLoaded,
    TResult? Function(String error)? favRestFailure,
    TResult? Function(String successMessage)? addFavRestSuccess,
    TResult? Function(String error)? addFavRestFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favLoading,
    TResult Function(List<Restaurant> favRestaurants)? favRestLoaded,
    TResult Function(String error)? favRestFailure,
    TResult Function(String successMessage)? addFavRestSuccess,
    TResult Function(String error)? addFavRestFailure,
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
    required TResult Function(FavLoading value) favLoading,
    required TResult Function(FavRestLoaded value) favRestLoaded,
    required TResult Function(FavRestFailure value) favRestFailure,
    required TResult Function(AddFavRestSuccess value) addFavRestSuccess,
    required TResult Function(AddFavRestFailure value) addFavRestFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FavLoading value)? favLoading,
    TResult? Function(FavRestLoaded value)? favRestLoaded,
    TResult? Function(FavRestFailure value)? favRestFailure,
    TResult? Function(AddFavRestSuccess value)? addFavRestSuccess,
    TResult? Function(AddFavRestFailure value)? addFavRestFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FavLoading value)? favLoading,
    TResult Function(FavRestLoaded value)? favRestLoaded,
    TResult Function(FavRestFailure value)? favRestFailure,
    TResult Function(AddFavRestSuccess value)? addFavRestSuccess,
    TResult Function(AddFavRestFailure value)? addFavRestFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FavouriteState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$FavLoadingCopyWith<$Res> {
  factory _$$FavLoadingCopyWith(
          _$FavLoading value, $Res Function(_$FavLoading) then) =
      __$$FavLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavLoadingCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$FavLoading>
    implements _$$FavLoadingCopyWith<$Res> {
  __$$FavLoadingCopyWithImpl(
      _$FavLoading _value, $Res Function(_$FavLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavLoading implements FavLoading {
  const _$FavLoading();

  @override
  String toString() {
    return 'FavouriteState.favLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favLoading,
    required TResult Function(List<Restaurant> favRestaurants) favRestLoaded,
    required TResult Function(String error) favRestFailure,
    required TResult Function(String successMessage) addFavRestSuccess,
    required TResult Function(String error) addFavRestFailure,
  }) {
    return favLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favLoading,
    TResult? Function(List<Restaurant> favRestaurants)? favRestLoaded,
    TResult? Function(String error)? favRestFailure,
    TResult? Function(String successMessage)? addFavRestSuccess,
    TResult? Function(String error)? addFavRestFailure,
  }) {
    return favLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favLoading,
    TResult Function(List<Restaurant> favRestaurants)? favRestLoaded,
    TResult Function(String error)? favRestFailure,
    TResult Function(String successMessage)? addFavRestSuccess,
    TResult Function(String error)? addFavRestFailure,
    required TResult orElse(),
  }) {
    if (favLoading != null) {
      return favLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FavLoading value) favLoading,
    required TResult Function(FavRestLoaded value) favRestLoaded,
    required TResult Function(FavRestFailure value) favRestFailure,
    required TResult Function(AddFavRestSuccess value) addFavRestSuccess,
    required TResult Function(AddFavRestFailure value) addFavRestFailure,
  }) {
    return favLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FavLoading value)? favLoading,
    TResult? Function(FavRestLoaded value)? favRestLoaded,
    TResult? Function(FavRestFailure value)? favRestFailure,
    TResult? Function(AddFavRestSuccess value)? addFavRestSuccess,
    TResult? Function(AddFavRestFailure value)? addFavRestFailure,
  }) {
    return favLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FavLoading value)? favLoading,
    TResult Function(FavRestLoaded value)? favRestLoaded,
    TResult Function(FavRestFailure value)? favRestFailure,
    TResult Function(AddFavRestSuccess value)? addFavRestSuccess,
    TResult Function(AddFavRestFailure value)? addFavRestFailure,
    required TResult orElse(),
  }) {
    if (favLoading != null) {
      return favLoading(this);
    }
    return orElse();
  }
}

abstract class FavLoading implements FavouriteState {
  const factory FavLoading() = _$FavLoading;
}

/// @nodoc
abstract class _$$FavRestLoadedCopyWith<$Res> {
  factory _$$FavRestLoadedCopyWith(
          _$FavRestLoaded value, $Res Function(_$FavRestLoaded) then) =
      __$$FavRestLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Restaurant> favRestaurants});
}

/// @nodoc
class __$$FavRestLoadedCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$FavRestLoaded>
    implements _$$FavRestLoadedCopyWith<$Res> {
  __$$FavRestLoadedCopyWithImpl(
      _$FavRestLoaded _value, $Res Function(_$FavRestLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favRestaurants = null,
  }) {
    return _then(_$FavRestLoaded(
      null == favRestaurants
          ? _value._favRestaurants
          : favRestaurants // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
    ));
  }
}

/// @nodoc

class _$FavRestLoaded implements FavRestLoaded {
  const _$FavRestLoaded(final List<Restaurant> favRestaurants)
      : _favRestaurants = favRestaurants;

  final List<Restaurant> _favRestaurants;
  @override
  List<Restaurant> get favRestaurants {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favRestaurants);
  }

  @override
  String toString() {
    return 'FavouriteState.favRestLoaded(favRestaurants: $favRestaurants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavRestLoaded &&
            const DeepCollectionEquality()
                .equals(other._favRestaurants, _favRestaurants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favRestaurants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavRestLoadedCopyWith<_$FavRestLoaded> get copyWith =>
      __$$FavRestLoadedCopyWithImpl<_$FavRestLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favLoading,
    required TResult Function(List<Restaurant> favRestaurants) favRestLoaded,
    required TResult Function(String error) favRestFailure,
    required TResult Function(String successMessage) addFavRestSuccess,
    required TResult Function(String error) addFavRestFailure,
  }) {
    return favRestLoaded(favRestaurants);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favLoading,
    TResult? Function(List<Restaurant> favRestaurants)? favRestLoaded,
    TResult? Function(String error)? favRestFailure,
    TResult? Function(String successMessage)? addFavRestSuccess,
    TResult? Function(String error)? addFavRestFailure,
  }) {
    return favRestLoaded?.call(favRestaurants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favLoading,
    TResult Function(List<Restaurant> favRestaurants)? favRestLoaded,
    TResult Function(String error)? favRestFailure,
    TResult Function(String successMessage)? addFavRestSuccess,
    TResult Function(String error)? addFavRestFailure,
    required TResult orElse(),
  }) {
    if (favRestLoaded != null) {
      return favRestLoaded(favRestaurants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FavLoading value) favLoading,
    required TResult Function(FavRestLoaded value) favRestLoaded,
    required TResult Function(FavRestFailure value) favRestFailure,
    required TResult Function(AddFavRestSuccess value) addFavRestSuccess,
    required TResult Function(AddFavRestFailure value) addFavRestFailure,
  }) {
    return favRestLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FavLoading value)? favLoading,
    TResult? Function(FavRestLoaded value)? favRestLoaded,
    TResult? Function(FavRestFailure value)? favRestFailure,
    TResult? Function(AddFavRestSuccess value)? addFavRestSuccess,
    TResult? Function(AddFavRestFailure value)? addFavRestFailure,
  }) {
    return favRestLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FavLoading value)? favLoading,
    TResult Function(FavRestLoaded value)? favRestLoaded,
    TResult Function(FavRestFailure value)? favRestFailure,
    TResult Function(AddFavRestSuccess value)? addFavRestSuccess,
    TResult Function(AddFavRestFailure value)? addFavRestFailure,
    required TResult orElse(),
  }) {
    if (favRestLoaded != null) {
      return favRestLoaded(this);
    }
    return orElse();
  }
}

abstract class FavRestLoaded implements FavouriteState {
  const factory FavRestLoaded(final List<Restaurant> favRestaurants) =
      _$FavRestLoaded;

  List<Restaurant> get favRestaurants;
  @JsonKey(ignore: true)
  _$$FavRestLoadedCopyWith<_$FavRestLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavRestFailureCopyWith<$Res> {
  factory _$$FavRestFailureCopyWith(
          _$FavRestFailure value, $Res Function(_$FavRestFailure) then) =
      __$$FavRestFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FavRestFailureCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$FavRestFailure>
    implements _$$FavRestFailureCopyWith<$Res> {
  __$$FavRestFailureCopyWithImpl(
      _$FavRestFailure _value, $Res Function(_$FavRestFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FavRestFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavRestFailure implements FavRestFailure {
  const _$FavRestFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FavouriteState.favRestFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavRestFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavRestFailureCopyWith<_$FavRestFailure> get copyWith =>
      __$$FavRestFailureCopyWithImpl<_$FavRestFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favLoading,
    required TResult Function(List<Restaurant> favRestaurants) favRestLoaded,
    required TResult Function(String error) favRestFailure,
    required TResult Function(String successMessage) addFavRestSuccess,
    required TResult Function(String error) addFavRestFailure,
  }) {
    return favRestFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favLoading,
    TResult? Function(List<Restaurant> favRestaurants)? favRestLoaded,
    TResult? Function(String error)? favRestFailure,
    TResult? Function(String successMessage)? addFavRestSuccess,
    TResult? Function(String error)? addFavRestFailure,
  }) {
    return favRestFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favLoading,
    TResult Function(List<Restaurant> favRestaurants)? favRestLoaded,
    TResult Function(String error)? favRestFailure,
    TResult Function(String successMessage)? addFavRestSuccess,
    TResult Function(String error)? addFavRestFailure,
    required TResult orElse(),
  }) {
    if (favRestFailure != null) {
      return favRestFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FavLoading value) favLoading,
    required TResult Function(FavRestLoaded value) favRestLoaded,
    required TResult Function(FavRestFailure value) favRestFailure,
    required TResult Function(AddFavRestSuccess value) addFavRestSuccess,
    required TResult Function(AddFavRestFailure value) addFavRestFailure,
  }) {
    return favRestFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FavLoading value)? favLoading,
    TResult? Function(FavRestLoaded value)? favRestLoaded,
    TResult? Function(FavRestFailure value)? favRestFailure,
    TResult? Function(AddFavRestSuccess value)? addFavRestSuccess,
    TResult? Function(AddFavRestFailure value)? addFavRestFailure,
  }) {
    return favRestFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FavLoading value)? favLoading,
    TResult Function(FavRestLoaded value)? favRestLoaded,
    TResult Function(FavRestFailure value)? favRestFailure,
    TResult Function(AddFavRestSuccess value)? addFavRestSuccess,
    TResult Function(AddFavRestFailure value)? addFavRestFailure,
    required TResult orElse(),
  }) {
    if (favRestFailure != null) {
      return favRestFailure(this);
    }
    return orElse();
  }
}

abstract class FavRestFailure implements FavouriteState {
  const factory FavRestFailure(final String error) = _$FavRestFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$FavRestFailureCopyWith<_$FavRestFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFavRestSuccessCopyWith<$Res> {
  factory _$$AddFavRestSuccessCopyWith(
          _$AddFavRestSuccess value, $Res Function(_$AddFavRestSuccess) then) =
      __$$AddFavRestSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String successMessage});
}

/// @nodoc
class __$$AddFavRestSuccessCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$AddFavRestSuccess>
    implements _$$AddFavRestSuccessCopyWith<$Res> {
  __$$AddFavRestSuccessCopyWithImpl(
      _$AddFavRestSuccess _value, $Res Function(_$AddFavRestSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMessage = null,
  }) {
    return _then(_$AddFavRestSuccess(
      null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddFavRestSuccess implements AddFavRestSuccess {
  const _$AddFavRestSuccess(this.successMessage);

  @override
  final String successMessage;

  @override
  String toString() {
    return 'FavouriteState.addFavRestSuccess(successMessage: $successMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavRestSuccess &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavRestSuccessCopyWith<_$AddFavRestSuccess> get copyWith =>
      __$$AddFavRestSuccessCopyWithImpl<_$AddFavRestSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favLoading,
    required TResult Function(List<Restaurant> favRestaurants) favRestLoaded,
    required TResult Function(String error) favRestFailure,
    required TResult Function(String successMessage) addFavRestSuccess,
    required TResult Function(String error) addFavRestFailure,
  }) {
    return addFavRestSuccess(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favLoading,
    TResult? Function(List<Restaurant> favRestaurants)? favRestLoaded,
    TResult? Function(String error)? favRestFailure,
    TResult? Function(String successMessage)? addFavRestSuccess,
    TResult? Function(String error)? addFavRestFailure,
  }) {
    return addFavRestSuccess?.call(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favLoading,
    TResult Function(List<Restaurant> favRestaurants)? favRestLoaded,
    TResult Function(String error)? favRestFailure,
    TResult Function(String successMessage)? addFavRestSuccess,
    TResult Function(String error)? addFavRestFailure,
    required TResult orElse(),
  }) {
    if (addFavRestSuccess != null) {
      return addFavRestSuccess(successMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FavLoading value) favLoading,
    required TResult Function(FavRestLoaded value) favRestLoaded,
    required TResult Function(FavRestFailure value) favRestFailure,
    required TResult Function(AddFavRestSuccess value) addFavRestSuccess,
    required TResult Function(AddFavRestFailure value) addFavRestFailure,
  }) {
    return addFavRestSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FavLoading value)? favLoading,
    TResult? Function(FavRestLoaded value)? favRestLoaded,
    TResult? Function(FavRestFailure value)? favRestFailure,
    TResult? Function(AddFavRestSuccess value)? addFavRestSuccess,
    TResult? Function(AddFavRestFailure value)? addFavRestFailure,
  }) {
    return addFavRestSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FavLoading value)? favLoading,
    TResult Function(FavRestLoaded value)? favRestLoaded,
    TResult Function(FavRestFailure value)? favRestFailure,
    TResult Function(AddFavRestSuccess value)? addFavRestSuccess,
    TResult Function(AddFavRestFailure value)? addFavRestFailure,
    required TResult orElse(),
  }) {
    if (addFavRestSuccess != null) {
      return addFavRestSuccess(this);
    }
    return orElse();
  }
}

abstract class AddFavRestSuccess implements FavouriteState {
  const factory AddFavRestSuccess(final String successMessage) =
      _$AddFavRestSuccess;

  String get successMessage;
  @JsonKey(ignore: true)
  _$$AddFavRestSuccessCopyWith<_$AddFavRestSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFavRestFailureCopyWith<$Res> {
  factory _$$AddFavRestFailureCopyWith(
          _$AddFavRestFailure value, $Res Function(_$AddFavRestFailure) then) =
      __$$AddFavRestFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AddFavRestFailureCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$AddFavRestFailure>
    implements _$$AddFavRestFailureCopyWith<$Res> {
  __$$AddFavRestFailureCopyWithImpl(
      _$AddFavRestFailure _value, $Res Function(_$AddFavRestFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AddFavRestFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddFavRestFailure implements AddFavRestFailure {
  const _$AddFavRestFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FavouriteState.addFavRestFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavRestFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavRestFailureCopyWith<_$AddFavRestFailure> get copyWith =>
      __$$AddFavRestFailureCopyWithImpl<_$AddFavRestFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favLoading,
    required TResult Function(List<Restaurant> favRestaurants) favRestLoaded,
    required TResult Function(String error) favRestFailure,
    required TResult Function(String successMessage) addFavRestSuccess,
    required TResult Function(String error) addFavRestFailure,
  }) {
    return addFavRestFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favLoading,
    TResult? Function(List<Restaurant> favRestaurants)? favRestLoaded,
    TResult? Function(String error)? favRestFailure,
    TResult? Function(String successMessage)? addFavRestSuccess,
    TResult? Function(String error)? addFavRestFailure,
  }) {
    return addFavRestFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favLoading,
    TResult Function(List<Restaurant> favRestaurants)? favRestLoaded,
    TResult Function(String error)? favRestFailure,
    TResult Function(String successMessage)? addFavRestSuccess,
    TResult Function(String error)? addFavRestFailure,
    required TResult orElse(),
  }) {
    if (addFavRestFailure != null) {
      return addFavRestFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FavLoading value) favLoading,
    required TResult Function(FavRestLoaded value) favRestLoaded,
    required TResult Function(FavRestFailure value) favRestFailure,
    required TResult Function(AddFavRestSuccess value) addFavRestSuccess,
    required TResult Function(AddFavRestFailure value) addFavRestFailure,
  }) {
    return addFavRestFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FavLoading value)? favLoading,
    TResult? Function(FavRestLoaded value)? favRestLoaded,
    TResult? Function(FavRestFailure value)? favRestFailure,
    TResult? Function(AddFavRestSuccess value)? addFavRestSuccess,
    TResult? Function(AddFavRestFailure value)? addFavRestFailure,
  }) {
    return addFavRestFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FavLoading value)? favLoading,
    TResult Function(FavRestLoaded value)? favRestLoaded,
    TResult Function(FavRestFailure value)? favRestFailure,
    TResult Function(AddFavRestSuccess value)? addFavRestSuccess,
    TResult Function(AddFavRestFailure value)? addFavRestFailure,
    required TResult orElse(),
  }) {
    if (addFavRestFailure != null) {
      return addFavRestFailure(this);
    }
    return orElse();
  }
}

abstract class AddFavRestFailure implements FavouriteState {
  const factory AddFavRestFailure(final String error) = _$AddFavRestFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$AddFavRestFailureCopyWith<_$AddFavRestFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
