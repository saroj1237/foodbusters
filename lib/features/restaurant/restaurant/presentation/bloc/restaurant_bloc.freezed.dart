// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restaurant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RestaurantEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getRestaurantList,
    required TResult Function(String restaurantId) getRestaturantDetail,
    required TResult Function(String restaurantId) getResMenu,
    required TResult Function(String restaurantId) getResMenuNxtPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getRestaurantList,
    TResult? Function(String restaurantId)? getRestaturantDetail,
    TResult? Function(String restaurantId)? getResMenu,
    TResult? Function(String restaurantId)? getResMenuNxtPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getRestaurantList,
    TResult Function(String restaurantId)? getRestaturantDetail,
    TResult Function(String restaurantId)? getResMenu,
    TResult Function(String restaurantId)? getResMenuNxtPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurantList value) getRestaurantList,
    required TResult Function(GetRestaurantDetail value) getRestaturantDetail,
    required TResult Function(GetResMenu value) getResMenu,
    required TResult Function(GetResMenuNxtPage value) getResMenuNxtPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRestaurantList value)? getRestaurantList,
    TResult? Function(GetRestaurantDetail value)? getRestaturantDetail,
    TResult? Function(GetResMenu value)? getResMenu,
    TResult? Function(GetResMenuNxtPage value)? getResMenuNxtPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurantList value)? getRestaurantList,
    TResult Function(GetRestaurantDetail value)? getRestaturantDetail,
    TResult Function(GetResMenu value)? getResMenu,
    TResult Function(GetResMenuNxtPage value)? getResMenuNxtPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantEventCopyWith<$Res> {
  factory $RestaurantEventCopyWith(
          RestaurantEvent value, $Res Function(RestaurantEvent) then) =
      _$RestaurantEventCopyWithImpl<$Res, RestaurantEvent>;
}

/// @nodoc
class _$RestaurantEventCopyWithImpl<$Res, $Val extends RestaurantEvent>
    implements $RestaurantEventCopyWith<$Res> {
  _$RestaurantEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetRestaurantListCopyWith<$Res> {
  factory _$$GetRestaurantListCopyWith(
          _$GetRestaurantList value, $Res Function(_$GetRestaurantList) then) =
      __$$GetRestaurantListCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetRestaurantListCopyWithImpl<$Res>
    extends _$RestaurantEventCopyWithImpl<$Res, _$GetRestaurantList>
    implements _$$GetRestaurantListCopyWith<$Res> {
  __$$GetRestaurantListCopyWithImpl(
      _$GetRestaurantList _value, $Res Function(_$GetRestaurantList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetRestaurantList(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRestaurantList implements GetRestaurantList {
  const _$GetRestaurantList(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'RestaurantEvent.getRestaurantList(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRestaurantList &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRestaurantListCopyWith<_$GetRestaurantList> get copyWith =>
      __$$GetRestaurantListCopyWithImpl<_$GetRestaurantList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getRestaurantList,
    required TResult Function(String restaurantId) getRestaturantDetail,
    required TResult Function(String restaurantId) getResMenu,
    required TResult Function(String restaurantId) getResMenuNxtPage,
  }) {
    return getRestaurantList(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getRestaurantList,
    TResult? Function(String restaurantId)? getRestaturantDetail,
    TResult? Function(String restaurantId)? getResMenu,
    TResult? Function(String restaurantId)? getResMenuNxtPage,
  }) {
    return getRestaurantList?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getRestaurantList,
    TResult Function(String restaurantId)? getRestaturantDetail,
    TResult Function(String restaurantId)? getResMenu,
    TResult Function(String restaurantId)? getResMenuNxtPage,
    required TResult orElse(),
  }) {
    if (getRestaurantList != null) {
      return getRestaurantList(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurantList value) getRestaurantList,
    required TResult Function(GetRestaurantDetail value) getRestaturantDetail,
    required TResult Function(GetResMenu value) getResMenu,
    required TResult Function(GetResMenuNxtPage value) getResMenuNxtPage,
  }) {
    return getRestaurantList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRestaurantList value)? getRestaurantList,
    TResult? Function(GetRestaurantDetail value)? getRestaturantDetail,
    TResult? Function(GetResMenu value)? getResMenu,
    TResult? Function(GetResMenuNxtPage value)? getResMenuNxtPage,
  }) {
    return getRestaurantList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurantList value)? getRestaurantList,
    TResult Function(GetRestaurantDetail value)? getRestaturantDetail,
    TResult Function(GetResMenu value)? getResMenu,
    TResult Function(GetResMenuNxtPage value)? getResMenuNxtPage,
    required TResult orElse(),
  }) {
    if (getRestaurantList != null) {
      return getRestaurantList(this);
    }
    return orElse();
  }
}

abstract class GetRestaurantList implements RestaurantEvent {
  const factory GetRestaurantList(final String id) = _$GetRestaurantList;

  String get id;
  @JsonKey(ignore: true)
  _$$GetRestaurantListCopyWith<_$GetRestaurantList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRestaurantDetailCopyWith<$Res> {
  factory _$$GetRestaurantDetailCopyWith(_$GetRestaurantDetail value,
          $Res Function(_$GetRestaurantDetail) then) =
      __$$GetRestaurantDetailCopyWithImpl<$Res>;
  @useResult
  $Res call({String restaurantId});
}

/// @nodoc
class __$$GetRestaurantDetailCopyWithImpl<$Res>
    extends _$RestaurantEventCopyWithImpl<$Res, _$GetRestaurantDetail>
    implements _$$GetRestaurantDetailCopyWith<$Res> {
  __$$GetRestaurantDetailCopyWithImpl(
      _$GetRestaurantDetail _value, $Res Function(_$GetRestaurantDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
  }) {
    return _then(_$GetRestaurantDetail(
      null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRestaurantDetail implements GetRestaurantDetail {
  const _$GetRestaurantDetail(this.restaurantId);

  @override
  final String restaurantId;

  @override
  String toString() {
    return 'RestaurantEvent.getRestaturantDetail(restaurantId: $restaurantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRestaurantDetail &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restaurantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRestaurantDetailCopyWith<_$GetRestaurantDetail> get copyWith =>
      __$$GetRestaurantDetailCopyWithImpl<_$GetRestaurantDetail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getRestaurantList,
    required TResult Function(String restaurantId) getRestaturantDetail,
    required TResult Function(String restaurantId) getResMenu,
    required TResult Function(String restaurantId) getResMenuNxtPage,
  }) {
    return getRestaturantDetail(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getRestaurantList,
    TResult? Function(String restaurantId)? getRestaturantDetail,
    TResult? Function(String restaurantId)? getResMenu,
    TResult? Function(String restaurantId)? getResMenuNxtPage,
  }) {
    return getRestaturantDetail?.call(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getRestaurantList,
    TResult Function(String restaurantId)? getRestaturantDetail,
    TResult Function(String restaurantId)? getResMenu,
    TResult Function(String restaurantId)? getResMenuNxtPage,
    required TResult orElse(),
  }) {
    if (getRestaturantDetail != null) {
      return getRestaturantDetail(restaurantId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurantList value) getRestaurantList,
    required TResult Function(GetRestaurantDetail value) getRestaturantDetail,
    required TResult Function(GetResMenu value) getResMenu,
    required TResult Function(GetResMenuNxtPage value) getResMenuNxtPage,
  }) {
    return getRestaturantDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRestaurantList value)? getRestaurantList,
    TResult? Function(GetRestaurantDetail value)? getRestaturantDetail,
    TResult? Function(GetResMenu value)? getResMenu,
    TResult? Function(GetResMenuNxtPage value)? getResMenuNxtPage,
  }) {
    return getRestaturantDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurantList value)? getRestaurantList,
    TResult Function(GetRestaurantDetail value)? getRestaturantDetail,
    TResult Function(GetResMenu value)? getResMenu,
    TResult Function(GetResMenuNxtPage value)? getResMenuNxtPage,
    required TResult orElse(),
  }) {
    if (getRestaturantDetail != null) {
      return getRestaturantDetail(this);
    }
    return orElse();
  }
}

abstract class GetRestaurantDetail implements RestaurantEvent {
  const factory GetRestaurantDetail(final String restaurantId) =
      _$GetRestaurantDetail;

  String get restaurantId;
  @JsonKey(ignore: true)
  _$$GetRestaurantDetailCopyWith<_$GetRestaurantDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetResMenuCopyWith<$Res> {
  factory _$$GetResMenuCopyWith(
          _$GetResMenu value, $Res Function(_$GetResMenu) then) =
      __$$GetResMenuCopyWithImpl<$Res>;
  @useResult
  $Res call({String restaurantId});
}

/// @nodoc
class __$$GetResMenuCopyWithImpl<$Res>
    extends _$RestaurantEventCopyWithImpl<$Res, _$GetResMenu>
    implements _$$GetResMenuCopyWith<$Res> {
  __$$GetResMenuCopyWithImpl(
      _$GetResMenu _value, $Res Function(_$GetResMenu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
  }) {
    return _then(_$GetResMenu(
      null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetResMenu implements GetResMenu {
  const _$GetResMenu(this.restaurantId);

  @override
  final String restaurantId;

  @override
  String toString() {
    return 'RestaurantEvent.getResMenu(restaurantId: $restaurantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetResMenu &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restaurantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetResMenuCopyWith<_$GetResMenu> get copyWith =>
      __$$GetResMenuCopyWithImpl<_$GetResMenu>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getRestaurantList,
    required TResult Function(String restaurantId) getRestaturantDetail,
    required TResult Function(String restaurantId) getResMenu,
    required TResult Function(String restaurantId) getResMenuNxtPage,
  }) {
    return getResMenu(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getRestaurantList,
    TResult? Function(String restaurantId)? getRestaturantDetail,
    TResult? Function(String restaurantId)? getResMenu,
    TResult? Function(String restaurantId)? getResMenuNxtPage,
  }) {
    return getResMenu?.call(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getRestaurantList,
    TResult Function(String restaurantId)? getRestaturantDetail,
    TResult Function(String restaurantId)? getResMenu,
    TResult Function(String restaurantId)? getResMenuNxtPage,
    required TResult orElse(),
  }) {
    if (getResMenu != null) {
      return getResMenu(restaurantId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurantList value) getRestaurantList,
    required TResult Function(GetRestaurantDetail value) getRestaturantDetail,
    required TResult Function(GetResMenu value) getResMenu,
    required TResult Function(GetResMenuNxtPage value) getResMenuNxtPage,
  }) {
    return getResMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRestaurantList value)? getRestaurantList,
    TResult? Function(GetRestaurantDetail value)? getRestaturantDetail,
    TResult? Function(GetResMenu value)? getResMenu,
    TResult? Function(GetResMenuNxtPage value)? getResMenuNxtPage,
  }) {
    return getResMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurantList value)? getRestaurantList,
    TResult Function(GetRestaurantDetail value)? getRestaturantDetail,
    TResult Function(GetResMenu value)? getResMenu,
    TResult Function(GetResMenuNxtPage value)? getResMenuNxtPage,
    required TResult orElse(),
  }) {
    if (getResMenu != null) {
      return getResMenu(this);
    }
    return orElse();
  }
}

abstract class GetResMenu implements RestaurantEvent {
  const factory GetResMenu(final String restaurantId) = _$GetResMenu;

  String get restaurantId;
  @JsonKey(ignore: true)
  _$$GetResMenuCopyWith<_$GetResMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetResMenuNxtPageCopyWith<$Res> {
  factory _$$GetResMenuNxtPageCopyWith(
          _$GetResMenuNxtPage value, $Res Function(_$GetResMenuNxtPage) then) =
      __$$GetResMenuNxtPageCopyWithImpl<$Res>;
  @useResult
  $Res call({String restaurantId});
}

/// @nodoc
class __$$GetResMenuNxtPageCopyWithImpl<$Res>
    extends _$RestaurantEventCopyWithImpl<$Res, _$GetResMenuNxtPage>
    implements _$$GetResMenuNxtPageCopyWith<$Res> {
  __$$GetResMenuNxtPageCopyWithImpl(
      _$GetResMenuNxtPage _value, $Res Function(_$GetResMenuNxtPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
  }) {
    return _then(_$GetResMenuNxtPage(
      null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetResMenuNxtPage implements GetResMenuNxtPage {
  const _$GetResMenuNxtPage(this.restaurantId);

  @override
  final String restaurantId;

  @override
  String toString() {
    return 'RestaurantEvent.getResMenuNxtPage(restaurantId: $restaurantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetResMenuNxtPage &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restaurantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetResMenuNxtPageCopyWith<_$GetResMenuNxtPage> get copyWith =>
      __$$GetResMenuNxtPageCopyWithImpl<_$GetResMenuNxtPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getRestaurantList,
    required TResult Function(String restaurantId) getRestaturantDetail,
    required TResult Function(String restaurantId) getResMenu,
    required TResult Function(String restaurantId) getResMenuNxtPage,
  }) {
    return getResMenuNxtPage(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getRestaurantList,
    TResult? Function(String restaurantId)? getRestaturantDetail,
    TResult? Function(String restaurantId)? getResMenu,
    TResult? Function(String restaurantId)? getResMenuNxtPage,
  }) {
    return getResMenuNxtPage?.call(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getRestaurantList,
    TResult Function(String restaurantId)? getRestaturantDetail,
    TResult Function(String restaurantId)? getResMenu,
    TResult Function(String restaurantId)? getResMenuNxtPage,
    required TResult orElse(),
  }) {
    if (getResMenuNxtPage != null) {
      return getResMenuNxtPage(restaurantId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurantList value) getRestaurantList,
    required TResult Function(GetRestaurantDetail value) getRestaturantDetail,
    required TResult Function(GetResMenu value) getResMenu,
    required TResult Function(GetResMenuNxtPage value) getResMenuNxtPage,
  }) {
    return getResMenuNxtPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRestaurantList value)? getRestaurantList,
    TResult? Function(GetRestaurantDetail value)? getRestaturantDetail,
    TResult? Function(GetResMenu value)? getResMenu,
    TResult? Function(GetResMenuNxtPage value)? getResMenuNxtPage,
  }) {
    return getResMenuNxtPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurantList value)? getRestaurantList,
    TResult Function(GetRestaurantDetail value)? getRestaturantDetail,
    TResult Function(GetResMenu value)? getResMenu,
    TResult Function(GetResMenuNxtPage value)? getResMenuNxtPage,
    required TResult orElse(),
  }) {
    if (getResMenuNxtPage != null) {
      return getResMenuNxtPage(this);
    }
    return orElse();
  }
}

abstract class GetResMenuNxtPage implements RestaurantEvent {
  const factory GetResMenuNxtPage(final String restaurantId) =
      _$GetResMenuNxtPage;

  String get restaurantId;
  @JsonKey(ignore: true)
  _$$GetResMenuNxtPageCopyWith<_$GetResMenuNxtPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RestaurantState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRestaurantListLoading,
    required TResult Function(List<Restaurant> restaurantList,
            List<Menu>? menuList, RestaurantDetail? restaurantDetail)
        getRestaurantListSuccess,
    required TResult Function() getRestaurantListFailure,
    required TResult Function(List<Restaurant> restaurantList,
            List<Menu>? menuList, RestaurantDetail? restaurantDetail)
        getRestaurantMenuListSuccess,
    required TResult Function(bool max, List<Menu> menu)
        restaurantSearchReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRestaurantListLoading,
    TResult? Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantListSuccess,
    TResult? Function()? getRestaurantListFailure,
    TResult? Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantMenuListSuccess,
    TResult? Function(bool max, List<Menu> menu)? restaurantSearchReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRestaurantListLoading,
    TResult Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantListSuccess,
    TResult Function()? getRestaurantListFailure,
    TResult Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantMenuListSuccess,
    TResult Function(bool max, List<Menu> menu)? restaurantSearchReachedMax,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetRestaurantListLoading value)
        getRestaurantListLoading,
    required TResult Function(GetRestaurantListSuccess value)
        getRestaurantListSuccess,
    required TResult Function(GetRestaurantListFailure value)
        getRestaurantListFailure,
    required TResult Function(GetRestaurantMenuListSuccess value)
        getRestaurantMenuListSuccess,
    required TResult Function(RestaurantSearchReachedMax value)
        restaurantSearchReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetRestaurantListLoading value)? getRestaurantListLoading,
    TResult? Function(GetRestaurantListSuccess value)? getRestaurantListSuccess,
    TResult? Function(GetRestaurantListFailure value)? getRestaurantListFailure,
    TResult? Function(GetRestaurantMenuListSuccess value)?
        getRestaurantMenuListSuccess,
    TResult? Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetRestaurantListLoading value)? getRestaurantListLoading,
    TResult Function(GetRestaurantListSuccess value)? getRestaurantListSuccess,
    TResult Function(GetRestaurantListFailure value)? getRestaurantListFailure,
    TResult Function(GetRestaurantMenuListSuccess value)?
        getRestaurantMenuListSuccess,
    TResult Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantStateCopyWith<$Res> {
  factory $RestaurantStateCopyWith(
          RestaurantState value, $Res Function(RestaurantState) then) =
      _$RestaurantStateCopyWithImpl<$Res, RestaurantState>;
}

/// @nodoc
class _$RestaurantStateCopyWithImpl<$Res, $Val extends RestaurantState>
    implements $RestaurantStateCopyWith<$Res> {
  _$RestaurantStateCopyWithImpl(this._value, this._then);

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
    extends _$RestaurantStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'RestaurantState.initial()';
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
    required TResult Function() getRestaurantListLoading,
    required TResult Function(List<Restaurant> restaurantList,
            List<Menu>? menuList, RestaurantDetail? restaurantDetail)
        getRestaurantListSuccess,
    required TResult Function() getRestaurantListFailure,
    required TResult Function(List<Restaurant> restaurantList,
            List<Menu>? menuList, RestaurantDetail? restaurantDetail)
        getRestaurantMenuListSuccess,
    required TResult Function(bool max, List<Menu> menu)
        restaurantSearchReachedMax,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRestaurantListLoading,
    TResult? Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantListSuccess,
    TResult? Function()? getRestaurantListFailure,
    TResult? Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantMenuListSuccess,
    TResult? Function(bool max, List<Menu> menu)? restaurantSearchReachedMax,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRestaurantListLoading,
    TResult Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantListSuccess,
    TResult Function()? getRestaurantListFailure,
    TResult Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantMenuListSuccess,
    TResult Function(bool max, List<Menu> menu)? restaurantSearchReachedMax,
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
    required TResult Function(GetRestaurantListLoading value)
        getRestaurantListLoading,
    required TResult Function(GetRestaurantListSuccess value)
        getRestaurantListSuccess,
    required TResult Function(GetRestaurantListFailure value)
        getRestaurantListFailure,
    required TResult Function(GetRestaurantMenuListSuccess value)
        getRestaurantMenuListSuccess,
    required TResult Function(RestaurantSearchReachedMax value)
        restaurantSearchReachedMax,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetRestaurantListLoading value)? getRestaurantListLoading,
    TResult? Function(GetRestaurantListSuccess value)? getRestaurantListSuccess,
    TResult? Function(GetRestaurantListFailure value)? getRestaurantListFailure,
    TResult? Function(GetRestaurantMenuListSuccess value)?
        getRestaurantMenuListSuccess,
    TResult? Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetRestaurantListLoading value)? getRestaurantListLoading,
    TResult Function(GetRestaurantListSuccess value)? getRestaurantListSuccess,
    TResult Function(GetRestaurantListFailure value)? getRestaurantListFailure,
    TResult Function(GetRestaurantMenuListSuccess value)?
        getRestaurantMenuListSuccess,
    TResult Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RestaurantState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$GetRestaurantListLoadingCopyWith<$Res> {
  factory _$$GetRestaurantListLoadingCopyWith(_$GetRestaurantListLoading value,
          $Res Function(_$GetRestaurantListLoading) then) =
      __$$GetRestaurantListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRestaurantListLoadingCopyWithImpl<$Res>
    extends _$RestaurantStateCopyWithImpl<$Res, _$GetRestaurantListLoading>
    implements _$$GetRestaurantListLoadingCopyWith<$Res> {
  __$$GetRestaurantListLoadingCopyWithImpl(_$GetRestaurantListLoading _value,
      $Res Function(_$GetRestaurantListLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRestaurantListLoading implements GetRestaurantListLoading {
  const _$GetRestaurantListLoading();

  @override
  String toString() {
    return 'RestaurantState.getRestaurantListLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRestaurantListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRestaurantListLoading,
    required TResult Function(List<Restaurant> restaurantList,
            List<Menu>? menuList, RestaurantDetail? restaurantDetail)
        getRestaurantListSuccess,
    required TResult Function() getRestaurantListFailure,
    required TResult Function(List<Restaurant> restaurantList,
            List<Menu>? menuList, RestaurantDetail? restaurantDetail)
        getRestaurantMenuListSuccess,
    required TResult Function(bool max, List<Menu> menu)
        restaurantSearchReachedMax,
  }) {
    return getRestaurantListLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRestaurantListLoading,
    TResult? Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantListSuccess,
    TResult? Function()? getRestaurantListFailure,
    TResult? Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantMenuListSuccess,
    TResult? Function(bool max, List<Menu> menu)? restaurantSearchReachedMax,
  }) {
    return getRestaurantListLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRestaurantListLoading,
    TResult Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantListSuccess,
    TResult Function()? getRestaurantListFailure,
    TResult Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantMenuListSuccess,
    TResult Function(bool max, List<Menu> menu)? restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (getRestaurantListLoading != null) {
      return getRestaurantListLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetRestaurantListLoading value)
        getRestaurantListLoading,
    required TResult Function(GetRestaurantListSuccess value)
        getRestaurantListSuccess,
    required TResult Function(GetRestaurantListFailure value)
        getRestaurantListFailure,
    required TResult Function(GetRestaurantMenuListSuccess value)
        getRestaurantMenuListSuccess,
    required TResult Function(RestaurantSearchReachedMax value)
        restaurantSearchReachedMax,
  }) {
    return getRestaurantListLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetRestaurantListLoading value)? getRestaurantListLoading,
    TResult? Function(GetRestaurantListSuccess value)? getRestaurantListSuccess,
    TResult? Function(GetRestaurantListFailure value)? getRestaurantListFailure,
    TResult? Function(GetRestaurantMenuListSuccess value)?
        getRestaurantMenuListSuccess,
    TResult? Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
  }) {
    return getRestaurantListLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetRestaurantListLoading value)? getRestaurantListLoading,
    TResult Function(GetRestaurantListSuccess value)? getRestaurantListSuccess,
    TResult Function(GetRestaurantListFailure value)? getRestaurantListFailure,
    TResult Function(GetRestaurantMenuListSuccess value)?
        getRestaurantMenuListSuccess,
    TResult Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (getRestaurantListLoading != null) {
      return getRestaurantListLoading(this);
    }
    return orElse();
  }
}

abstract class GetRestaurantListLoading implements RestaurantState {
  const factory GetRestaurantListLoading() = _$GetRestaurantListLoading;
}

/// @nodoc
abstract class _$$GetRestaurantListSuccessCopyWith<$Res> {
  factory _$$GetRestaurantListSuccessCopyWith(_$GetRestaurantListSuccess value,
          $Res Function(_$GetRestaurantListSuccess) then) =
      __$$GetRestaurantListSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Restaurant> restaurantList,
      List<Menu>? menuList,
      RestaurantDetail? restaurantDetail});

  $RestaurantDetailCopyWith<$Res>? get restaurantDetail;
}

/// @nodoc
class __$$GetRestaurantListSuccessCopyWithImpl<$Res>
    extends _$RestaurantStateCopyWithImpl<$Res, _$GetRestaurantListSuccess>
    implements _$$GetRestaurantListSuccessCopyWith<$Res> {
  __$$GetRestaurantListSuccessCopyWithImpl(_$GetRestaurantListSuccess _value,
      $Res Function(_$GetRestaurantListSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantList = null,
    Object? menuList = freezed,
    Object? restaurantDetail = freezed,
  }) {
    return _then(_$GetRestaurantListSuccess(
      restaurantList: null == restaurantList
          ? _value._restaurantList
          : restaurantList // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
      menuList: freezed == menuList
          ? _value._menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<Menu>?,
      restaurantDetail: freezed == restaurantDetail
          ? _value.restaurantDetail
          : restaurantDetail // ignore: cast_nullable_to_non_nullable
              as RestaurantDetail?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantDetailCopyWith<$Res>? get restaurantDetail {
    if (_value.restaurantDetail == null) {
      return null;
    }

    return $RestaurantDetailCopyWith<$Res>(_value.restaurantDetail!, (value) {
      return _then(_value.copyWith(restaurantDetail: value));
    });
  }
}

/// @nodoc

class _$GetRestaurantListSuccess implements GetRestaurantListSuccess {
  const _$GetRestaurantListSuccess(
      {required final List<Restaurant> restaurantList,
      final List<Menu>? menuList,
      this.restaurantDetail})
      : _restaurantList = restaurantList,
        _menuList = menuList;

  final List<Restaurant> _restaurantList;
  @override
  List<Restaurant> get restaurantList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restaurantList);
  }

  final List<Menu>? _menuList;
  @override
  List<Menu>? get menuList {
    final value = _menuList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final RestaurantDetail? restaurantDetail;

  @override
  String toString() {
    return 'RestaurantState.getRestaurantListSuccess(restaurantList: $restaurantList, menuList: $menuList, restaurantDetail: $restaurantDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRestaurantListSuccess &&
            const DeepCollectionEquality()
                .equals(other._restaurantList, _restaurantList) &&
            const DeepCollectionEquality().equals(other._menuList, _menuList) &&
            (identical(other.restaurantDetail, restaurantDetail) ||
                other.restaurantDetail == restaurantDetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_restaurantList),
      const DeepCollectionEquality().hash(_menuList),
      restaurantDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRestaurantListSuccessCopyWith<_$GetRestaurantListSuccess>
      get copyWith =>
          __$$GetRestaurantListSuccessCopyWithImpl<_$GetRestaurantListSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRestaurantListLoading,
    required TResult Function(List<Restaurant> restaurantList,
            List<Menu>? menuList, RestaurantDetail? restaurantDetail)
        getRestaurantListSuccess,
    required TResult Function() getRestaurantListFailure,
    required TResult Function(List<Restaurant> restaurantList,
            List<Menu>? menuList, RestaurantDetail? restaurantDetail)
        getRestaurantMenuListSuccess,
    required TResult Function(bool max, List<Menu> menu)
        restaurantSearchReachedMax,
  }) {
    return getRestaurantListSuccess(restaurantList, menuList, restaurantDetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRestaurantListLoading,
    TResult? Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantListSuccess,
    TResult? Function()? getRestaurantListFailure,
    TResult? Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantMenuListSuccess,
    TResult? Function(bool max, List<Menu> menu)? restaurantSearchReachedMax,
  }) {
    return getRestaurantListSuccess?.call(
        restaurantList, menuList, restaurantDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRestaurantListLoading,
    TResult Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantListSuccess,
    TResult Function()? getRestaurantListFailure,
    TResult Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantMenuListSuccess,
    TResult Function(bool max, List<Menu> menu)? restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (getRestaurantListSuccess != null) {
      return getRestaurantListSuccess(
          restaurantList, menuList, restaurantDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetRestaurantListLoading value)
        getRestaurantListLoading,
    required TResult Function(GetRestaurantListSuccess value)
        getRestaurantListSuccess,
    required TResult Function(GetRestaurantListFailure value)
        getRestaurantListFailure,
    required TResult Function(GetRestaurantMenuListSuccess value)
        getRestaurantMenuListSuccess,
    required TResult Function(RestaurantSearchReachedMax value)
        restaurantSearchReachedMax,
  }) {
    return getRestaurantListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetRestaurantListLoading value)? getRestaurantListLoading,
    TResult? Function(GetRestaurantListSuccess value)? getRestaurantListSuccess,
    TResult? Function(GetRestaurantListFailure value)? getRestaurantListFailure,
    TResult? Function(GetRestaurantMenuListSuccess value)?
        getRestaurantMenuListSuccess,
    TResult? Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
  }) {
    return getRestaurantListSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetRestaurantListLoading value)? getRestaurantListLoading,
    TResult Function(GetRestaurantListSuccess value)? getRestaurantListSuccess,
    TResult Function(GetRestaurantListFailure value)? getRestaurantListFailure,
    TResult Function(GetRestaurantMenuListSuccess value)?
        getRestaurantMenuListSuccess,
    TResult Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (getRestaurantListSuccess != null) {
      return getRestaurantListSuccess(this);
    }
    return orElse();
  }
}

abstract class GetRestaurantListSuccess implements RestaurantState {
  const factory GetRestaurantListSuccess(
      {required final List<Restaurant> restaurantList,
      final List<Menu>? menuList,
      final RestaurantDetail? restaurantDetail}) = _$GetRestaurantListSuccess;

  List<Restaurant> get restaurantList;
  List<Menu>? get menuList;
  RestaurantDetail? get restaurantDetail;
  @JsonKey(ignore: true)
  _$$GetRestaurantListSuccessCopyWith<_$GetRestaurantListSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRestaurantListFailureCopyWith<$Res> {
  factory _$$GetRestaurantListFailureCopyWith(_$GetRestaurantListFailure value,
          $Res Function(_$GetRestaurantListFailure) then) =
      __$$GetRestaurantListFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRestaurantListFailureCopyWithImpl<$Res>
    extends _$RestaurantStateCopyWithImpl<$Res, _$GetRestaurantListFailure>
    implements _$$GetRestaurantListFailureCopyWith<$Res> {
  __$$GetRestaurantListFailureCopyWithImpl(_$GetRestaurantListFailure _value,
      $Res Function(_$GetRestaurantListFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRestaurantListFailure implements GetRestaurantListFailure {
  const _$GetRestaurantListFailure();

  @override
  String toString() {
    return 'RestaurantState.getRestaurantListFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRestaurantListFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRestaurantListLoading,
    required TResult Function(List<Restaurant> restaurantList,
            List<Menu>? menuList, RestaurantDetail? restaurantDetail)
        getRestaurantListSuccess,
    required TResult Function() getRestaurantListFailure,
    required TResult Function(List<Restaurant> restaurantList,
            List<Menu>? menuList, RestaurantDetail? restaurantDetail)
        getRestaurantMenuListSuccess,
    required TResult Function(bool max, List<Menu> menu)
        restaurantSearchReachedMax,
  }) {
    return getRestaurantListFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRestaurantListLoading,
    TResult? Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantListSuccess,
    TResult? Function()? getRestaurantListFailure,
    TResult? Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantMenuListSuccess,
    TResult? Function(bool max, List<Menu> menu)? restaurantSearchReachedMax,
  }) {
    return getRestaurantListFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRestaurantListLoading,
    TResult Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantListSuccess,
    TResult Function()? getRestaurantListFailure,
    TResult Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantMenuListSuccess,
    TResult Function(bool max, List<Menu> menu)? restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (getRestaurantListFailure != null) {
      return getRestaurantListFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetRestaurantListLoading value)
        getRestaurantListLoading,
    required TResult Function(GetRestaurantListSuccess value)
        getRestaurantListSuccess,
    required TResult Function(GetRestaurantListFailure value)
        getRestaurantListFailure,
    required TResult Function(GetRestaurantMenuListSuccess value)
        getRestaurantMenuListSuccess,
    required TResult Function(RestaurantSearchReachedMax value)
        restaurantSearchReachedMax,
  }) {
    return getRestaurantListFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetRestaurantListLoading value)? getRestaurantListLoading,
    TResult? Function(GetRestaurantListSuccess value)? getRestaurantListSuccess,
    TResult? Function(GetRestaurantListFailure value)? getRestaurantListFailure,
    TResult? Function(GetRestaurantMenuListSuccess value)?
        getRestaurantMenuListSuccess,
    TResult? Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
  }) {
    return getRestaurantListFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetRestaurantListLoading value)? getRestaurantListLoading,
    TResult Function(GetRestaurantListSuccess value)? getRestaurantListSuccess,
    TResult Function(GetRestaurantListFailure value)? getRestaurantListFailure,
    TResult Function(GetRestaurantMenuListSuccess value)?
        getRestaurantMenuListSuccess,
    TResult Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (getRestaurantListFailure != null) {
      return getRestaurantListFailure(this);
    }
    return orElse();
  }
}

abstract class GetRestaurantListFailure implements RestaurantState {
  const factory GetRestaurantListFailure() = _$GetRestaurantListFailure;
}

/// @nodoc
abstract class _$$GetRestaurantMenuListSuccessCopyWith<$Res> {
  factory _$$GetRestaurantMenuListSuccessCopyWith(
          _$GetRestaurantMenuListSuccess value,
          $Res Function(_$GetRestaurantMenuListSuccess) then) =
      __$$GetRestaurantMenuListSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Restaurant> restaurantList,
      List<Menu>? menuList,
      RestaurantDetail? restaurantDetail});

  $RestaurantDetailCopyWith<$Res>? get restaurantDetail;
}

/// @nodoc
class __$$GetRestaurantMenuListSuccessCopyWithImpl<$Res>
    extends _$RestaurantStateCopyWithImpl<$Res, _$GetRestaurantMenuListSuccess>
    implements _$$GetRestaurantMenuListSuccessCopyWith<$Res> {
  __$$GetRestaurantMenuListSuccessCopyWithImpl(
      _$GetRestaurantMenuListSuccess _value,
      $Res Function(_$GetRestaurantMenuListSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantList = null,
    Object? menuList = freezed,
    Object? restaurantDetail = freezed,
  }) {
    return _then(_$GetRestaurantMenuListSuccess(
      restaurantList: null == restaurantList
          ? _value._restaurantList
          : restaurantList // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
      menuList: freezed == menuList
          ? _value._menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<Menu>?,
      restaurantDetail: freezed == restaurantDetail
          ? _value.restaurantDetail
          : restaurantDetail // ignore: cast_nullable_to_non_nullable
              as RestaurantDetail?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantDetailCopyWith<$Res>? get restaurantDetail {
    if (_value.restaurantDetail == null) {
      return null;
    }

    return $RestaurantDetailCopyWith<$Res>(_value.restaurantDetail!, (value) {
      return _then(_value.copyWith(restaurantDetail: value));
    });
  }
}

/// @nodoc

class _$GetRestaurantMenuListSuccess implements GetRestaurantMenuListSuccess {
  const _$GetRestaurantMenuListSuccess(
      {required final List<Restaurant> restaurantList,
      final List<Menu>? menuList,
      this.restaurantDetail})
      : _restaurantList = restaurantList,
        _menuList = menuList;

  final List<Restaurant> _restaurantList;
  @override
  List<Restaurant> get restaurantList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restaurantList);
  }

  final List<Menu>? _menuList;
  @override
  List<Menu>? get menuList {
    final value = _menuList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final RestaurantDetail? restaurantDetail;

  @override
  String toString() {
    return 'RestaurantState.getRestaurantMenuListSuccess(restaurantList: $restaurantList, menuList: $menuList, restaurantDetail: $restaurantDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRestaurantMenuListSuccess &&
            const DeepCollectionEquality()
                .equals(other._restaurantList, _restaurantList) &&
            const DeepCollectionEquality().equals(other._menuList, _menuList) &&
            (identical(other.restaurantDetail, restaurantDetail) ||
                other.restaurantDetail == restaurantDetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_restaurantList),
      const DeepCollectionEquality().hash(_menuList),
      restaurantDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRestaurantMenuListSuccessCopyWith<_$GetRestaurantMenuListSuccess>
      get copyWith => __$$GetRestaurantMenuListSuccessCopyWithImpl<
          _$GetRestaurantMenuListSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRestaurantListLoading,
    required TResult Function(List<Restaurant> restaurantList,
            List<Menu>? menuList, RestaurantDetail? restaurantDetail)
        getRestaurantListSuccess,
    required TResult Function() getRestaurantListFailure,
    required TResult Function(List<Restaurant> restaurantList,
            List<Menu>? menuList, RestaurantDetail? restaurantDetail)
        getRestaurantMenuListSuccess,
    required TResult Function(bool max, List<Menu> menu)
        restaurantSearchReachedMax,
  }) {
    return getRestaurantMenuListSuccess(
        restaurantList, menuList, restaurantDetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRestaurantListLoading,
    TResult? Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantListSuccess,
    TResult? Function()? getRestaurantListFailure,
    TResult? Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantMenuListSuccess,
    TResult? Function(bool max, List<Menu> menu)? restaurantSearchReachedMax,
  }) {
    return getRestaurantMenuListSuccess?.call(
        restaurantList, menuList, restaurantDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRestaurantListLoading,
    TResult Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantListSuccess,
    TResult Function()? getRestaurantListFailure,
    TResult Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantMenuListSuccess,
    TResult Function(bool max, List<Menu> menu)? restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (getRestaurantMenuListSuccess != null) {
      return getRestaurantMenuListSuccess(
          restaurantList, menuList, restaurantDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetRestaurantListLoading value)
        getRestaurantListLoading,
    required TResult Function(GetRestaurantListSuccess value)
        getRestaurantListSuccess,
    required TResult Function(GetRestaurantListFailure value)
        getRestaurantListFailure,
    required TResult Function(GetRestaurantMenuListSuccess value)
        getRestaurantMenuListSuccess,
    required TResult Function(RestaurantSearchReachedMax value)
        restaurantSearchReachedMax,
  }) {
    return getRestaurantMenuListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetRestaurantListLoading value)? getRestaurantListLoading,
    TResult? Function(GetRestaurantListSuccess value)? getRestaurantListSuccess,
    TResult? Function(GetRestaurantListFailure value)? getRestaurantListFailure,
    TResult? Function(GetRestaurantMenuListSuccess value)?
        getRestaurantMenuListSuccess,
    TResult? Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
  }) {
    return getRestaurantMenuListSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetRestaurantListLoading value)? getRestaurantListLoading,
    TResult Function(GetRestaurantListSuccess value)? getRestaurantListSuccess,
    TResult Function(GetRestaurantListFailure value)? getRestaurantListFailure,
    TResult Function(GetRestaurantMenuListSuccess value)?
        getRestaurantMenuListSuccess,
    TResult Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (getRestaurantMenuListSuccess != null) {
      return getRestaurantMenuListSuccess(this);
    }
    return orElse();
  }
}

abstract class GetRestaurantMenuListSuccess implements RestaurantState {
  const factory GetRestaurantMenuListSuccess(
          {required final List<Restaurant> restaurantList,
          final List<Menu>? menuList,
          final RestaurantDetail? restaurantDetail}) =
      _$GetRestaurantMenuListSuccess;

  List<Restaurant> get restaurantList;
  List<Menu>? get menuList;
  RestaurantDetail? get restaurantDetail;
  @JsonKey(ignore: true)
  _$$GetRestaurantMenuListSuccessCopyWith<_$GetRestaurantMenuListSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestaurantSearchReachedMaxCopyWith<$Res> {
  factory _$$RestaurantSearchReachedMaxCopyWith(
          _$RestaurantSearchReachedMax value,
          $Res Function(_$RestaurantSearchReachedMax) then) =
      __$$RestaurantSearchReachedMaxCopyWithImpl<$Res>;
  @useResult
  $Res call({bool max, List<Menu> menu});
}

/// @nodoc
class __$$RestaurantSearchReachedMaxCopyWithImpl<$Res>
    extends _$RestaurantStateCopyWithImpl<$Res, _$RestaurantSearchReachedMax>
    implements _$$RestaurantSearchReachedMaxCopyWith<$Res> {
  __$$RestaurantSearchReachedMaxCopyWithImpl(
      _$RestaurantSearchReachedMax _value,
      $Res Function(_$RestaurantSearchReachedMax) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? max = null,
    Object? menu = null,
  }) {
    return _then(_$RestaurantSearchReachedMax(
      null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as bool,
      null == menu
          ? _value._menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<Menu>,
    ));
  }
}

/// @nodoc

class _$RestaurantSearchReachedMax implements RestaurantSearchReachedMax {
  const _$RestaurantSearchReachedMax(this.max, final List<Menu> menu)
      : _menu = menu;

  @override
  final bool max;
  final List<Menu> _menu;
  @override
  List<Menu> get menu {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menu);
  }

  @override
  String toString() {
    return 'RestaurantState.restaurantSearchReachedMax(max: $max, menu: $menu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantSearchReachedMax &&
            (identical(other.max, max) || other.max == max) &&
            const DeepCollectionEquality().equals(other._menu, _menu));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, max, const DeepCollectionEquality().hash(_menu));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantSearchReachedMaxCopyWith<_$RestaurantSearchReachedMax>
      get copyWith => __$$RestaurantSearchReachedMaxCopyWithImpl<
          _$RestaurantSearchReachedMax>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRestaurantListLoading,
    required TResult Function(List<Restaurant> restaurantList,
            List<Menu>? menuList, RestaurantDetail? restaurantDetail)
        getRestaurantListSuccess,
    required TResult Function() getRestaurantListFailure,
    required TResult Function(List<Restaurant> restaurantList,
            List<Menu>? menuList, RestaurantDetail? restaurantDetail)
        getRestaurantMenuListSuccess,
    required TResult Function(bool max, List<Menu> menu)
        restaurantSearchReachedMax,
  }) {
    return restaurantSearchReachedMax(max, menu);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRestaurantListLoading,
    TResult? Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantListSuccess,
    TResult? Function()? getRestaurantListFailure,
    TResult? Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantMenuListSuccess,
    TResult? Function(bool max, List<Menu> menu)? restaurantSearchReachedMax,
  }) {
    return restaurantSearchReachedMax?.call(max, menu);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRestaurantListLoading,
    TResult Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantListSuccess,
    TResult Function()? getRestaurantListFailure,
    TResult Function(List<Restaurant> restaurantList, List<Menu>? menuList,
            RestaurantDetail? restaurantDetail)?
        getRestaurantMenuListSuccess,
    TResult Function(bool max, List<Menu> menu)? restaurantSearchReachedMax,
    required TResult orElse(),
  }) {
    if (restaurantSearchReachedMax != null) {
      return restaurantSearchReachedMax(max, menu);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetRestaurantListLoading value)
        getRestaurantListLoading,
    required TResult Function(GetRestaurantListSuccess value)
        getRestaurantListSuccess,
    required TResult Function(GetRestaurantListFailure value)
        getRestaurantListFailure,
    required TResult Function(GetRestaurantMenuListSuccess value)
        getRestaurantMenuListSuccess,
    required TResult Function(RestaurantSearchReachedMax value)
        restaurantSearchReachedMax,
  }) {
    return restaurantSearchReachedMax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetRestaurantListLoading value)? getRestaurantListLoading,
    TResult? Function(GetRestaurantListSuccess value)? getRestaurantListSuccess,
    TResult? Function(GetRestaurantListFailure value)? getRestaurantListFailure,
    TResult? Function(GetRestaurantMenuListSuccess value)?
        getRestaurantMenuListSuccess,
    TResult? Function(RestaurantSearchReachedMax value)?
        restaurantSearchReachedMax,
  }) {
    return restaurantSearchReachedMax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetRestaurantListLoading value)? getRestaurantListLoading,
    TResult Function(GetRestaurantListSuccess value)? getRestaurantListSuccess,
    TResult Function(GetRestaurantListFailure value)? getRestaurantListFailure,
    TResult Function(GetRestaurantMenuListSuccess value)?
        getRestaurantMenuListSuccess,
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

abstract class RestaurantSearchReachedMax implements RestaurantState {
  const factory RestaurantSearchReachedMax(
      final bool max, final List<Menu> menu) = _$RestaurantSearchReachedMax;

  bool get max;
  List<Menu> get menu;
  @JsonKey(ignore: true)
  _$$RestaurantSearchReachedMaxCopyWith<_$RestaurantSearchReachedMax>
      get copyWith => throw _privateConstructorUsedError;
}
