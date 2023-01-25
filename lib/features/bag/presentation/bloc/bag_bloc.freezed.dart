// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bag_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BagEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? restaurantId) getBagItems,
    required TResult Function(
            AddTobagRequest request, String foodId, BagItem? bagItem)
        addItemTobag,
    required TResult Function(String restaurantId) removeBagItem,
    required TResult Function(String foodId, String restaurantId) removeFood,
    required TResult Function(String restaurantId, String foodId, int quantity)
        changeQuantity,
    required TResult Function(BagItem bagItem) changeActiveBagItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? restaurantId)? getBagItems,
    TResult? Function(AddTobagRequest request, String foodId, BagItem? bagItem)?
        addItemTobag,
    TResult? Function(String restaurantId)? removeBagItem,
    TResult? Function(String foodId, String restaurantId)? removeFood,
    TResult? Function(String restaurantId, String foodId, int quantity)?
        changeQuantity,
    TResult? Function(BagItem bagItem)? changeActiveBagItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? restaurantId)? getBagItems,
    TResult Function(AddTobagRequest request, String foodId, BagItem? bagItem)?
        addItemTobag,
    TResult Function(String restaurantId)? removeBagItem,
    TResult Function(String foodId, String restaurantId)? removeFood,
    TResult Function(String restaurantId, String foodId, int quantity)?
        changeQuantity,
    TResult Function(BagItem bagItem)? changeActiveBagItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetBagItems value) getBagItems,
    required TResult Function(AddItemTobag value) addItemTobag,
    required TResult Function(RemoveBagItem value) removeBagItem,
    required TResult Function(RemoveFood value) removeFood,
    required TResult Function(ChangeQuantity value) changeQuantity,
    required TResult Function(ChangeActiveBagItem value) changeActiveBagItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetBagItems value)? getBagItems,
    TResult? Function(AddItemTobag value)? addItemTobag,
    TResult? Function(RemoveBagItem value)? removeBagItem,
    TResult? Function(RemoveFood value)? removeFood,
    TResult? Function(ChangeQuantity value)? changeQuantity,
    TResult? Function(ChangeActiveBagItem value)? changeActiveBagItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetBagItems value)? getBagItems,
    TResult Function(AddItemTobag value)? addItemTobag,
    TResult Function(RemoveBagItem value)? removeBagItem,
    TResult Function(RemoveFood value)? removeFood,
    TResult Function(ChangeQuantity value)? changeQuantity,
    TResult Function(ChangeActiveBagItem value)? changeActiveBagItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BagEventCopyWith<$Res> {
  factory $BagEventCopyWith(BagEvent value, $Res Function(BagEvent) then) =
      _$BagEventCopyWithImpl<$Res, BagEvent>;
}

/// @nodoc
class _$BagEventCopyWithImpl<$Res, $Val extends BagEvent>
    implements $BagEventCopyWith<$Res> {
  _$BagEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$BagEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'BagEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? restaurantId) getBagItems,
    required TResult Function(
            AddTobagRequest request, String foodId, BagItem? bagItem)
        addItemTobag,
    required TResult Function(String restaurantId) removeBagItem,
    required TResult Function(String foodId, String restaurantId) removeFood,
    required TResult Function(String restaurantId, String foodId, int quantity)
        changeQuantity,
    required TResult Function(BagItem bagItem) changeActiveBagItem,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? restaurantId)? getBagItems,
    TResult? Function(AddTobagRequest request, String foodId, BagItem? bagItem)?
        addItemTobag,
    TResult? Function(String restaurantId)? removeBagItem,
    TResult? Function(String foodId, String restaurantId)? removeFood,
    TResult? Function(String restaurantId, String foodId, int quantity)?
        changeQuantity,
    TResult? Function(BagItem bagItem)? changeActiveBagItem,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? restaurantId)? getBagItems,
    TResult Function(AddTobagRequest request, String foodId, BagItem? bagItem)?
        addItemTobag,
    TResult Function(String restaurantId)? removeBagItem,
    TResult Function(String foodId, String restaurantId)? removeFood,
    TResult Function(String restaurantId, String foodId, int quantity)?
        changeQuantity,
    TResult Function(BagItem bagItem)? changeActiveBagItem,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetBagItems value) getBagItems,
    required TResult Function(AddItemTobag value) addItemTobag,
    required TResult Function(RemoveBagItem value) removeBagItem,
    required TResult Function(RemoveFood value) removeFood,
    required TResult Function(ChangeQuantity value) changeQuantity,
    required TResult Function(ChangeActiveBagItem value) changeActiveBagItem,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetBagItems value)? getBagItems,
    TResult? Function(AddItemTobag value)? addItemTobag,
    TResult? Function(RemoveBagItem value)? removeBagItem,
    TResult? Function(RemoveFood value)? removeFood,
    TResult? Function(ChangeQuantity value)? changeQuantity,
    TResult? Function(ChangeActiveBagItem value)? changeActiveBagItem,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetBagItems value)? getBagItems,
    TResult Function(AddItemTobag value)? addItemTobag,
    TResult Function(RemoveBagItem value)? removeBagItem,
    TResult Function(RemoveFood value)? removeFood,
    TResult Function(ChangeQuantity value)? changeQuantity,
    TResult Function(ChangeActiveBagItem value)? changeActiveBagItem,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements BagEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$GetBagItemsCopyWith<$Res> {
  factory _$$GetBagItemsCopyWith(
          _$GetBagItems value, $Res Function(_$GetBagItems) then) =
      __$$GetBagItemsCopyWithImpl<$Res>;
  @useResult
  $Res call({String? restaurantId});
}

/// @nodoc
class __$$GetBagItemsCopyWithImpl<$Res>
    extends _$BagEventCopyWithImpl<$Res, _$GetBagItems>
    implements _$$GetBagItemsCopyWith<$Res> {
  __$$GetBagItemsCopyWithImpl(
      _$GetBagItems _value, $Res Function(_$GetBagItems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = freezed,
  }) {
    return _then(_$GetBagItems(
      restaurantId: freezed == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetBagItems implements GetBagItems {
  const _$GetBagItems({this.restaurantId});

  @override
  final String? restaurantId;

  @override
  String toString() {
    return 'BagEvent.getBagItems(restaurantId: $restaurantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBagItems &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restaurantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBagItemsCopyWith<_$GetBagItems> get copyWith =>
      __$$GetBagItemsCopyWithImpl<_$GetBagItems>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? restaurantId) getBagItems,
    required TResult Function(
            AddTobagRequest request, String foodId, BagItem? bagItem)
        addItemTobag,
    required TResult Function(String restaurantId) removeBagItem,
    required TResult Function(String foodId, String restaurantId) removeFood,
    required TResult Function(String restaurantId, String foodId, int quantity)
        changeQuantity,
    required TResult Function(BagItem bagItem) changeActiveBagItem,
  }) {
    return getBagItems(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? restaurantId)? getBagItems,
    TResult? Function(AddTobagRequest request, String foodId, BagItem? bagItem)?
        addItemTobag,
    TResult? Function(String restaurantId)? removeBagItem,
    TResult? Function(String foodId, String restaurantId)? removeFood,
    TResult? Function(String restaurantId, String foodId, int quantity)?
        changeQuantity,
    TResult? Function(BagItem bagItem)? changeActiveBagItem,
  }) {
    return getBagItems?.call(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? restaurantId)? getBagItems,
    TResult Function(AddTobagRequest request, String foodId, BagItem? bagItem)?
        addItemTobag,
    TResult Function(String restaurantId)? removeBagItem,
    TResult Function(String foodId, String restaurantId)? removeFood,
    TResult Function(String restaurantId, String foodId, int quantity)?
        changeQuantity,
    TResult Function(BagItem bagItem)? changeActiveBagItem,
    required TResult orElse(),
  }) {
    if (getBagItems != null) {
      return getBagItems(restaurantId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetBagItems value) getBagItems,
    required TResult Function(AddItemTobag value) addItemTobag,
    required TResult Function(RemoveBagItem value) removeBagItem,
    required TResult Function(RemoveFood value) removeFood,
    required TResult Function(ChangeQuantity value) changeQuantity,
    required TResult Function(ChangeActiveBagItem value) changeActiveBagItem,
  }) {
    return getBagItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetBagItems value)? getBagItems,
    TResult? Function(AddItemTobag value)? addItemTobag,
    TResult? Function(RemoveBagItem value)? removeBagItem,
    TResult? Function(RemoveFood value)? removeFood,
    TResult? Function(ChangeQuantity value)? changeQuantity,
    TResult? Function(ChangeActiveBagItem value)? changeActiveBagItem,
  }) {
    return getBagItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetBagItems value)? getBagItems,
    TResult Function(AddItemTobag value)? addItemTobag,
    TResult Function(RemoveBagItem value)? removeBagItem,
    TResult Function(RemoveFood value)? removeFood,
    TResult Function(ChangeQuantity value)? changeQuantity,
    TResult Function(ChangeActiveBagItem value)? changeActiveBagItem,
    required TResult orElse(),
  }) {
    if (getBagItems != null) {
      return getBagItems(this);
    }
    return orElse();
  }
}

abstract class GetBagItems implements BagEvent {
  const factory GetBagItems({final String? restaurantId}) = _$GetBagItems;

  String? get restaurantId;
  @JsonKey(ignore: true)
  _$$GetBagItemsCopyWith<_$GetBagItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddItemTobagCopyWith<$Res> {
  factory _$$AddItemTobagCopyWith(
          _$AddItemTobag value, $Res Function(_$AddItemTobag) then) =
      __$$AddItemTobagCopyWithImpl<$Res>;
  @useResult
  $Res call({AddTobagRequest request, String foodId, BagItem? bagItem});

  $AddTobagRequestCopyWith<$Res> get request;
  $BagItemCopyWith<$Res>? get bagItem;
}

/// @nodoc
class __$$AddItemTobagCopyWithImpl<$Res>
    extends _$BagEventCopyWithImpl<$Res, _$AddItemTobag>
    implements _$$AddItemTobagCopyWith<$Res> {
  __$$AddItemTobagCopyWithImpl(
      _$AddItemTobag _value, $Res Function(_$AddItemTobag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? foodId = null,
    Object? bagItem = freezed,
  }) {
    return _then(_$AddItemTobag(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as AddTobagRequest,
      null == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == bagItem
          ? _value.bagItem
          : bagItem // ignore: cast_nullable_to_non_nullable
              as BagItem?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddTobagRequestCopyWith<$Res> get request {
    return $AddTobagRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BagItemCopyWith<$Res>? get bagItem {
    if (_value.bagItem == null) {
      return null;
    }

    return $BagItemCopyWith<$Res>(_value.bagItem!, (value) {
      return _then(_value.copyWith(bagItem: value));
    });
  }
}

/// @nodoc

class _$AddItemTobag implements AddItemTobag {
  const _$AddItemTobag(this.request, this.foodId, this.bagItem);

  @override
  final AddTobagRequest request;
  @override
  final String foodId;
  @override
  final BagItem? bagItem;

  @override
  String toString() {
    return 'BagEvent.addItemTobag(request: $request, foodId: $foodId, bagItem: $bagItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemTobag &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.foodId, foodId) || other.foodId == foodId) &&
            (identical(other.bagItem, bagItem) || other.bagItem == bagItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, foodId, bagItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemTobagCopyWith<_$AddItemTobag> get copyWith =>
      __$$AddItemTobagCopyWithImpl<_$AddItemTobag>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? restaurantId) getBagItems,
    required TResult Function(
            AddTobagRequest request, String foodId, BagItem? bagItem)
        addItemTobag,
    required TResult Function(String restaurantId) removeBagItem,
    required TResult Function(String foodId, String restaurantId) removeFood,
    required TResult Function(String restaurantId, String foodId, int quantity)
        changeQuantity,
    required TResult Function(BagItem bagItem) changeActiveBagItem,
  }) {
    return addItemTobag(request, foodId, bagItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? restaurantId)? getBagItems,
    TResult? Function(AddTobagRequest request, String foodId, BagItem? bagItem)?
        addItemTobag,
    TResult? Function(String restaurantId)? removeBagItem,
    TResult? Function(String foodId, String restaurantId)? removeFood,
    TResult? Function(String restaurantId, String foodId, int quantity)?
        changeQuantity,
    TResult? Function(BagItem bagItem)? changeActiveBagItem,
  }) {
    return addItemTobag?.call(request, foodId, bagItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? restaurantId)? getBagItems,
    TResult Function(AddTobagRequest request, String foodId, BagItem? bagItem)?
        addItemTobag,
    TResult Function(String restaurantId)? removeBagItem,
    TResult Function(String foodId, String restaurantId)? removeFood,
    TResult Function(String restaurantId, String foodId, int quantity)?
        changeQuantity,
    TResult Function(BagItem bagItem)? changeActiveBagItem,
    required TResult orElse(),
  }) {
    if (addItemTobag != null) {
      return addItemTobag(request, foodId, bagItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetBagItems value) getBagItems,
    required TResult Function(AddItemTobag value) addItemTobag,
    required TResult Function(RemoveBagItem value) removeBagItem,
    required TResult Function(RemoveFood value) removeFood,
    required TResult Function(ChangeQuantity value) changeQuantity,
    required TResult Function(ChangeActiveBagItem value) changeActiveBagItem,
  }) {
    return addItemTobag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetBagItems value)? getBagItems,
    TResult? Function(AddItemTobag value)? addItemTobag,
    TResult? Function(RemoveBagItem value)? removeBagItem,
    TResult? Function(RemoveFood value)? removeFood,
    TResult? Function(ChangeQuantity value)? changeQuantity,
    TResult? Function(ChangeActiveBagItem value)? changeActiveBagItem,
  }) {
    return addItemTobag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetBagItems value)? getBagItems,
    TResult Function(AddItemTobag value)? addItemTobag,
    TResult Function(RemoveBagItem value)? removeBagItem,
    TResult Function(RemoveFood value)? removeFood,
    TResult Function(ChangeQuantity value)? changeQuantity,
    TResult Function(ChangeActiveBagItem value)? changeActiveBagItem,
    required TResult orElse(),
  }) {
    if (addItemTobag != null) {
      return addItemTobag(this);
    }
    return orElse();
  }
}

abstract class AddItemTobag implements BagEvent {
  const factory AddItemTobag(final AddTobagRequest request, final String foodId,
      final BagItem? bagItem) = _$AddItemTobag;

  AddTobagRequest get request;
  String get foodId;
  BagItem? get bagItem;
  @JsonKey(ignore: true)
  _$$AddItemTobagCopyWith<_$AddItemTobag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveBagItemCopyWith<$Res> {
  factory _$$RemoveBagItemCopyWith(
          _$RemoveBagItem value, $Res Function(_$RemoveBagItem) then) =
      __$$RemoveBagItemCopyWithImpl<$Res>;
  @useResult
  $Res call({String restaurantId});
}

/// @nodoc
class __$$RemoveBagItemCopyWithImpl<$Res>
    extends _$BagEventCopyWithImpl<$Res, _$RemoveBagItem>
    implements _$$RemoveBagItemCopyWith<$Res> {
  __$$RemoveBagItemCopyWithImpl(
      _$RemoveBagItem _value, $Res Function(_$RemoveBagItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
  }) {
    return _then(_$RemoveBagItem(
      null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveBagItem implements RemoveBagItem {
  const _$RemoveBagItem(this.restaurantId);

  @override
  final String restaurantId;

  @override
  String toString() {
    return 'BagEvent.removeBagItem(restaurantId: $restaurantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveBagItem &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restaurantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveBagItemCopyWith<_$RemoveBagItem> get copyWith =>
      __$$RemoveBagItemCopyWithImpl<_$RemoveBagItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? restaurantId) getBagItems,
    required TResult Function(
            AddTobagRequest request, String foodId, BagItem? bagItem)
        addItemTobag,
    required TResult Function(String restaurantId) removeBagItem,
    required TResult Function(String foodId, String restaurantId) removeFood,
    required TResult Function(String restaurantId, String foodId, int quantity)
        changeQuantity,
    required TResult Function(BagItem bagItem) changeActiveBagItem,
  }) {
    return removeBagItem(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? restaurantId)? getBagItems,
    TResult? Function(AddTobagRequest request, String foodId, BagItem? bagItem)?
        addItemTobag,
    TResult? Function(String restaurantId)? removeBagItem,
    TResult? Function(String foodId, String restaurantId)? removeFood,
    TResult? Function(String restaurantId, String foodId, int quantity)?
        changeQuantity,
    TResult? Function(BagItem bagItem)? changeActiveBagItem,
  }) {
    return removeBagItem?.call(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? restaurantId)? getBagItems,
    TResult Function(AddTobagRequest request, String foodId, BagItem? bagItem)?
        addItemTobag,
    TResult Function(String restaurantId)? removeBagItem,
    TResult Function(String foodId, String restaurantId)? removeFood,
    TResult Function(String restaurantId, String foodId, int quantity)?
        changeQuantity,
    TResult Function(BagItem bagItem)? changeActiveBagItem,
    required TResult orElse(),
  }) {
    if (removeBagItem != null) {
      return removeBagItem(restaurantId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetBagItems value) getBagItems,
    required TResult Function(AddItemTobag value) addItemTobag,
    required TResult Function(RemoveBagItem value) removeBagItem,
    required TResult Function(RemoveFood value) removeFood,
    required TResult Function(ChangeQuantity value) changeQuantity,
    required TResult Function(ChangeActiveBagItem value) changeActiveBagItem,
  }) {
    return removeBagItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetBagItems value)? getBagItems,
    TResult? Function(AddItemTobag value)? addItemTobag,
    TResult? Function(RemoveBagItem value)? removeBagItem,
    TResult? Function(RemoveFood value)? removeFood,
    TResult? Function(ChangeQuantity value)? changeQuantity,
    TResult? Function(ChangeActiveBagItem value)? changeActiveBagItem,
  }) {
    return removeBagItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetBagItems value)? getBagItems,
    TResult Function(AddItemTobag value)? addItemTobag,
    TResult Function(RemoveBagItem value)? removeBagItem,
    TResult Function(RemoveFood value)? removeFood,
    TResult Function(ChangeQuantity value)? changeQuantity,
    TResult Function(ChangeActiveBagItem value)? changeActiveBagItem,
    required TResult orElse(),
  }) {
    if (removeBagItem != null) {
      return removeBagItem(this);
    }
    return orElse();
  }
}

abstract class RemoveBagItem implements BagEvent {
  const factory RemoveBagItem(final String restaurantId) = _$RemoveBagItem;

  String get restaurantId;
  @JsonKey(ignore: true)
  _$$RemoveBagItemCopyWith<_$RemoveBagItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFoodCopyWith<$Res> {
  factory _$$RemoveFoodCopyWith(
          _$RemoveFood value, $Res Function(_$RemoveFood) then) =
      __$$RemoveFoodCopyWithImpl<$Res>;
  @useResult
  $Res call({String foodId, String restaurantId});
}

/// @nodoc
class __$$RemoveFoodCopyWithImpl<$Res>
    extends _$BagEventCopyWithImpl<$Res, _$RemoveFood>
    implements _$$RemoveFoodCopyWith<$Res> {
  __$$RemoveFoodCopyWithImpl(
      _$RemoveFood _value, $Res Function(_$RemoveFood) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodId = null,
    Object? restaurantId = null,
  }) {
    return _then(_$RemoveFood(
      foodId: null == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFood implements RemoveFood {
  const _$RemoveFood({required this.foodId, required this.restaurantId});

  @override
  final String foodId;
  @override
  final String restaurantId;

  @override
  String toString() {
    return 'BagEvent.removeFood(foodId: $foodId, restaurantId: $restaurantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFood &&
            (identical(other.foodId, foodId) || other.foodId == foodId) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, foodId, restaurantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFoodCopyWith<_$RemoveFood> get copyWith =>
      __$$RemoveFoodCopyWithImpl<_$RemoveFood>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? restaurantId) getBagItems,
    required TResult Function(
            AddTobagRequest request, String foodId, BagItem? bagItem)
        addItemTobag,
    required TResult Function(String restaurantId) removeBagItem,
    required TResult Function(String foodId, String restaurantId) removeFood,
    required TResult Function(String restaurantId, String foodId, int quantity)
        changeQuantity,
    required TResult Function(BagItem bagItem) changeActiveBagItem,
  }) {
    return removeFood(foodId, restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? restaurantId)? getBagItems,
    TResult? Function(AddTobagRequest request, String foodId, BagItem? bagItem)?
        addItemTobag,
    TResult? Function(String restaurantId)? removeBagItem,
    TResult? Function(String foodId, String restaurantId)? removeFood,
    TResult? Function(String restaurantId, String foodId, int quantity)?
        changeQuantity,
    TResult? Function(BagItem bagItem)? changeActiveBagItem,
  }) {
    return removeFood?.call(foodId, restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? restaurantId)? getBagItems,
    TResult Function(AddTobagRequest request, String foodId, BagItem? bagItem)?
        addItemTobag,
    TResult Function(String restaurantId)? removeBagItem,
    TResult Function(String foodId, String restaurantId)? removeFood,
    TResult Function(String restaurantId, String foodId, int quantity)?
        changeQuantity,
    TResult Function(BagItem bagItem)? changeActiveBagItem,
    required TResult orElse(),
  }) {
    if (removeFood != null) {
      return removeFood(foodId, restaurantId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetBagItems value) getBagItems,
    required TResult Function(AddItemTobag value) addItemTobag,
    required TResult Function(RemoveBagItem value) removeBagItem,
    required TResult Function(RemoveFood value) removeFood,
    required TResult Function(ChangeQuantity value) changeQuantity,
    required TResult Function(ChangeActiveBagItem value) changeActiveBagItem,
  }) {
    return removeFood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetBagItems value)? getBagItems,
    TResult? Function(AddItemTobag value)? addItemTobag,
    TResult? Function(RemoveBagItem value)? removeBagItem,
    TResult? Function(RemoveFood value)? removeFood,
    TResult? Function(ChangeQuantity value)? changeQuantity,
    TResult? Function(ChangeActiveBagItem value)? changeActiveBagItem,
  }) {
    return removeFood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetBagItems value)? getBagItems,
    TResult Function(AddItemTobag value)? addItemTobag,
    TResult Function(RemoveBagItem value)? removeBagItem,
    TResult Function(RemoveFood value)? removeFood,
    TResult Function(ChangeQuantity value)? changeQuantity,
    TResult Function(ChangeActiveBagItem value)? changeActiveBagItem,
    required TResult orElse(),
  }) {
    if (removeFood != null) {
      return removeFood(this);
    }
    return orElse();
  }
}

abstract class RemoveFood implements BagEvent {
  const factory RemoveFood(
      {required final String foodId,
      required final String restaurantId}) = _$RemoveFood;

  String get foodId;
  String get restaurantId;
  @JsonKey(ignore: true)
  _$$RemoveFoodCopyWith<_$RemoveFood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeQuantityCopyWith<$Res> {
  factory _$$ChangeQuantityCopyWith(
          _$ChangeQuantity value, $Res Function(_$ChangeQuantity) then) =
      __$$ChangeQuantityCopyWithImpl<$Res>;
  @useResult
  $Res call({String restaurantId, String foodId, int quantity});
}

/// @nodoc
class __$$ChangeQuantityCopyWithImpl<$Res>
    extends _$BagEventCopyWithImpl<$Res, _$ChangeQuantity>
    implements _$$ChangeQuantityCopyWith<$Res> {
  __$$ChangeQuantityCopyWithImpl(
      _$ChangeQuantity _value, $Res Function(_$ChangeQuantity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
    Object? foodId = null,
    Object? quantity = null,
  }) {
    return _then(_$ChangeQuantity(
      null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      null == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeQuantity implements ChangeQuantity {
  const _$ChangeQuantity(this.restaurantId, this.foodId, this.quantity);

  @override
  final String restaurantId;
  @override
  final String foodId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'BagEvent.changeQuantity(restaurantId: $restaurantId, foodId: $foodId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeQuantity &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.foodId, foodId) || other.foodId == foodId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restaurantId, foodId, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeQuantityCopyWith<_$ChangeQuantity> get copyWith =>
      __$$ChangeQuantityCopyWithImpl<_$ChangeQuantity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? restaurantId) getBagItems,
    required TResult Function(
            AddTobagRequest request, String foodId, BagItem? bagItem)
        addItemTobag,
    required TResult Function(String restaurantId) removeBagItem,
    required TResult Function(String foodId, String restaurantId) removeFood,
    required TResult Function(String restaurantId, String foodId, int quantity)
        changeQuantity,
    required TResult Function(BagItem bagItem) changeActiveBagItem,
  }) {
    return changeQuantity(restaurantId, foodId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? restaurantId)? getBagItems,
    TResult? Function(AddTobagRequest request, String foodId, BagItem? bagItem)?
        addItemTobag,
    TResult? Function(String restaurantId)? removeBagItem,
    TResult? Function(String foodId, String restaurantId)? removeFood,
    TResult? Function(String restaurantId, String foodId, int quantity)?
        changeQuantity,
    TResult? Function(BagItem bagItem)? changeActiveBagItem,
  }) {
    return changeQuantity?.call(restaurantId, foodId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? restaurantId)? getBagItems,
    TResult Function(AddTobagRequest request, String foodId, BagItem? bagItem)?
        addItemTobag,
    TResult Function(String restaurantId)? removeBagItem,
    TResult Function(String foodId, String restaurantId)? removeFood,
    TResult Function(String restaurantId, String foodId, int quantity)?
        changeQuantity,
    TResult Function(BagItem bagItem)? changeActiveBagItem,
    required TResult orElse(),
  }) {
    if (changeQuantity != null) {
      return changeQuantity(restaurantId, foodId, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetBagItems value) getBagItems,
    required TResult Function(AddItemTobag value) addItemTobag,
    required TResult Function(RemoveBagItem value) removeBagItem,
    required TResult Function(RemoveFood value) removeFood,
    required TResult Function(ChangeQuantity value) changeQuantity,
    required TResult Function(ChangeActiveBagItem value) changeActiveBagItem,
  }) {
    return changeQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetBagItems value)? getBagItems,
    TResult? Function(AddItemTobag value)? addItemTobag,
    TResult? Function(RemoveBagItem value)? removeBagItem,
    TResult? Function(RemoveFood value)? removeFood,
    TResult? Function(ChangeQuantity value)? changeQuantity,
    TResult? Function(ChangeActiveBagItem value)? changeActiveBagItem,
  }) {
    return changeQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetBagItems value)? getBagItems,
    TResult Function(AddItemTobag value)? addItemTobag,
    TResult Function(RemoveBagItem value)? removeBagItem,
    TResult Function(RemoveFood value)? removeFood,
    TResult Function(ChangeQuantity value)? changeQuantity,
    TResult Function(ChangeActiveBagItem value)? changeActiveBagItem,
    required TResult orElse(),
  }) {
    if (changeQuantity != null) {
      return changeQuantity(this);
    }
    return orElse();
  }
}

abstract class ChangeQuantity implements BagEvent {
  const factory ChangeQuantity(
          final String restaurantId, final String foodId, final int quantity) =
      _$ChangeQuantity;

  String get restaurantId;
  String get foodId;
  int get quantity;
  @JsonKey(ignore: true)
  _$$ChangeQuantityCopyWith<_$ChangeQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeActiveBagItemCopyWith<$Res> {
  factory _$$ChangeActiveBagItemCopyWith(_$ChangeActiveBagItem value,
          $Res Function(_$ChangeActiveBagItem) then) =
      __$$ChangeActiveBagItemCopyWithImpl<$Res>;
  @useResult
  $Res call({BagItem bagItem});

  $BagItemCopyWith<$Res> get bagItem;
}

/// @nodoc
class __$$ChangeActiveBagItemCopyWithImpl<$Res>
    extends _$BagEventCopyWithImpl<$Res, _$ChangeActiveBagItem>
    implements _$$ChangeActiveBagItemCopyWith<$Res> {
  __$$ChangeActiveBagItemCopyWithImpl(
      _$ChangeActiveBagItem _value, $Res Function(_$ChangeActiveBagItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bagItem = null,
  }) {
    return _then(_$ChangeActiveBagItem(
      null == bagItem
          ? _value.bagItem
          : bagItem // ignore: cast_nullable_to_non_nullable
              as BagItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BagItemCopyWith<$Res> get bagItem {
    return $BagItemCopyWith<$Res>(_value.bagItem, (value) {
      return _then(_value.copyWith(bagItem: value));
    });
  }
}

/// @nodoc

class _$ChangeActiveBagItem implements ChangeActiveBagItem {
  const _$ChangeActiveBagItem(this.bagItem);

  @override
  final BagItem bagItem;

  @override
  String toString() {
    return 'BagEvent.changeActiveBagItem(bagItem: $bagItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeActiveBagItem &&
            (identical(other.bagItem, bagItem) || other.bagItem == bagItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bagItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeActiveBagItemCopyWith<_$ChangeActiveBagItem> get copyWith =>
      __$$ChangeActiveBagItemCopyWithImpl<_$ChangeActiveBagItem>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? restaurantId) getBagItems,
    required TResult Function(
            AddTobagRequest request, String foodId, BagItem? bagItem)
        addItemTobag,
    required TResult Function(String restaurantId) removeBagItem,
    required TResult Function(String foodId, String restaurantId) removeFood,
    required TResult Function(String restaurantId, String foodId, int quantity)
        changeQuantity,
    required TResult Function(BagItem bagItem) changeActiveBagItem,
  }) {
    return changeActiveBagItem(bagItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? restaurantId)? getBagItems,
    TResult? Function(AddTobagRequest request, String foodId, BagItem? bagItem)?
        addItemTobag,
    TResult? Function(String restaurantId)? removeBagItem,
    TResult? Function(String foodId, String restaurantId)? removeFood,
    TResult? Function(String restaurantId, String foodId, int quantity)?
        changeQuantity,
    TResult? Function(BagItem bagItem)? changeActiveBagItem,
  }) {
    return changeActiveBagItem?.call(bagItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? restaurantId)? getBagItems,
    TResult Function(AddTobagRequest request, String foodId, BagItem? bagItem)?
        addItemTobag,
    TResult Function(String restaurantId)? removeBagItem,
    TResult Function(String foodId, String restaurantId)? removeFood,
    TResult Function(String restaurantId, String foodId, int quantity)?
        changeQuantity,
    TResult Function(BagItem bagItem)? changeActiveBagItem,
    required TResult orElse(),
  }) {
    if (changeActiveBagItem != null) {
      return changeActiveBagItem(bagItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetBagItems value) getBagItems,
    required TResult Function(AddItemTobag value) addItemTobag,
    required TResult Function(RemoveBagItem value) removeBagItem,
    required TResult Function(RemoveFood value) removeFood,
    required TResult Function(ChangeQuantity value) changeQuantity,
    required TResult Function(ChangeActiveBagItem value) changeActiveBagItem,
  }) {
    return changeActiveBagItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetBagItems value)? getBagItems,
    TResult? Function(AddItemTobag value)? addItemTobag,
    TResult? Function(RemoveBagItem value)? removeBagItem,
    TResult? Function(RemoveFood value)? removeFood,
    TResult? Function(ChangeQuantity value)? changeQuantity,
    TResult? Function(ChangeActiveBagItem value)? changeActiveBagItem,
  }) {
    return changeActiveBagItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetBagItems value)? getBagItems,
    TResult Function(AddItemTobag value)? addItemTobag,
    TResult Function(RemoveBagItem value)? removeBagItem,
    TResult Function(RemoveFood value)? removeFood,
    TResult Function(ChangeQuantity value)? changeQuantity,
    TResult Function(ChangeActiveBagItem value)? changeActiveBagItem,
    required TResult orElse(),
  }) {
    if (changeActiveBagItem != null) {
      return changeActiveBagItem(this);
    }
    return orElse();
  }
}

abstract class ChangeActiveBagItem implements BagEvent {
  const factory ChangeActiveBagItem(final BagItem bagItem) =
      _$ChangeActiveBagItem;

  BagItem get bagItem;
  @JsonKey(ignore: true)
  _$$ChangeActiveBagItemCopyWith<_$ChangeActiveBagItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BagState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bagLoading,
    required TResult Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)
        getBagItemsSuccess,
    required TResult Function() getBagItemsFailure,
    required TResult Function() addTobagLoading,
    required TResult Function() addTobagSuccess,
    required TResult Function(String errorMsg) addTobagFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bagLoading,
    TResult? Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)?
        getBagItemsSuccess,
    TResult? Function()? getBagItemsFailure,
    TResult? Function()? addTobagLoading,
    TResult? Function()? addTobagSuccess,
    TResult? Function(String errorMsg)? addTobagFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bagLoading,
    TResult Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)?
        getBagItemsSuccess,
    TResult Function()? getBagItemsFailure,
    TResult Function()? addTobagLoading,
    TResult Function()? addTobagSuccess,
    TResult Function(String errorMsg)? addTobagFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BagLoading value) bagLoading,
    required TResult Function(GetBagItemsSuccess value) getBagItemsSuccess,
    required TResult Function(GetBagItemsFailure value) getBagItemsFailure,
    required TResult Function(AddTobagLoading value) addTobagLoading,
    required TResult Function(AddTobagSuccess value) addTobagSuccess,
    required TResult Function(AddTobagFailure value) addTobagFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BagLoading value)? bagLoading,
    TResult? Function(GetBagItemsSuccess value)? getBagItemsSuccess,
    TResult? Function(GetBagItemsFailure value)? getBagItemsFailure,
    TResult? Function(AddTobagLoading value)? addTobagLoading,
    TResult? Function(AddTobagSuccess value)? addTobagSuccess,
    TResult? Function(AddTobagFailure value)? addTobagFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BagLoading value)? bagLoading,
    TResult Function(GetBagItemsSuccess value)? getBagItemsSuccess,
    TResult Function(GetBagItemsFailure value)? getBagItemsFailure,
    TResult Function(AddTobagLoading value)? addTobagLoading,
    TResult Function(AddTobagSuccess value)? addTobagSuccess,
    TResult Function(AddTobagFailure value)? addTobagFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BagStateCopyWith<$Res> {
  factory $BagStateCopyWith(BagState value, $Res Function(BagState) then) =
      _$BagStateCopyWithImpl<$Res, BagState>;
}

/// @nodoc
class _$BagStateCopyWithImpl<$Res, $Val extends BagState>
    implements $BagStateCopyWith<$Res> {
  _$BagStateCopyWithImpl(this._value, this._then);

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
    extends _$BagStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'BagState.initial()';
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
    required TResult Function() bagLoading,
    required TResult Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)
        getBagItemsSuccess,
    required TResult Function() getBagItemsFailure,
    required TResult Function() addTobagLoading,
    required TResult Function() addTobagSuccess,
    required TResult Function(String errorMsg) addTobagFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bagLoading,
    TResult? Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)?
        getBagItemsSuccess,
    TResult? Function()? getBagItemsFailure,
    TResult? Function()? addTobagLoading,
    TResult? Function()? addTobagSuccess,
    TResult? Function(String errorMsg)? addTobagFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bagLoading,
    TResult Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)?
        getBagItemsSuccess,
    TResult Function()? getBagItemsFailure,
    TResult Function()? addTobagLoading,
    TResult Function()? addTobagSuccess,
    TResult Function(String errorMsg)? addTobagFailure,
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
    required TResult Function(BagLoading value) bagLoading,
    required TResult Function(GetBagItemsSuccess value) getBagItemsSuccess,
    required TResult Function(GetBagItemsFailure value) getBagItemsFailure,
    required TResult Function(AddTobagLoading value) addTobagLoading,
    required TResult Function(AddTobagSuccess value) addTobagSuccess,
    required TResult Function(AddTobagFailure value) addTobagFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BagLoading value)? bagLoading,
    TResult? Function(GetBagItemsSuccess value)? getBagItemsSuccess,
    TResult? Function(GetBagItemsFailure value)? getBagItemsFailure,
    TResult? Function(AddTobagLoading value)? addTobagLoading,
    TResult? Function(AddTobagSuccess value)? addTobagSuccess,
    TResult? Function(AddTobagFailure value)? addTobagFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BagLoading value)? bagLoading,
    TResult Function(GetBagItemsSuccess value)? getBagItemsSuccess,
    TResult Function(GetBagItemsFailure value)? getBagItemsFailure,
    TResult Function(AddTobagLoading value)? addTobagLoading,
    TResult Function(AddTobagSuccess value)? addTobagSuccess,
    TResult Function(AddTobagFailure value)? addTobagFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BagState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$BagLoadingCopyWith<$Res> {
  factory _$$BagLoadingCopyWith(
          _$BagLoading value, $Res Function(_$BagLoading) then) =
      __$$BagLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BagLoadingCopyWithImpl<$Res>
    extends _$BagStateCopyWithImpl<$Res, _$BagLoading>
    implements _$$BagLoadingCopyWith<$Res> {
  __$$BagLoadingCopyWithImpl(
      _$BagLoading _value, $Res Function(_$BagLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BagLoading implements BagLoading {
  const _$BagLoading();

  @override
  String toString() {
    return 'BagState.bagLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BagLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bagLoading,
    required TResult Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)
        getBagItemsSuccess,
    required TResult Function() getBagItemsFailure,
    required TResult Function() addTobagLoading,
    required TResult Function() addTobagSuccess,
    required TResult Function(String errorMsg) addTobagFailure,
  }) {
    return bagLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bagLoading,
    TResult? Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)?
        getBagItemsSuccess,
    TResult? Function()? getBagItemsFailure,
    TResult? Function()? addTobagLoading,
    TResult? Function()? addTobagSuccess,
    TResult? Function(String errorMsg)? addTobagFailure,
  }) {
    return bagLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bagLoading,
    TResult Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)?
        getBagItemsSuccess,
    TResult Function()? getBagItemsFailure,
    TResult Function()? addTobagLoading,
    TResult Function()? addTobagSuccess,
    TResult Function(String errorMsg)? addTobagFailure,
    required TResult orElse(),
  }) {
    if (bagLoading != null) {
      return bagLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BagLoading value) bagLoading,
    required TResult Function(GetBagItemsSuccess value) getBagItemsSuccess,
    required TResult Function(GetBagItemsFailure value) getBagItemsFailure,
    required TResult Function(AddTobagLoading value) addTobagLoading,
    required TResult Function(AddTobagSuccess value) addTobagSuccess,
    required TResult Function(AddTobagFailure value) addTobagFailure,
  }) {
    return bagLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BagLoading value)? bagLoading,
    TResult? Function(GetBagItemsSuccess value)? getBagItemsSuccess,
    TResult? Function(GetBagItemsFailure value)? getBagItemsFailure,
    TResult? Function(AddTobagLoading value)? addTobagLoading,
    TResult? Function(AddTobagSuccess value)? addTobagSuccess,
    TResult? Function(AddTobagFailure value)? addTobagFailure,
  }) {
    return bagLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BagLoading value)? bagLoading,
    TResult Function(GetBagItemsSuccess value)? getBagItemsSuccess,
    TResult Function(GetBagItemsFailure value)? getBagItemsFailure,
    TResult Function(AddTobagLoading value)? addTobagLoading,
    TResult Function(AddTobagSuccess value)? addTobagSuccess,
    TResult Function(AddTobagFailure value)? addTobagFailure,
    required TResult orElse(),
  }) {
    if (bagLoading != null) {
      return bagLoading(this);
    }
    return orElse();
  }
}

abstract class BagLoading implements BagState {
  const factory BagLoading() = _$BagLoading;
}

/// @nodoc
abstract class _$$GetBagItemsSuccessCopyWith<$Res> {
  factory _$$GetBagItemsSuccessCopyWith(_$GetBagItemsSuccess value,
          $Res Function(_$GetBagItemsSuccess) then) =
      __$$GetBagItemsSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: []) List<BagItem> itemList,
      BagItem? activeBagItem});

  $BagItemCopyWith<$Res>? get activeBagItem;
}

/// @nodoc
class __$$GetBagItemsSuccessCopyWithImpl<$Res>
    extends _$BagStateCopyWithImpl<$Res, _$GetBagItemsSuccess>
    implements _$$GetBagItemsSuccessCopyWith<$Res> {
  __$$GetBagItemsSuccessCopyWithImpl(
      _$GetBagItemsSuccess _value, $Res Function(_$GetBagItemsSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemList = null,
    Object? activeBagItem = freezed,
  }) {
    return _then(_$GetBagItemsSuccess(
      null == itemList
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<BagItem>,
      freezed == activeBagItem
          ? _value.activeBagItem
          : activeBagItem // ignore: cast_nullable_to_non_nullable
              as BagItem?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BagItemCopyWith<$Res>? get activeBagItem {
    if (_value.activeBagItem == null) {
      return null;
    }

    return $BagItemCopyWith<$Res>(_value.activeBagItem!, (value) {
      return _then(_value.copyWith(activeBagItem: value));
    });
  }
}

/// @nodoc

class _$GetBagItemsSuccess implements GetBagItemsSuccess {
  const _$GetBagItemsSuccess(
      @JsonKey(defaultValue: []) final List<BagItem> itemList,
      this.activeBagItem)
      : _itemList = itemList;

  final List<BagItem> _itemList;
  @override
  @JsonKey(defaultValue: [])
  List<BagItem> get itemList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemList);
  }

  @override
  final BagItem? activeBagItem;

  @override
  String toString() {
    return 'BagState.getBagItemsSuccess(itemList: $itemList, activeBagItem: $activeBagItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBagItemsSuccess &&
            const DeepCollectionEquality().equals(other._itemList, _itemList) &&
            (identical(other.activeBagItem, activeBagItem) ||
                other.activeBagItem == activeBagItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_itemList), activeBagItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBagItemsSuccessCopyWith<_$GetBagItemsSuccess> get copyWith =>
      __$$GetBagItemsSuccessCopyWithImpl<_$GetBagItemsSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bagLoading,
    required TResult Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)
        getBagItemsSuccess,
    required TResult Function() getBagItemsFailure,
    required TResult Function() addTobagLoading,
    required TResult Function() addTobagSuccess,
    required TResult Function(String errorMsg) addTobagFailure,
  }) {
    return getBagItemsSuccess(itemList, activeBagItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bagLoading,
    TResult? Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)?
        getBagItemsSuccess,
    TResult? Function()? getBagItemsFailure,
    TResult? Function()? addTobagLoading,
    TResult? Function()? addTobagSuccess,
    TResult? Function(String errorMsg)? addTobagFailure,
  }) {
    return getBagItemsSuccess?.call(itemList, activeBagItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bagLoading,
    TResult Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)?
        getBagItemsSuccess,
    TResult Function()? getBagItemsFailure,
    TResult Function()? addTobagLoading,
    TResult Function()? addTobagSuccess,
    TResult Function(String errorMsg)? addTobagFailure,
    required TResult orElse(),
  }) {
    if (getBagItemsSuccess != null) {
      return getBagItemsSuccess(itemList, activeBagItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BagLoading value) bagLoading,
    required TResult Function(GetBagItemsSuccess value) getBagItemsSuccess,
    required TResult Function(GetBagItemsFailure value) getBagItemsFailure,
    required TResult Function(AddTobagLoading value) addTobagLoading,
    required TResult Function(AddTobagSuccess value) addTobagSuccess,
    required TResult Function(AddTobagFailure value) addTobagFailure,
  }) {
    return getBagItemsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BagLoading value)? bagLoading,
    TResult? Function(GetBagItemsSuccess value)? getBagItemsSuccess,
    TResult? Function(GetBagItemsFailure value)? getBagItemsFailure,
    TResult? Function(AddTobagLoading value)? addTobagLoading,
    TResult? Function(AddTobagSuccess value)? addTobagSuccess,
    TResult? Function(AddTobagFailure value)? addTobagFailure,
  }) {
    return getBagItemsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BagLoading value)? bagLoading,
    TResult Function(GetBagItemsSuccess value)? getBagItemsSuccess,
    TResult Function(GetBagItemsFailure value)? getBagItemsFailure,
    TResult Function(AddTobagLoading value)? addTobagLoading,
    TResult Function(AddTobagSuccess value)? addTobagSuccess,
    TResult Function(AddTobagFailure value)? addTobagFailure,
    required TResult orElse(),
  }) {
    if (getBagItemsSuccess != null) {
      return getBagItemsSuccess(this);
    }
    return orElse();
  }
}

abstract class GetBagItemsSuccess implements BagState {
  const factory GetBagItemsSuccess(
      @JsonKey(defaultValue: []) final List<BagItem> itemList,
      final BagItem? activeBagItem) = _$GetBagItemsSuccess;

  @JsonKey(defaultValue: [])
  List<BagItem> get itemList;
  BagItem? get activeBagItem;
  @JsonKey(ignore: true)
  _$$GetBagItemsSuccessCopyWith<_$GetBagItemsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBagItemsFailureCopyWith<$Res> {
  factory _$$GetBagItemsFailureCopyWith(_$GetBagItemsFailure value,
          $Res Function(_$GetBagItemsFailure) then) =
      __$$GetBagItemsFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBagItemsFailureCopyWithImpl<$Res>
    extends _$BagStateCopyWithImpl<$Res, _$GetBagItemsFailure>
    implements _$$GetBagItemsFailureCopyWith<$Res> {
  __$$GetBagItemsFailureCopyWithImpl(
      _$GetBagItemsFailure _value, $Res Function(_$GetBagItemsFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBagItemsFailure implements GetBagItemsFailure {
  const _$GetBagItemsFailure();

  @override
  String toString() {
    return 'BagState.getBagItemsFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBagItemsFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bagLoading,
    required TResult Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)
        getBagItemsSuccess,
    required TResult Function() getBagItemsFailure,
    required TResult Function() addTobagLoading,
    required TResult Function() addTobagSuccess,
    required TResult Function(String errorMsg) addTobagFailure,
  }) {
    return getBagItemsFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bagLoading,
    TResult? Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)?
        getBagItemsSuccess,
    TResult? Function()? getBagItemsFailure,
    TResult? Function()? addTobagLoading,
    TResult? Function()? addTobagSuccess,
    TResult? Function(String errorMsg)? addTobagFailure,
  }) {
    return getBagItemsFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bagLoading,
    TResult Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)?
        getBagItemsSuccess,
    TResult Function()? getBagItemsFailure,
    TResult Function()? addTobagLoading,
    TResult Function()? addTobagSuccess,
    TResult Function(String errorMsg)? addTobagFailure,
    required TResult orElse(),
  }) {
    if (getBagItemsFailure != null) {
      return getBagItemsFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BagLoading value) bagLoading,
    required TResult Function(GetBagItemsSuccess value) getBagItemsSuccess,
    required TResult Function(GetBagItemsFailure value) getBagItemsFailure,
    required TResult Function(AddTobagLoading value) addTobagLoading,
    required TResult Function(AddTobagSuccess value) addTobagSuccess,
    required TResult Function(AddTobagFailure value) addTobagFailure,
  }) {
    return getBagItemsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BagLoading value)? bagLoading,
    TResult? Function(GetBagItemsSuccess value)? getBagItemsSuccess,
    TResult? Function(GetBagItemsFailure value)? getBagItemsFailure,
    TResult? Function(AddTobagLoading value)? addTobagLoading,
    TResult? Function(AddTobagSuccess value)? addTobagSuccess,
    TResult? Function(AddTobagFailure value)? addTobagFailure,
  }) {
    return getBagItemsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BagLoading value)? bagLoading,
    TResult Function(GetBagItemsSuccess value)? getBagItemsSuccess,
    TResult Function(GetBagItemsFailure value)? getBagItemsFailure,
    TResult Function(AddTobagLoading value)? addTobagLoading,
    TResult Function(AddTobagSuccess value)? addTobagSuccess,
    TResult Function(AddTobagFailure value)? addTobagFailure,
    required TResult orElse(),
  }) {
    if (getBagItemsFailure != null) {
      return getBagItemsFailure(this);
    }
    return orElse();
  }
}

abstract class GetBagItemsFailure implements BagState {
  const factory GetBagItemsFailure() = _$GetBagItemsFailure;
}

/// @nodoc
abstract class _$$AddTobagLoadingCopyWith<$Res> {
  factory _$$AddTobagLoadingCopyWith(
          _$AddTobagLoading value, $Res Function(_$AddTobagLoading) then) =
      __$$AddTobagLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddTobagLoadingCopyWithImpl<$Res>
    extends _$BagStateCopyWithImpl<$Res, _$AddTobagLoading>
    implements _$$AddTobagLoadingCopyWith<$Res> {
  __$$AddTobagLoadingCopyWithImpl(
      _$AddTobagLoading _value, $Res Function(_$AddTobagLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddTobagLoading implements AddTobagLoading {
  const _$AddTobagLoading();

  @override
  String toString() {
    return 'BagState.addTobagLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddTobagLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bagLoading,
    required TResult Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)
        getBagItemsSuccess,
    required TResult Function() getBagItemsFailure,
    required TResult Function() addTobagLoading,
    required TResult Function() addTobagSuccess,
    required TResult Function(String errorMsg) addTobagFailure,
  }) {
    return addTobagLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bagLoading,
    TResult? Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)?
        getBagItemsSuccess,
    TResult? Function()? getBagItemsFailure,
    TResult? Function()? addTobagLoading,
    TResult? Function()? addTobagSuccess,
    TResult? Function(String errorMsg)? addTobagFailure,
  }) {
    return addTobagLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bagLoading,
    TResult Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)?
        getBagItemsSuccess,
    TResult Function()? getBagItemsFailure,
    TResult Function()? addTobagLoading,
    TResult Function()? addTobagSuccess,
    TResult Function(String errorMsg)? addTobagFailure,
    required TResult orElse(),
  }) {
    if (addTobagLoading != null) {
      return addTobagLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BagLoading value) bagLoading,
    required TResult Function(GetBagItemsSuccess value) getBagItemsSuccess,
    required TResult Function(GetBagItemsFailure value) getBagItemsFailure,
    required TResult Function(AddTobagLoading value) addTobagLoading,
    required TResult Function(AddTobagSuccess value) addTobagSuccess,
    required TResult Function(AddTobagFailure value) addTobagFailure,
  }) {
    return addTobagLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BagLoading value)? bagLoading,
    TResult? Function(GetBagItemsSuccess value)? getBagItemsSuccess,
    TResult? Function(GetBagItemsFailure value)? getBagItemsFailure,
    TResult? Function(AddTobagLoading value)? addTobagLoading,
    TResult? Function(AddTobagSuccess value)? addTobagSuccess,
    TResult? Function(AddTobagFailure value)? addTobagFailure,
  }) {
    return addTobagLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BagLoading value)? bagLoading,
    TResult Function(GetBagItemsSuccess value)? getBagItemsSuccess,
    TResult Function(GetBagItemsFailure value)? getBagItemsFailure,
    TResult Function(AddTobagLoading value)? addTobagLoading,
    TResult Function(AddTobagSuccess value)? addTobagSuccess,
    TResult Function(AddTobagFailure value)? addTobagFailure,
    required TResult orElse(),
  }) {
    if (addTobagLoading != null) {
      return addTobagLoading(this);
    }
    return orElse();
  }
}

abstract class AddTobagLoading implements BagState {
  const factory AddTobagLoading() = _$AddTobagLoading;
}

/// @nodoc
abstract class _$$AddTobagSuccessCopyWith<$Res> {
  factory _$$AddTobagSuccessCopyWith(
          _$AddTobagSuccess value, $Res Function(_$AddTobagSuccess) then) =
      __$$AddTobagSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddTobagSuccessCopyWithImpl<$Res>
    extends _$BagStateCopyWithImpl<$Res, _$AddTobagSuccess>
    implements _$$AddTobagSuccessCopyWith<$Res> {
  __$$AddTobagSuccessCopyWithImpl(
      _$AddTobagSuccess _value, $Res Function(_$AddTobagSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddTobagSuccess implements AddTobagSuccess {
  const _$AddTobagSuccess();

  @override
  String toString() {
    return 'BagState.addTobagSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddTobagSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bagLoading,
    required TResult Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)
        getBagItemsSuccess,
    required TResult Function() getBagItemsFailure,
    required TResult Function() addTobagLoading,
    required TResult Function() addTobagSuccess,
    required TResult Function(String errorMsg) addTobagFailure,
  }) {
    return addTobagSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bagLoading,
    TResult? Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)?
        getBagItemsSuccess,
    TResult? Function()? getBagItemsFailure,
    TResult? Function()? addTobagLoading,
    TResult? Function()? addTobagSuccess,
    TResult? Function(String errorMsg)? addTobagFailure,
  }) {
    return addTobagSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bagLoading,
    TResult Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)?
        getBagItemsSuccess,
    TResult Function()? getBagItemsFailure,
    TResult Function()? addTobagLoading,
    TResult Function()? addTobagSuccess,
    TResult Function(String errorMsg)? addTobagFailure,
    required TResult orElse(),
  }) {
    if (addTobagSuccess != null) {
      return addTobagSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BagLoading value) bagLoading,
    required TResult Function(GetBagItemsSuccess value) getBagItemsSuccess,
    required TResult Function(GetBagItemsFailure value) getBagItemsFailure,
    required TResult Function(AddTobagLoading value) addTobagLoading,
    required TResult Function(AddTobagSuccess value) addTobagSuccess,
    required TResult Function(AddTobagFailure value) addTobagFailure,
  }) {
    return addTobagSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BagLoading value)? bagLoading,
    TResult? Function(GetBagItemsSuccess value)? getBagItemsSuccess,
    TResult? Function(GetBagItemsFailure value)? getBagItemsFailure,
    TResult? Function(AddTobagLoading value)? addTobagLoading,
    TResult? Function(AddTobagSuccess value)? addTobagSuccess,
    TResult? Function(AddTobagFailure value)? addTobagFailure,
  }) {
    return addTobagSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BagLoading value)? bagLoading,
    TResult Function(GetBagItemsSuccess value)? getBagItemsSuccess,
    TResult Function(GetBagItemsFailure value)? getBagItemsFailure,
    TResult Function(AddTobagLoading value)? addTobagLoading,
    TResult Function(AddTobagSuccess value)? addTobagSuccess,
    TResult Function(AddTobagFailure value)? addTobagFailure,
    required TResult orElse(),
  }) {
    if (addTobagSuccess != null) {
      return addTobagSuccess(this);
    }
    return orElse();
  }
}

abstract class AddTobagSuccess implements BagState {
  const factory AddTobagSuccess() = _$AddTobagSuccess;
}

/// @nodoc
abstract class _$$AddTobagFailureCopyWith<$Res> {
  factory _$$AddTobagFailureCopyWith(
          _$AddTobagFailure value, $Res Function(_$AddTobagFailure) then) =
      __$$AddTobagFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$AddTobagFailureCopyWithImpl<$Res>
    extends _$BagStateCopyWithImpl<$Res, _$AddTobagFailure>
    implements _$$AddTobagFailureCopyWith<$Res> {
  __$$AddTobagFailureCopyWithImpl(
      _$AddTobagFailure _value, $Res Function(_$AddTobagFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$AddTobagFailure(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddTobagFailure implements AddTobagFailure {
  const _$AddTobagFailure({this.errorMsg = "Something went wrong"});

  @override
  @JsonKey()
  final String errorMsg;

  @override
  String toString() {
    return 'BagState.addTobagFailure(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTobagFailure &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTobagFailureCopyWith<_$AddTobagFailure> get copyWith =>
      __$$AddTobagFailureCopyWithImpl<_$AddTobagFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bagLoading,
    required TResult Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)
        getBagItemsSuccess,
    required TResult Function() getBagItemsFailure,
    required TResult Function() addTobagLoading,
    required TResult Function() addTobagSuccess,
    required TResult Function(String errorMsg) addTobagFailure,
  }) {
    return addTobagFailure(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bagLoading,
    TResult? Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)?
        getBagItemsSuccess,
    TResult? Function()? getBagItemsFailure,
    TResult? Function()? addTobagLoading,
    TResult? Function()? addTobagSuccess,
    TResult? Function(String errorMsg)? addTobagFailure,
  }) {
    return addTobagFailure?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bagLoading,
    TResult Function(@JsonKey(defaultValue: []) List<BagItem> itemList,
            BagItem? activeBagItem)?
        getBagItemsSuccess,
    TResult Function()? getBagItemsFailure,
    TResult Function()? addTobagLoading,
    TResult Function()? addTobagSuccess,
    TResult Function(String errorMsg)? addTobagFailure,
    required TResult orElse(),
  }) {
    if (addTobagFailure != null) {
      return addTobagFailure(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BagLoading value) bagLoading,
    required TResult Function(GetBagItemsSuccess value) getBagItemsSuccess,
    required TResult Function(GetBagItemsFailure value) getBagItemsFailure,
    required TResult Function(AddTobagLoading value) addTobagLoading,
    required TResult Function(AddTobagSuccess value) addTobagSuccess,
    required TResult Function(AddTobagFailure value) addTobagFailure,
  }) {
    return addTobagFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BagLoading value)? bagLoading,
    TResult? Function(GetBagItemsSuccess value)? getBagItemsSuccess,
    TResult? Function(GetBagItemsFailure value)? getBagItemsFailure,
    TResult? Function(AddTobagLoading value)? addTobagLoading,
    TResult? Function(AddTobagSuccess value)? addTobagSuccess,
    TResult? Function(AddTobagFailure value)? addTobagFailure,
  }) {
    return addTobagFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BagLoading value)? bagLoading,
    TResult Function(GetBagItemsSuccess value)? getBagItemsSuccess,
    TResult Function(GetBagItemsFailure value)? getBagItemsFailure,
    TResult Function(AddTobagLoading value)? addTobagLoading,
    TResult Function(AddTobagSuccess value)? addTobagSuccess,
    TResult Function(AddTobagFailure value)? addTobagFailure,
    required TResult orElse(),
  }) {
    if (addTobagFailure != null) {
      return addTobagFailure(this);
    }
    return orElse();
  }
}

abstract class AddTobagFailure implements BagState {
  const factory AddTobagFailure({final String errorMsg}) = _$AddTobagFailure;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$AddTobagFailureCopyWith<_$AddTobagFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
