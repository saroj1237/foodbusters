// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bag_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddTobagRequest _$AddTobagRequestFromJson(Map<String, dynamic> json) {
  return _AddTobagRequest.fromJson(json);
}

/// @nodoc
mixin _$AddTobagRequest {
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddTobagRequestCopyWith<AddTobagRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTobagRequestCopyWith<$Res> {
  factory $AddTobagRequestCopyWith(
          AddTobagRequest value, $Res Function(AddTobagRequest) then) =
      _$AddTobagRequestCopyWithImpl<$Res, AddTobagRequest>;
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class _$AddTobagRequestCopyWithImpl<$Res, $Val extends AddTobagRequest>
    implements $AddTobagRequestCopyWith<$Res> {
  _$AddTobagRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddTobagRequestCopyWith<$Res>
    implements $AddTobagRequestCopyWith<$Res> {
  factory _$$_AddTobagRequestCopyWith(
          _$_AddTobagRequest value, $Res Function(_$_AddTobagRequest) then) =
      __$$_AddTobagRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class __$$_AddTobagRequestCopyWithImpl<$Res>
    extends _$AddTobagRequestCopyWithImpl<$Res, _$_AddTobagRequest>
    implements _$$_AddTobagRequestCopyWith<$Res> {
  __$$_AddTobagRequestCopyWithImpl(
      _$_AddTobagRequest _value, $Res Function(_$_AddTobagRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_$_AddTobagRequest(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddTobagRequest implements _AddTobagRequest {
  const _$_AddTobagRequest({required this.quantity});

  factory _$_AddTobagRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AddTobagRequestFromJson(json);

  @override
  final int quantity;

  @override
  String toString() {
    return 'AddTobagRequest(quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTobagRequest &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTobagRequestCopyWith<_$_AddTobagRequest> get copyWith =>
      __$$_AddTobagRequestCopyWithImpl<_$_AddTobagRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddTobagRequestToJson(
      this,
    );
  }
}

abstract class _AddTobagRequest implements AddTobagRequest {
  const factory _AddTobagRequest({required final int quantity}) =
      _$_AddTobagRequest;

  factory _AddTobagRequest.fromJson(Map<String, dynamic> json) =
      _$_AddTobagRequest.fromJson;

  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_AddTobagRequestCopyWith<_$_AddTobagRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

BagItem _$BagItemFromJson(Map<String, dynamic> json) {
  return _BagItem.fromJson(json);
}

/// @nodoc
mixin _$BagItem {
  @JsonKey(name: "restaurant_id")
  String get restaurantId => throw _privateConstructorUsedError;
  @JsonKey(name: "restaurant_name")
  String? get restaurantName => throw _privateConstructorUsedError;
  @JsonKey(name: "restaurant_address")
  String? get restaurantAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "restaurant_image")
  String? get restaurantImages => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  num get totalPrice => throw _privateConstructorUsedError;
  List<BagFood>? get foodList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BagItemCopyWith<BagItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BagItemCopyWith<$Res> {
  factory $BagItemCopyWith(BagItem value, $Res Function(BagItem) then) =
      _$BagItemCopyWithImpl<$Res, BagItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "restaurant_id") String restaurantId,
      @JsonKey(name: "restaurant_name") String? restaurantName,
      @JsonKey(name: "restaurant_address") String? restaurantAddress,
      @JsonKey(name: "restaurant_image") String? restaurantImages,
      @JsonKey(name: "total_price") num totalPrice,
      List<BagFood>? foodList});
}

/// @nodoc
class _$BagItemCopyWithImpl<$Res, $Val extends BagItem>
    implements $BagItemCopyWith<$Res> {
  _$BagItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
    Object? restaurantName = freezed,
    Object? restaurantAddress = freezed,
    Object? restaurantImages = freezed,
    Object? totalPrice = null,
    Object? foodList = freezed,
  }) {
    return _then(_value.copyWith(
      restaurantId: null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantName: freezed == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantAddress: freezed == restaurantAddress
          ? _value.restaurantAddress
          : restaurantAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantImages: freezed == restaurantImages
          ? _value.restaurantImages
          : restaurantImages // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      foodList: freezed == foodList
          ? _value.foodList
          : foodList // ignore: cast_nullable_to_non_nullable
              as List<BagFood>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BagItemCopyWith<$Res> implements $BagItemCopyWith<$Res> {
  factory _$$_BagItemCopyWith(
          _$_BagItem value, $Res Function(_$_BagItem) then) =
      __$$_BagItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "restaurant_id") String restaurantId,
      @JsonKey(name: "restaurant_name") String? restaurantName,
      @JsonKey(name: "restaurant_address") String? restaurantAddress,
      @JsonKey(name: "restaurant_image") String? restaurantImages,
      @JsonKey(name: "total_price") num totalPrice,
      List<BagFood>? foodList});
}

/// @nodoc
class __$$_BagItemCopyWithImpl<$Res>
    extends _$BagItemCopyWithImpl<$Res, _$_BagItem>
    implements _$$_BagItemCopyWith<$Res> {
  __$$_BagItemCopyWithImpl(_$_BagItem _value, $Res Function(_$_BagItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
    Object? restaurantName = freezed,
    Object? restaurantAddress = freezed,
    Object? restaurantImages = freezed,
    Object? totalPrice = null,
    Object? foodList = freezed,
  }) {
    return _then(_$_BagItem(
      restaurantId: null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantName: freezed == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantAddress: freezed == restaurantAddress
          ? _value.restaurantAddress
          : restaurantAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantImages: freezed == restaurantImages
          ? _value.restaurantImages
          : restaurantImages // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      foodList: freezed == foodList
          ? _value._foodList
          : foodList // ignore: cast_nullable_to_non_nullable
              as List<BagFood>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BagItem implements _BagItem {
  const _$_BagItem(
      {@JsonKey(name: "restaurant_id") required this.restaurantId,
      @JsonKey(name: "restaurant_name") this.restaurantName,
      @JsonKey(name: "restaurant_address") this.restaurantAddress,
      @JsonKey(name: "restaurant_image") this.restaurantImages,
      @JsonKey(name: "total_price") required this.totalPrice,
      final List<BagFood>? foodList})
      : _foodList = foodList;

  factory _$_BagItem.fromJson(Map<String, dynamic> json) =>
      _$$_BagItemFromJson(json);

  @override
  @JsonKey(name: "restaurant_id")
  final String restaurantId;
  @override
  @JsonKey(name: "restaurant_name")
  final String? restaurantName;
  @override
  @JsonKey(name: "restaurant_address")
  final String? restaurantAddress;
  @override
  @JsonKey(name: "restaurant_image")
  final String? restaurantImages;
  @override
  @JsonKey(name: "total_price")
  final num totalPrice;
  final List<BagFood>? _foodList;
  @override
  List<BagFood>? get foodList {
    final value = _foodList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BagItem(restaurantId: $restaurantId, restaurantName: $restaurantName, restaurantAddress: $restaurantAddress, restaurantImages: $restaurantImages, totalPrice: $totalPrice, foodList: $foodList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BagItem &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.restaurantName, restaurantName) ||
                other.restaurantName == restaurantName) &&
            (identical(other.restaurantAddress, restaurantAddress) ||
                other.restaurantAddress == restaurantAddress) &&
            (identical(other.restaurantImages, restaurantImages) ||
                other.restaurantImages == restaurantImages) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            const DeepCollectionEquality().equals(other._foodList, _foodList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      restaurantId,
      restaurantName,
      restaurantAddress,
      restaurantImages,
      totalPrice,
      const DeepCollectionEquality().hash(_foodList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BagItemCopyWith<_$_BagItem> get copyWith =>
      __$$_BagItemCopyWithImpl<_$_BagItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BagItemToJson(
      this,
    );
  }
}

abstract class _BagItem implements BagItem {
  const factory _BagItem(
      {@JsonKey(name: "restaurant_id") required final String restaurantId,
      @JsonKey(name: "restaurant_name") final String? restaurantName,
      @JsonKey(name: "restaurant_address") final String? restaurantAddress,
      @JsonKey(name: "restaurant_image") final String? restaurantImages,
      @JsonKey(name: "total_price") required final num totalPrice,
      final List<BagFood>? foodList}) = _$_BagItem;

  factory _BagItem.fromJson(Map<String, dynamic> json) = _$_BagItem.fromJson;

  @override
  @JsonKey(name: "restaurant_id")
  String get restaurantId;
  @override
  @JsonKey(name: "restaurant_name")
  String? get restaurantName;
  @override
  @JsonKey(name: "restaurant_address")
  String? get restaurantAddress;
  @override
  @JsonKey(name: "restaurant_image")
  String? get restaurantImages;
  @override
  @JsonKey(name: "total_price")
  num get totalPrice;
  @override
  List<BagFood>? get foodList;
  @override
  @JsonKey(ignore: true)
  _$$_BagItemCopyWith<_$_BagItem> get copyWith =>
      throw _privateConstructorUsedError;
}

BagFood _$BagFoodFromJson(Map<String, dynamic> json) {
  return _BagFood.fromJson(json);
}

/// @nodoc
mixin _$BagFood {
  @JsonKey(name: 'food_id')
  String get foodId => throw _privateConstructorUsedError;
  @JsonKey(name: 'food_name')
  String? get foodName => throw _privateConstructorUsedError;
  num get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'food_image')
  List<String>? get foodImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  num? get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  num? get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BagFoodCopyWith<BagFood> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BagFoodCopyWith<$Res> {
  factory $BagFoodCopyWith(BagFood value, $Res Function(BagFood) then) =
      _$BagFoodCopyWithImpl<$Res, BagFood>;
  @useResult
  $Res call(
      {@JsonKey(name: 'food_id') String foodId,
      @JsonKey(name: 'food_name') String? foodName,
      num quantity,
      @JsonKey(name: 'food_image') List<String>? foodImages,
      @JsonKey(name: 'unit_price') num? unitPrice,
      @JsonKey(name: 'total_price') num? totalPrice});
}

/// @nodoc
class _$BagFoodCopyWithImpl<$Res, $Val extends BagFood>
    implements $BagFoodCopyWith<$Res> {
  _$BagFoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodId = null,
    Object? foodName = freezed,
    Object? quantity = null,
    Object? foodImages = freezed,
    Object? unitPrice = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      foodId: null == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
      foodName: freezed == foodName
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num,
      foodImages: freezed == foodImages
          ? _value.foodImages
          : foodImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BagFoodCopyWith<$Res> implements $BagFoodCopyWith<$Res> {
  factory _$$_BagFoodCopyWith(
          _$_BagFood value, $Res Function(_$_BagFood) then) =
      __$$_BagFoodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'food_id') String foodId,
      @JsonKey(name: 'food_name') String? foodName,
      num quantity,
      @JsonKey(name: 'food_image') List<String>? foodImages,
      @JsonKey(name: 'unit_price') num? unitPrice,
      @JsonKey(name: 'total_price') num? totalPrice});
}

/// @nodoc
class __$$_BagFoodCopyWithImpl<$Res>
    extends _$BagFoodCopyWithImpl<$Res, _$_BagFood>
    implements _$$_BagFoodCopyWith<$Res> {
  __$$_BagFoodCopyWithImpl(_$_BagFood _value, $Res Function(_$_BagFood) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodId = null,
    Object? foodName = freezed,
    Object? quantity = null,
    Object? foodImages = freezed,
    Object? unitPrice = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_$_BagFood(
      foodId: null == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
      foodName: freezed == foodName
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num,
      foodImages: freezed == foodImages
          ? _value._foodImages
          : foodImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BagFood implements _BagFood {
  const _$_BagFood(
      {@JsonKey(name: 'food_id') required this.foodId,
      @JsonKey(name: 'food_name') this.foodName,
      required this.quantity,
      @JsonKey(name: 'food_image') final List<String>? foodImages,
      @JsonKey(name: 'unit_price') this.unitPrice,
      @JsonKey(name: 'total_price') this.totalPrice})
      : _foodImages = foodImages;

  factory _$_BagFood.fromJson(Map<String, dynamic> json) =>
      _$$_BagFoodFromJson(json);

  @override
  @JsonKey(name: 'food_id')
  final String foodId;
  @override
  @JsonKey(name: 'food_name')
  final String? foodName;
  @override
  final num quantity;
  final List<String>? _foodImages;
  @override
  @JsonKey(name: 'food_image')
  List<String>? get foodImages {
    final value = _foodImages;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'unit_price')
  final num? unitPrice;
  @override
  @JsonKey(name: 'total_price')
  final num? totalPrice;

  @override
  String toString() {
    return 'BagFood(foodId: $foodId, foodName: $foodName, quantity: $quantity, foodImages: $foodImages, unitPrice: $unitPrice, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BagFood &&
            (identical(other.foodId, foodId) || other.foodId == foodId) &&
            (identical(other.foodName, foodName) ||
                other.foodName == foodName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality()
                .equals(other._foodImages, _foodImages) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, foodId, foodName, quantity,
      const DeepCollectionEquality().hash(_foodImages), unitPrice, totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BagFoodCopyWith<_$_BagFood> get copyWith =>
      __$$_BagFoodCopyWithImpl<_$_BagFood>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BagFoodToJson(
      this,
    );
  }
}

abstract class _BagFood implements BagFood {
  const factory _BagFood(
      {@JsonKey(name: 'food_id') required final String foodId,
      @JsonKey(name: 'food_name') final String? foodName,
      required final num quantity,
      @JsonKey(name: 'food_image') final List<String>? foodImages,
      @JsonKey(name: 'unit_price') final num? unitPrice,
      @JsonKey(name: 'total_price') final num? totalPrice}) = _$_BagFood;

  factory _BagFood.fromJson(Map<String, dynamic> json) = _$_BagFood.fromJson;

  @override
  @JsonKey(name: 'food_id')
  String get foodId;
  @override
  @JsonKey(name: 'food_name')
  String? get foodName;
  @override
  num get quantity;
  @override
  @JsonKey(name: 'food_image')
  List<String>? get foodImages;
  @override
  @JsonKey(name: 'unit_price')
  num? get unitPrice;
  @override
  @JsonKey(name: 'total_price')
  num? get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$_BagFoodCopyWith<_$_BagFood> get copyWith =>
      throw _privateConstructorUsedError;
}
