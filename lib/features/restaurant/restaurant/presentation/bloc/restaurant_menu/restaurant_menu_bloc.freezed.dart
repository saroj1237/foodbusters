// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restaurant_menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RestaurantMenuEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getRestaurantMenu,
    required TResult Function(String id) getRestaurantMenuNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getRestaurantMenu,
    TResult? Function(String id)? getRestaurantMenuNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getRestaurantMenu,
    TResult Function(String id)? getRestaurantMenuNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurantMenu value) getRestaurantMenu,
    required TResult Function(GetRestaurantMenuNextPage value)
        getRestaurantMenuNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRestaurantMenu value)? getRestaurantMenu,
    TResult? Function(GetRestaurantMenuNextPage value)?
        getRestaurantMenuNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurantMenu value)? getRestaurantMenu,
    TResult Function(GetRestaurantMenuNextPage value)?
        getRestaurantMenuNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantMenuEventCopyWith<RestaurantMenuEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantMenuEventCopyWith<$Res> {
  factory $RestaurantMenuEventCopyWith(
          RestaurantMenuEvent value, $Res Function(RestaurantMenuEvent) then) =
      _$RestaurantMenuEventCopyWithImpl<$Res, RestaurantMenuEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$RestaurantMenuEventCopyWithImpl<$Res, $Val extends RestaurantMenuEvent>
    implements $RestaurantMenuEventCopyWith<$Res> {
  _$RestaurantMenuEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRestaurantMenuCopyWith<$Res>
    implements $RestaurantMenuEventCopyWith<$Res> {
  factory _$$GetRestaurantMenuCopyWith(
          _$GetRestaurantMenu value, $Res Function(_$GetRestaurantMenu) then) =
      __$$GetRestaurantMenuCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetRestaurantMenuCopyWithImpl<$Res>
    extends _$RestaurantMenuEventCopyWithImpl<$Res, _$GetRestaurantMenu>
    implements _$$GetRestaurantMenuCopyWith<$Res> {
  __$$GetRestaurantMenuCopyWithImpl(
      _$GetRestaurantMenu _value, $Res Function(_$GetRestaurantMenu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetRestaurantMenu(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRestaurantMenu implements GetRestaurantMenu {
  const _$GetRestaurantMenu(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'RestaurantMenuEvent.getRestaurantMenu(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRestaurantMenu &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRestaurantMenuCopyWith<_$GetRestaurantMenu> get copyWith =>
      __$$GetRestaurantMenuCopyWithImpl<_$GetRestaurantMenu>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getRestaurantMenu,
    required TResult Function(String id) getRestaurantMenuNextPage,
  }) {
    return getRestaurantMenu(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getRestaurantMenu,
    TResult? Function(String id)? getRestaurantMenuNextPage,
  }) {
    return getRestaurantMenu?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getRestaurantMenu,
    TResult Function(String id)? getRestaurantMenuNextPage,
    required TResult orElse(),
  }) {
    if (getRestaurantMenu != null) {
      return getRestaurantMenu(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurantMenu value) getRestaurantMenu,
    required TResult Function(GetRestaurantMenuNextPage value)
        getRestaurantMenuNextPage,
  }) {
    return getRestaurantMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRestaurantMenu value)? getRestaurantMenu,
    TResult? Function(GetRestaurantMenuNextPage value)?
        getRestaurantMenuNextPage,
  }) {
    return getRestaurantMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurantMenu value)? getRestaurantMenu,
    TResult Function(GetRestaurantMenuNextPage value)?
        getRestaurantMenuNextPage,
    required TResult orElse(),
  }) {
    if (getRestaurantMenu != null) {
      return getRestaurantMenu(this);
    }
    return orElse();
  }
}

abstract class GetRestaurantMenu implements RestaurantMenuEvent {
  const factory GetRestaurantMenu(final String id) = _$GetRestaurantMenu;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$GetRestaurantMenuCopyWith<_$GetRestaurantMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRestaurantMenuNextPageCopyWith<$Res>
    implements $RestaurantMenuEventCopyWith<$Res> {
  factory _$$GetRestaurantMenuNextPageCopyWith(
          _$GetRestaurantMenuNextPage value,
          $Res Function(_$GetRestaurantMenuNextPage) then) =
      __$$GetRestaurantMenuNextPageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetRestaurantMenuNextPageCopyWithImpl<$Res>
    extends _$RestaurantMenuEventCopyWithImpl<$Res, _$GetRestaurantMenuNextPage>
    implements _$$GetRestaurantMenuNextPageCopyWith<$Res> {
  __$$GetRestaurantMenuNextPageCopyWithImpl(_$GetRestaurantMenuNextPage _value,
      $Res Function(_$GetRestaurantMenuNextPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetRestaurantMenuNextPage(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRestaurantMenuNextPage implements GetRestaurantMenuNextPage {
  const _$GetRestaurantMenuNextPage(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'RestaurantMenuEvent.getRestaurantMenuNextPage(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRestaurantMenuNextPage &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRestaurantMenuNextPageCopyWith<_$GetRestaurantMenuNextPage>
      get copyWith => __$$GetRestaurantMenuNextPageCopyWithImpl<
          _$GetRestaurantMenuNextPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getRestaurantMenu,
    required TResult Function(String id) getRestaurantMenuNextPage,
  }) {
    return getRestaurantMenuNextPage(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getRestaurantMenu,
    TResult? Function(String id)? getRestaurantMenuNextPage,
  }) {
    return getRestaurantMenuNextPage?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getRestaurantMenu,
    TResult Function(String id)? getRestaurantMenuNextPage,
    required TResult orElse(),
  }) {
    if (getRestaurantMenuNextPage != null) {
      return getRestaurantMenuNextPage(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurantMenu value) getRestaurantMenu,
    required TResult Function(GetRestaurantMenuNextPage value)
        getRestaurantMenuNextPage,
  }) {
    return getRestaurantMenuNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRestaurantMenu value)? getRestaurantMenu,
    TResult? Function(GetRestaurantMenuNextPage value)?
        getRestaurantMenuNextPage,
  }) {
    return getRestaurantMenuNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurantMenu value)? getRestaurantMenu,
    TResult Function(GetRestaurantMenuNextPage value)?
        getRestaurantMenuNextPage,
    required TResult orElse(),
  }) {
    if (getRestaurantMenuNextPage != null) {
      return getRestaurantMenuNextPage(this);
    }
    return orElse();
  }
}

abstract class GetRestaurantMenuNextPage implements RestaurantMenuEvent {
  const factory GetRestaurantMenuNextPage(final String id) =
      _$GetRestaurantMenuNextPage;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$GetRestaurantMenuNextPageCopyWith<_$GetRestaurantMenuNextPage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RestaurantMenuState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRestaurantMenuLoading,
    required TResult Function(List<Menu> menuList) getRestaurantMenuLoaded,
    required TResult Function(String error) getRestaurantMenuError,
    required TResult Function(bool max, List<Menu> menuList)
        getRestaurantMenuReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRestaurantMenuLoading,
    TResult? Function(List<Menu> menuList)? getRestaurantMenuLoaded,
    TResult? Function(String error)? getRestaurantMenuError,
    TResult? Function(bool max, List<Menu> menuList)?
        getRestaurantMenuReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRestaurantMenuLoading,
    TResult Function(List<Menu> menuList)? getRestaurantMenuLoaded,
    TResult Function(String error)? getRestaurantMenuError,
    TResult Function(bool max, List<Menu> menuList)?
        getRestaurantMenuReachedMax,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetRestaurantMenuLoading value)
        getRestaurantMenuLoading,
    required TResult Function(GetRestaurantMenuLoaded value)
        getRestaurantMenuLoaded,
    required TResult Function(GetRestaurantMenuError value)
        getRestaurantMenuError,
    required TResult Function(GetRestaurantMenuReachedMax value)
        getRestaurantMenuReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetRestaurantMenuLoading value)? getRestaurantMenuLoading,
    TResult? Function(GetRestaurantMenuLoaded value)? getRestaurantMenuLoaded,
    TResult? Function(GetRestaurantMenuError value)? getRestaurantMenuError,
    TResult? Function(GetRestaurantMenuReachedMax value)?
        getRestaurantMenuReachedMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetRestaurantMenuLoading value)? getRestaurantMenuLoading,
    TResult Function(GetRestaurantMenuLoaded value)? getRestaurantMenuLoaded,
    TResult Function(GetRestaurantMenuError value)? getRestaurantMenuError,
    TResult Function(GetRestaurantMenuReachedMax value)?
        getRestaurantMenuReachedMax,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantMenuStateCopyWith<$Res> {
  factory $RestaurantMenuStateCopyWith(
          RestaurantMenuState value, $Res Function(RestaurantMenuState) then) =
      _$RestaurantMenuStateCopyWithImpl<$Res, RestaurantMenuState>;
}

/// @nodoc
class _$RestaurantMenuStateCopyWithImpl<$Res, $Val extends RestaurantMenuState>
    implements $RestaurantMenuStateCopyWith<$Res> {
  _$RestaurantMenuStateCopyWithImpl(this._value, this._then);

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
    extends _$RestaurantMenuStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'RestaurantMenuState.initial()';
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
    required TResult Function() getRestaurantMenuLoading,
    required TResult Function(List<Menu> menuList) getRestaurantMenuLoaded,
    required TResult Function(String error) getRestaurantMenuError,
    required TResult Function(bool max, List<Menu> menuList)
        getRestaurantMenuReachedMax,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRestaurantMenuLoading,
    TResult? Function(List<Menu> menuList)? getRestaurantMenuLoaded,
    TResult? Function(String error)? getRestaurantMenuError,
    TResult? Function(bool max, List<Menu> menuList)?
        getRestaurantMenuReachedMax,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRestaurantMenuLoading,
    TResult Function(List<Menu> menuList)? getRestaurantMenuLoaded,
    TResult Function(String error)? getRestaurantMenuError,
    TResult Function(bool max, List<Menu> menuList)?
        getRestaurantMenuReachedMax,
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
    required TResult Function(GetRestaurantMenuLoading value)
        getRestaurantMenuLoading,
    required TResult Function(GetRestaurantMenuLoaded value)
        getRestaurantMenuLoaded,
    required TResult Function(GetRestaurantMenuError value)
        getRestaurantMenuError,
    required TResult Function(GetRestaurantMenuReachedMax value)
        getRestaurantMenuReachedMax,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetRestaurantMenuLoading value)? getRestaurantMenuLoading,
    TResult? Function(GetRestaurantMenuLoaded value)? getRestaurantMenuLoaded,
    TResult? Function(GetRestaurantMenuError value)? getRestaurantMenuError,
    TResult? Function(GetRestaurantMenuReachedMax value)?
        getRestaurantMenuReachedMax,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetRestaurantMenuLoading value)? getRestaurantMenuLoading,
    TResult Function(GetRestaurantMenuLoaded value)? getRestaurantMenuLoaded,
    TResult Function(GetRestaurantMenuError value)? getRestaurantMenuError,
    TResult Function(GetRestaurantMenuReachedMax value)?
        getRestaurantMenuReachedMax,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RestaurantMenuState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$GetRestaurantMenuLoadingCopyWith<$Res> {
  factory _$$GetRestaurantMenuLoadingCopyWith(_$GetRestaurantMenuLoading value,
          $Res Function(_$GetRestaurantMenuLoading) then) =
      __$$GetRestaurantMenuLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRestaurantMenuLoadingCopyWithImpl<$Res>
    extends _$RestaurantMenuStateCopyWithImpl<$Res, _$GetRestaurantMenuLoading>
    implements _$$GetRestaurantMenuLoadingCopyWith<$Res> {
  __$$GetRestaurantMenuLoadingCopyWithImpl(_$GetRestaurantMenuLoading _value,
      $Res Function(_$GetRestaurantMenuLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRestaurantMenuLoading implements GetRestaurantMenuLoading {
  const _$GetRestaurantMenuLoading();

  @override
  String toString() {
    return 'RestaurantMenuState.getRestaurantMenuLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRestaurantMenuLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRestaurantMenuLoading,
    required TResult Function(List<Menu> menuList) getRestaurantMenuLoaded,
    required TResult Function(String error) getRestaurantMenuError,
    required TResult Function(bool max, List<Menu> menuList)
        getRestaurantMenuReachedMax,
  }) {
    return getRestaurantMenuLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRestaurantMenuLoading,
    TResult? Function(List<Menu> menuList)? getRestaurantMenuLoaded,
    TResult? Function(String error)? getRestaurantMenuError,
    TResult? Function(bool max, List<Menu> menuList)?
        getRestaurantMenuReachedMax,
  }) {
    return getRestaurantMenuLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRestaurantMenuLoading,
    TResult Function(List<Menu> menuList)? getRestaurantMenuLoaded,
    TResult Function(String error)? getRestaurantMenuError,
    TResult Function(bool max, List<Menu> menuList)?
        getRestaurantMenuReachedMax,
    required TResult orElse(),
  }) {
    if (getRestaurantMenuLoading != null) {
      return getRestaurantMenuLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetRestaurantMenuLoading value)
        getRestaurantMenuLoading,
    required TResult Function(GetRestaurantMenuLoaded value)
        getRestaurantMenuLoaded,
    required TResult Function(GetRestaurantMenuError value)
        getRestaurantMenuError,
    required TResult Function(GetRestaurantMenuReachedMax value)
        getRestaurantMenuReachedMax,
  }) {
    return getRestaurantMenuLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetRestaurantMenuLoading value)? getRestaurantMenuLoading,
    TResult? Function(GetRestaurantMenuLoaded value)? getRestaurantMenuLoaded,
    TResult? Function(GetRestaurantMenuError value)? getRestaurantMenuError,
    TResult? Function(GetRestaurantMenuReachedMax value)?
        getRestaurantMenuReachedMax,
  }) {
    return getRestaurantMenuLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetRestaurantMenuLoading value)? getRestaurantMenuLoading,
    TResult Function(GetRestaurantMenuLoaded value)? getRestaurantMenuLoaded,
    TResult Function(GetRestaurantMenuError value)? getRestaurantMenuError,
    TResult Function(GetRestaurantMenuReachedMax value)?
        getRestaurantMenuReachedMax,
    required TResult orElse(),
  }) {
    if (getRestaurantMenuLoading != null) {
      return getRestaurantMenuLoading(this);
    }
    return orElse();
  }
}

abstract class GetRestaurantMenuLoading implements RestaurantMenuState {
  const factory GetRestaurantMenuLoading() = _$GetRestaurantMenuLoading;
}

/// @nodoc
abstract class _$$GetRestaurantMenuLoadedCopyWith<$Res> {
  factory _$$GetRestaurantMenuLoadedCopyWith(_$GetRestaurantMenuLoaded value,
          $Res Function(_$GetRestaurantMenuLoaded) then) =
      __$$GetRestaurantMenuLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Menu> menuList});
}

/// @nodoc
class __$$GetRestaurantMenuLoadedCopyWithImpl<$Res>
    extends _$RestaurantMenuStateCopyWithImpl<$Res, _$GetRestaurantMenuLoaded>
    implements _$$GetRestaurantMenuLoadedCopyWith<$Res> {
  __$$GetRestaurantMenuLoadedCopyWithImpl(_$GetRestaurantMenuLoaded _value,
      $Res Function(_$GetRestaurantMenuLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuList = null,
  }) {
    return _then(_$GetRestaurantMenuLoaded(
      null == menuList
          ? _value._menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<Menu>,
    ));
  }
}

/// @nodoc

class _$GetRestaurantMenuLoaded implements GetRestaurantMenuLoaded {
  const _$GetRestaurantMenuLoaded(final List<Menu> menuList)
      : _menuList = menuList;

  final List<Menu> _menuList;
  @override
  List<Menu> get menuList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuList);
  }

  @override
  String toString() {
    return 'RestaurantMenuState.getRestaurantMenuLoaded(menuList: $menuList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRestaurantMenuLoaded &&
            const DeepCollectionEquality().equals(other._menuList, _menuList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_menuList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRestaurantMenuLoadedCopyWith<_$GetRestaurantMenuLoaded> get copyWith =>
      __$$GetRestaurantMenuLoadedCopyWithImpl<_$GetRestaurantMenuLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRestaurantMenuLoading,
    required TResult Function(List<Menu> menuList) getRestaurantMenuLoaded,
    required TResult Function(String error) getRestaurantMenuError,
    required TResult Function(bool max, List<Menu> menuList)
        getRestaurantMenuReachedMax,
  }) {
    return getRestaurantMenuLoaded(menuList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRestaurantMenuLoading,
    TResult? Function(List<Menu> menuList)? getRestaurantMenuLoaded,
    TResult? Function(String error)? getRestaurantMenuError,
    TResult? Function(bool max, List<Menu> menuList)?
        getRestaurantMenuReachedMax,
  }) {
    return getRestaurantMenuLoaded?.call(menuList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRestaurantMenuLoading,
    TResult Function(List<Menu> menuList)? getRestaurantMenuLoaded,
    TResult Function(String error)? getRestaurantMenuError,
    TResult Function(bool max, List<Menu> menuList)?
        getRestaurantMenuReachedMax,
    required TResult orElse(),
  }) {
    if (getRestaurantMenuLoaded != null) {
      return getRestaurantMenuLoaded(menuList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetRestaurantMenuLoading value)
        getRestaurantMenuLoading,
    required TResult Function(GetRestaurantMenuLoaded value)
        getRestaurantMenuLoaded,
    required TResult Function(GetRestaurantMenuError value)
        getRestaurantMenuError,
    required TResult Function(GetRestaurantMenuReachedMax value)
        getRestaurantMenuReachedMax,
  }) {
    return getRestaurantMenuLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetRestaurantMenuLoading value)? getRestaurantMenuLoading,
    TResult? Function(GetRestaurantMenuLoaded value)? getRestaurantMenuLoaded,
    TResult? Function(GetRestaurantMenuError value)? getRestaurantMenuError,
    TResult? Function(GetRestaurantMenuReachedMax value)?
        getRestaurantMenuReachedMax,
  }) {
    return getRestaurantMenuLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetRestaurantMenuLoading value)? getRestaurantMenuLoading,
    TResult Function(GetRestaurantMenuLoaded value)? getRestaurantMenuLoaded,
    TResult Function(GetRestaurantMenuError value)? getRestaurantMenuError,
    TResult Function(GetRestaurantMenuReachedMax value)?
        getRestaurantMenuReachedMax,
    required TResult orElse(),
  }) {
    if (getRestaurantMenuLoaded != null) {
      return getRestaurantMenuLoaded(this);
    }
    return orElse();
  }
}

abstract class GetRestaurantMenuLoaded implements RestaurantMenuState {
  const factory GetRestaurantMenuLoaded(final List<Menu> menuList) =
      _$GetRestaurantMenuLoaded;

  List<Menu> get menuList;
  @JsonKey(ignore: true)
  _$$GetRestaurantMenuLoadedCopyWith<_$GetRestaurantMenuLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRestaurantMenuErrorCopyWith<$Res> {
  factory _$$GetRestaurantMenuErrorCopyWith(_$GetRestaurantMenuError value,
          $Res Function(_$GetRestaurantMenuError) then) =
      __$$GetRestaurantMenuErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetRestaurantMenuErrorCopyWithImpl<$Res>
    extends _$RestaurantMenuStateCopyWithImpl<$Res, _$GetRestaurantMenuError>
    implements _$$GetRestaurantMenuErrorCopyWith<$Res> {
  __$$GetRestaurantMenuErrorCopyWithImpl(_$GetRestaurantMenuError _value,
      $Res Function(_$GetRestaurantMenuError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetRestaurantMenuError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRestaurantMenuError implements GetRestaurantMenuError {
  const _$GetRestaurantMenuError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'RestaurantMenuState.getRestaurantMenuError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRestaurantMenuError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRestaurantMenuErrorCopyWith<_$GetRestaurantMenuError> get copyWith =>
      __$$GetRestaurantMenuErrorCopyWithImpl<_$GetRestaurantMenuError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRestaurantMenuLoading,
    required TResult Function(List<Menu> menuList) getRestaurantMenuLoaded,
    required TResult Function(String error) getRestaurantMenuError,
    required TResult Function(bool max, List<Menu> menuList)
        getRestaurantMenuReachedMax,
  }) {
    return getRestaurantMenuError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRestaurantMenuLoading,
    TResult? Function(List<Menu> menuList)? getRestaurantMenuLoaded,
    TResult? Function(String error)? getRestaurantMenuError,
    TResult? Function(bool max, List<Menu> menuList)?
        getRestaurantMenuReachedMax,
  }) {
    return getRestaurantMenuError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRestaurantMenuLoading,
    TResult Function(List<Menu> menuList)? getRestaurantMenuLoaded,
    TResult Function(String error)? getRestaurantMenuError,
    TResult Function(bool max, List<Menu> menuList)?
        getRestaurantMenuReachedMax,
    required TResult orElse(),
  }) {
    if (getRestaurantMenuError != null) {
      return getRestaurantMenuError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetRestaurantMenuLoading value)
        getRestaurantMenuLoading,
    required TResult Function(GetRestaurantMenuLoaded value)
        getRestaurantMenuLoaded,
    required TResult Function(GetRestaurantMenuError value)
        getRestaurantMenuError,
    required TResult Function(GetRestaurantMenuReachedMax value)
        getRestaurantMenuReachedMax,
  }) {
    return getRestaurantMenuError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetRestaurantMenuLoading value)? getRestaurantMenuLoading,
    TResult? Function(GetRestaurantMenuLoaded value)? getRestaurantMenuLoaded,
    TResult? Function(GetRestaurantMenuError value)? getRestaurantMenuError,
    TResult? Function(GetRestaurantMenuReachedMax value)?
        getRestaurantMenuReachedMax,
  }) {
    return getRestaurantMenuError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetRestaurantMenuLoading value)? getRestaurantMenuLoading,
    TResult Function(GetRestaurantMenuLoaded value)? getRestaurantMenuLoaded,
    TResult Function(GetRestaurantMenuError value)? getRestaurantMenuError,
    TResult Function(GetRestaurantMenuReachedMax value)?
        getRestaurantMenuReachedMax,
    required TResult orElse(),
  }) {
    if (getRestaurantMenuError != null) {
      return getRestaurantMenuError(this);
    }
    return orElse();
  }
}

abstract class GetRestaurantMenuError implements RestaurantMenuState {
  const factory GetRestaurantMenuError(final String error) =
      _$GetRestaurantMenuError;

  String get error;
  @JsonKey(ignore: true)
  _$$GetRestaurantMenuErrorCopyWith<_$GetRestaurantMenuError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRestaurantMenuReachedMaxCopyWith<$Res> {
  factory _$$GetRestaurantMenuReachedMaxCopyWith(
          _$GetRestaurantMenuReachedMax value,
          $Res Function(_$GetRestaurantMenuReachedMax) then) =
      __$$GetRestaurantMenuReachedMaxCopyWithImpl<$Res>;
  @useResult
  $Res call({bool max, List<Menu> menuList});
}

/// @nodoc
class __$$GetRestaurantMenuReachedMaxCopyWithImpl<$Res>
    extends _$RestaurantMenuStateCopyWithImpl<$Res,
        _$GetRestaurantMenuReachedMax>
    implements _$$GetRestaurantMenuReachedMaxCopyWith<$Res> {
  __$$GetRestaurantMenuReachedMaxCopyWithImpl(
      _$GetRestaurantMenuReachedMax _value,
      $Res Function(_$GetRestaurantMenuReachedMax) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? max = null,
    Object? menuList = null,
  }) {
    return _then(_$GetRestaurantMenuReachedMax(
      null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as bool,
      null == menuList
          ? _value._menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<Menu>,
    ));
  }
}

/// @nodoc

class _$GetRestaurantMenuReachedMax implements GetRestaurantMenuReachedMax {
  const _$GetRestaurantMenuReachedMax(this.max, final List<Menu> menuList)
      : _menuList = menuList;

  @override
  final bool max;
  final List<Menu> _menuList;
  @override
  List<Menu> get menuList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuList);
  }

  @override
  String toString() {
    return 'RestaurantMenuState.getRestaurantMenuReachedMax(max: $max, menuList: $menuList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRestaurantMenuReachedMax &&
            (identical(other.max, max) || other.max == max) &&
            const DeepCollectionEquality().equals(other._menuList, _menuList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, max, const DeepCollectionEquality().hash(_menuList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRestaurantMenuReachedMaxCopyWith<_$GetRestaurantMenuReachedMax>
      get copyWith => __$$GetRestaurantMenuReachedMaxCopyWithImpl<
          _$GetRestaurantMenuReachedMax>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRestaurantMenuLoading,
    required TResult Function(List<Menu> menuList) getRestaurantMenuLoaded,
    required TResult Function(String error) getRestaurantMenuError,
    required TResult Function(bool max, List<Menu> menuList)
        getRestaurantMenuReachedMax,
  }) {
    return getRestaurantMenuReachedMax(max, menuList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRestaurantMenuLoading,
    TResult? Function(List<Menu> menuList)? getRestaurantMenuLoaded,
    TResult? Function(String error)? getRestaurantMenuError,
    TResult? Function(bool max, List<Menu> menuList)?
        getRestaurantMenuReachedMax,
  }) {
    return getRestaurantMenuReachedMax?.call(max, menuList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRestaurantMenuLoading,
    TResult Function(List<Menu> menuList)? getRestaurantMenuLoaded,
    TResult Function(String error)? getRestaurantMenuError,
    TResult Function(bool max, List<Menu> menuList)?
        getRestaurantMenuReachedMax,
    required TResult orElse(),
  }) {
    if (getRestaurantMenuReachedMax != null) {
      return getRestaurantMenuReachedMax(max, menuList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetRestaurantMenuLoading value)
        getRestaurantMenuLoading,
    required TResult Function(GetRestaurantMenuLoaded value)
        getRestaurantMenuLoaded,
    required TResult Function(GetRestaurantMenuError value)
        getRestaurantMenuError,
    required TResult Function(GetRestaurantMenuReachedMax value)
        getRestaurantMenuReachedMax,
  }) {
    return getRestaurantMenuReachedMax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetRestaurantMenuLoading value)? getRestaurantMenuLoading,
    TResult? Function(GetRestaurantMenuLoaded value)? getRestaurantMenuLoaded,
    TResult? Function(GetRestaurantMenuError value)? getRestaurantMenuError,
    TResult? Function(GetRestaurantMenuReachedMax value)?
        getRestaurantMenuReachedMax,
  }) {
    return getRestaurantMenuReachedMax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetRestaurantMenuLoading value)? getRestaurantMenuLoading,
    TResult Function(GetRestaurantMenuLoaded value)? getRestaurantMenuLoaded,
    TResult Function(GetRestaurantMenuError value)? getRestaurantMenuError,
    TResult Function(GetRestaurantMenuReachedMax value)?
        getRestaurantMenuReachedMax,
    required TResult orElse(),
  }) {
    if (getRestaurantMenuReachedMax != null) {
      return getRestaurantMenuReachedMax(this);
    }
    return orElse();
  }
}

abstract class GetRestaurantMenuReachedMax implements RestaurantMenuState {
  const factory GetRestaurantMenuReachedMax(
          final bool max, final List<Menu> menuList) =
      _$GetRestaurantMenuReachedMax;

  bool get max;
  List<Menu> get menuList;
  @JsonKey(ignore: true)
  _$$GetRestaurantMenuReachedMaxCopyWith<_$GetRestaurantMenuReachedMax>
      get copyWith => throw _privateConstructorUsedError;
}
