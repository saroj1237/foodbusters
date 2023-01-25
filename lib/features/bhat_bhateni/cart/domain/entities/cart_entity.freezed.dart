// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartResponse _$CartResponseFromJson(Map<String, dynamic> json) {
  return _CartResponse.fromJson(json);
}

/// @nodoc
mixin _$CartResponse {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  num? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "productList", defaultValue: <CartItem>[])
  List<CartItem>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartResponseCopyWith<CartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartResponseCopyWith<$Res> {
  factory $CartResponseCopyWith(
          CartResponse value, $Res Function(CartResponse) then) =
      _$CartResponseCopyWithImpl<$Res, CartResponse>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "total_price")
          num? totalPrice,
      @JsonKey(name: "productList", defaultValue: <CartItem>[])
          List<CartItem>? items});
}

/// @nodoc
class _$CartResponseCopyWithImpl<$Res, $Val extends CartResponse>
    implements $CartResponseCopyWith<$Res> {
  _$CartResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? totalPrice = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartResponseCopyWith<$Res>
    implements $CartResponseCopyWith<$Res> {
  factory _$$_CartResponseCopyWith(
          _$_CartResponse value, $Res Function(_$_CartResponse) then) =
      __$$_CartResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "total_price")
          num? totalPrice,
      @JsonKey(name: "productList", defaultValue: <CartItem>[])
          List<CartItem>? items});
}

/// @nodoc
class __$$_CartResponseCopyWithImpl<$Res>
    extends _$CartResponseCopyWithImpl<$Res, _$_CartResponse>
    implements _$$_CartResponseCopyWith<$Res> {
  __$$_CartResponseCopyWithImpl(
      _$_CartResponse _value, $Res Function(_$_CartResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? totalPrice = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_CartResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CartResponse implements _CartResponse {
  const _$_CartResponse(
      {required this.id,
      @JsonKey(name: "total_price")
          this.totalPrice,
      @JsonKey(name: "productList", defaultValue: <CartItem>[])
          final List<CartItem>? items})
      : _items = items;

  factory _$_CartResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CartResponseFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "total_price")
  final num? totalPrice;
  final List<CartItem>? _items;
  @override
  @JsonKey(name: "productList", defaultValue: <CartItem>[])
  List<CartItem>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartResponse(id: $id, totalPrice: $totalPrice, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, totalPrice, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartResponseCopyWith<_$_CartResponse> get copyWith =>
      __$$_CartResponseCopyWithImpl<_$_CartResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartResponseToJson(
      this,
    );
  }
}

abstract class _CartResponse implements CartResponse {
  const factory _CartResponse(
      {required final String id,
      @JsonKey(name: "total_price")
          final num? totalPrice,
      @JsonKey(name: "productList", defaultValue: <CartItem>[])
          final List<CartItem>? items}) = _$_CartResponse;

  factory _CartResponse.fromJson(Map<String, dynamic> json) =
      _$_CartResponse.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "total_price")
  num? get totalPrice;
  @override
  @JsonKey(name: "productList", defaultValue: <CartItem>[])
  List<CartItem>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_CartResponseCopyWith<_$_CartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return _CartItem.fromJson(json);
}

/// @nodoc
mixin _$CartItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  List<String>? get productImage => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_price")
  num get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  num get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemCopyWith<CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res, CartItem>;
  @useResult
  $Res call(
      {String id,
      String name,
      int quantity,
      List<String>? productImage,
      @JsonKey(name: "unit_price") num unitPrice,
      @JsonKey(name: "total_price") num totalPrice});
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res, $Val extends CartItem>
    implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? quantity = null,
    Object? productImage = freezed,
    Object? unitPrice = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as num,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$$_CartItemCopyWith(
          _$_CartItem value, $Res Function(_$_CartItem) then) =
      __$$_CartItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int quantity,
      List<String>? productImage,
      @JsonKey(name: "unit_price") num unitPrice,
      @JsonKey(name: "total_price") num totalPrice});
}

/// @nodoc
class __$$_CartItemCopyWithImpl<$Res>
    extends _$CartItemCopyWithImpl<$Res, _$_CartItem>
    implements _$$_CartItemCopyWith<$Res> {
  __$$_CartItemCopyWithImpl(
      _$_CartItem _value, $Res Function(_$_CartItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? quantity = null,
    Object? productImage = freezed,
    Object? unitPrice = null,
    Object? totalPrice = null,
  }) {
    return _then(_$_CartItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      productImage: freezed == productImage
          ? _value._productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as num,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartItem implements _CartItem {
  const _$_CartItem(
      {required this.id,
      required this.name,
      required this.quantity,
      final List<String>? productImage,
      @JsonKey(name: "unit_price") required this.unitPrice,
      @JsonKey(name: "total_price") required this.totalPrice})
      : _productImage = productImage;

  factory _$_CartItem.fromJson(Map<String, dynamic> json) =>
      _$$_CartItemFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int quantity;
  final List<String>? _productImage;
  @override
  List<String>? get productImage {
    final value = _productImage;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "unit_price")
  final num unitPrice;
  @override
  @JsonKey(name: "total_price")
  final num totalPrice;

  @override
  String toString() {
    return 'CartItem(id: $id, name: $name, quantity: $quantity, productImage: $productImage, unitPrice: $unitPrice, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality()
                .equals(other._productImage, _productImage) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      quantity,
      const DeepCollectionEquality().hash(_productImage),
      unitPrice,
      totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartItemCopyWith<_$_CartItem> get copyWith =>
      __$$_CartItemCopyWithImpl<_$_CartItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartItemToJson(
      this,
    );
  }
}

abstract class _CartItem implements CartItem {
  const factory _CartItem(
          {required final String id,
          required final String name,
          required final int quantity,
          final List<String>? productImage,
          @JsonKey(name: "unit_price") required final num unitPrice,
          @JsonKey(name: "total_price") required final num totalPrice}) =
      _$_CartItem;

  factory _CartItem.fromJson(Map<String, dynamic> json) = _$_CartItem.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get quantity;
  @override
  List<String>? get productImage;
  @override
  @JsonKey(name: "unit_price")
  num get unitPrice;
  @override
  @JsonKey(name: "total_price")
  num get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$_CartItemCopyWith<_$_CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}
