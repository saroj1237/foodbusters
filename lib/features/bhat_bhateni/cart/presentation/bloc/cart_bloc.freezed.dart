// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool? hideLoading) getCart,
    required TResult Function(AddToCartReq req) addToCart,
    required TResult Function(AddToCartReq req) updateCart,
    required TResult Function(CartItem cartItem) deleteCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool? hideLoading)? getCart,
    TResult? Function(AddToCartReq req)? addToCart,
    TResult? Function(AddToCartReq req)? updateCart,
    TResult? Function(CartItem cartItem)? deleteCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool? hideLoading)? getCart,
    TResult Function(AddToCartReq req)? addToCart,
    TResult Function(AddToCartReq req)? updateCart,
    TResult Function(CartItem cartItem)? deleteCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(UpdateCart value) updateCart,
    required TResult Function(DeleteCartItem value) deleteCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(UpdateCart value)? updateCart,
    TResult? Function(DeleteCartItem value)? deleteCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(UpdateCart value)? updateCart,
    TResult Function(DeleteCartItem value)? deleteCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

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
    extends _$CartEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'CartEvent.started()';
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
    required TResult Function(bool? hideLoading) getCart,
    required TResult Function(AddToCartReq req) addToCart,
    required TResult Function(AddToCartReq req) updateCart,
    required TResult Function(CartItem cartItem) deleteCartItem,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool? hideLoading)? getCart,
    TResult? Function(AddToCartReq req)? addToCart,
    TResult? Function(AddToCartReq req)? updateCart,
    TResult? Function(CartItem cartItem)? deleteCartItem,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool? hideLoading)? getCart,
    TResult Function(AddToCartReq req)? addToCart,
    TResult Function(AddToCartReq req)? updateCart,
    TResult Function(CartItem cartItem)? deleteCartItem,
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
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(UpdateCart value) updateCart,
    required TResult Function(DeleteCartItem value) deleteCartItem,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(UpdateCart value)? updateCart,
    TResult? Function(DeleteCartItem value)? deleteCartItem,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(UpdateCart value)? updateCart,
    TResult Function(DeleteCartItem value)? deleteCartItem,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements CartEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$GetCartCopyWith<$Res> {
  factory _$$GetCartCopyWith(_$GetCart value, $Res Function(_$GetCart) then) =
      __$$GetCartCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? hideLoading});
}

/// @nodoc
class __$$GetCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetCart>
    implements _$$GetCartCopyWith<$Res> {
  __$$GetCartCopyWithImpl(_$GetCart _value, $Res Function(_$GetCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hideLoading = freezed,
  }) {
    return _then(_$GetCart(
      hideLoading: freezed == hideLoading
          ? _value.hideLoading
          : hideLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$GetCart implements GetCart {
  const _$GetCart({this.hideLoading});

  @override
  final bool? hideLoading;

  @override
  String toString() {
    return 'CartEvent.getCart(hideLoading: $hideLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCart &&
            (identical(other.hideLoading, hideLoading) ||
                other.hideLoading == hideLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hideLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartCopyWith<_$GetCart> get copyWith =>
      __$$GetCartCopyWithImpl<_$GetCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool? hideLoading) getCart,
    required TResult Function(AddToCartReq req) addToCart,
    required TResult Function(AddToCartReq req) updateCart,
    required TResult Function(CartItem cartItem) deleteCartItem,
  }) {
    return getCart(hideLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool? hideLoading)? getCart,
    TResult? Function(AddToCartReq req)? addToCart,
    TResult? Function(AddToCartReq req)? updateCart,
    TResult? Function(CartItem cartItem)? deleteCartItem,
  }) {
    return getCart?.call(hideLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool? hideLoading)? getCart,
    TResult Function(AddToCartReq req)? addToCart,
    TResult Function(AddToCartReq req)? updateCart,
    TResult Function(CartItem cartItem)? deleteCartItem,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(hideLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(UpdateCart value) updateCart,
    required TResult Function(DeleteCartItem value) deleteCartItem,
  }) {
    return getCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(UpdateCart value)? updateCart,
    TResult? Function(DeleteCartItem value)? deleteCartItem,
  }) {
    return getCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(UpdateCart value)? updateCart,
    TResult Function(DeleteCartItem value)? deleteCartItem,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(this);
    }
    return orElse();
  }
}

abstract class GetCart implements CartEvent {
  const factory GetCart({final bool? hideLoading}) = _$GetCart;

  bool? get hideLoading;
  @JsonKey(ignore: true)
  _$$GetCartCopyWith<_$GetCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToCartCopyWith<$Res> {
  factory _$$AddToCartCopyWith(
          _$AddToCart value, $Res Function(_$AddToCart) then) =
      __$$AddToCartCopyWithImpl<$Res>;
  @useResult
  $Res call({AddToCartReq req});
}

/// @nodoc
class __$$AddToCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddToCart>
    implements _$$AddToCartCopyWith<$Res> {
  __$$AddToCartCopyWithImpl(
      _$AddToCart _value, $Res Function(_$AddToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? req = null,
  }) {
    return _then(_$AddToCart(
      req: null == req
          ? _value.req
          : req // ignore: cast_nullable_to_non_nullable
              as AddToCartReq,
    ));
  }
}

/// @nodoc

class _$AddToCart implements AddToCart {
  const _$AddToCart({required this.req});

  @override
  final AddToCartReq req;

  @override
  String toString() {
    return 'CartEvent.addToCart(req: $req)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCart &&
            (identical(other.req, req) || other.req == req));
  }

  @override
  int get hashCode => Object.hash(runtimeType, req);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartCopyWith<_$AddToCart> get copyWith =>
      __$$AddToCartCopyWithImpl<_$AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool? hideLoading) getCart,
    required TResult Function(AddToCartReq req) addToCart,
    required TResult Function(AddToCartReq req) updateCart,
    required TResult Function(CartItem cartItem) deleteCartItem,
  }) {
    return addToCart(req);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool? hideLoading)? getCart,
    TResult? Function(AddToCartReq req)? addToCart,
    TResult? Function(AddToCartReq req)? updateCart,
    TResult? Function(CartItem cartItem)? deleteCartItem,
  }) {
    return addToCart?.call(req);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool? hideLoading)? getCart,
    TResult Function(AddToCartReq req)? addToCart,
    TResult Function(AddToCartReq req)? updateCart,
    TResult Function(CartItem cartItem)? deleteCartItem,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(req);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(UpdateCart value) updateCart,
    required TResult Function(DeleteCartItem value) deleteCartItem,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(UpdateCart value)? updateCart,
    TResult? Function(DeleteCartItem value)? deleteCartItem,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(UpdateCart value)? updateCart,
    TResult Function(DeleteCartItem value)? deleteCartItem,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class AddToCart implements CartEvent {
  const factory AddToCart({required final AddToCartReq req}) = _$AddToCart;

  AddToCartReq get req;
  @JsonKey(ignore: true)
  _$$AddToCartCopyWith<_$AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCartCopyWith<$Res> {
  factory _$$UpdateCartCopyWith(
          _$UpdateCart value, $Res Function(_$UpdateCart) then) =
      __$$UpdateCartCopyWithImpl<$Res>;
  @useResult
  $Res call({AddToCartReq req});
}

/// @nodoc
class __$$UpdateCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateCart>
    implements _$$UpdateCartCopyWith<$Res> {
  __$$UpdateCartCopyWithImpl(
      _$UpdateCart _value, $Res Function(_$UpdateCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? req = null,
  }) {
    return _then(_$UpdateCart(
      req: null == req
          ? _value.req
          : req // ignore: cast_nullable_to_non_nullable
              as AddToCartReq,
    ));
  }
}

/// @nodoc

class _$UpdateCart implements UpdateCart {
  const _$UpdateCart({required this.req});

  @override
  final AddToCartReq req;

  @override
  String toString() {
    return 'CartEvent.updateCart(req: $req)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCart &&
            (identical(other.req, req) || other.req == req));
  }

  @override
  int get hashCode => Object.hash(runtimeType, req);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartCopyWith<_$UpdateCart> get copyWith =>
      __$$UpdateCartCopyWithImpl<_$UpdateCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool? hideLoading) getCart,
    required TResult Function(AddToCartReq req) addToCart,
    required TResult Function(AddToCartReq req) updateCart,
    required TResult Function(CartItem cartItem) deleteCartItem,
  }) {
    return updateCart(req);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool? hideLoading)? getCart,
    TResult? Function(AddToCartReq req)? addToCart,
    TResult? Function(AddToCartReq req)? updateCart,
    TResult? Function(CartItem cartItem)? deleteCartItem,
  }) {
    return updateCart?.call(req);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool? hideLoading)? getCart,
    TResult Function(AddToCartReq req)? addToCart,
    TResult Function(AddToCartReq req)? updateCart,
    TResult Function(CartItem cartItem)? deleteCartItem,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(req);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(UpdateCart value) updateCart,
    required TResult Function(DeleteCartItem value) deleteCartItem,
  }) {
    return updateCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(UpdateCart value)? updateCart,
    TResult? Function(DeleteCartItem value)? deleteCartItem,
  }) {
    return updateCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(UpdateCart value)? updateCart,
    TResult Function(DeleteCartItem value)? deleteCartItem,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(this);
    }
    return orElse();
  }
}

abstract class UpdateCart implements CartEvent {
  const factory UpdateCart({required final AddToCartReq req}) = _$UpdateCart;

  AddToCartReq get req;
  @JsonKey(ignore: true)
  _$$UpdateCartCopyWith<_$UpdateCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCartItemCopyWith<$Res> {
  factory _$$DeleteCartItemCopyWith(
          _$DeleteCartItem value, $Res Function(_$DeleteCartItem) then) =
      __$$DeleteCartItemCopyWithImpl<$Res>;
  @useResult
  $Res call({CartItem cartItem});

  $CartItemCopyWith<$Res> get cartItem;
}

/// @nodoc
class __$$DeleteCartItemCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DeleteCartItem>
    implements _$$DeleteCartItemCopyWith<$Res> {
  __$$DeleteCartItemCopyWithImpl(
      _$DeleteCartItem _value, $Res Function(_$DeleteCartItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = null,
  }) {
    return _then(_$DeleteCartItem(
      null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartItemCopyWith<$Res> get cartItem {
    return $CartItemCopyWith<$Res>(_value.cartItem, (value) {
      return _then(_value.copyWith(cartItem: value));
    });
  }
}

/// @nodoc

class _$DeleteCartItem implements DeleteCartItem {
  const _$DeleteCartItem(this.cartItem);

  @override
  final CartItem cartItem;

  @override
  String toString() {
    return 'CartEvent.deleteCartItem(cartItem: $cartItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCartItem &&
            (identical(other.cartItem, cartItem) ||
                other.cartItem == cartItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCartItemCopyWith<_$DeleteCartItem> get copyWith =>
      __$$DeleteCartItemCopyWithImpl<_$DeleteCartItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool? hideLoading) getCart,
    required TResult Function(AddToCartReq req) addToCart,
    required TResult Function(AddToCartReq req) updateCart,
    required TResult Function(CartItem cartItem) deleteCartItem,
  }) {
    return deleteCartItem(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool? hideLoading)? getCart,
    TResult? Function(AddToCartReq req)? addToCart,
    TResult? Function(AddToCartReq req)? updateCart,
    TResult? Function(CartItem cartItem)? deleteCartItem,
  }) {
    return deleteCartItem?.call(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool? hideLoading)? getCart,
    TResult Function(AddToCartReq req)? addToCart,
    TResult Function(AddToCartReq req)? updateCart,
    TResult Function(CartItem cartItem)? deleteCartItem,
    required TResult orElse(),
  }) {
    if (deleteCartItem != null) {
      return deleteCartItem(cartItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(UpdateCart value) updateCart,
    required TResult Function(DeleteCartItem value) deleteCartItem,
  }) {
    return deleteCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(UpdateCart value)? updateCart,
    TResult? Function(DeleteCartItem value)? deleteCartItem,
  }) {
    return deleteCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(UpdateCart value)? updateCart,
    TResult Function(DeleteCartItem value)? deleteCartItem,
    required TResult orElse(),
  }) {
    if (deleteCartItem != null) {
      return deleteCartItem(this);
    }
    return orElse();
  }
}

abstract class DeleteCartItem implements CartEvent {
  const factory DeleteCartItem(final CartItem cartItem) = _$DeleteCartItem;

  CartItem get cartItem;
  @JsonKey(ignore: true)
  _$$DeleteCartItemCopyWith<_$DeleteCartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartLoading,
    required TResult Function(String error) cartError,
    required TResult Function() addToCartSuccess,
    required TResult Function(CartResponse cartResponse) getCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartLoading,
    TResult? Function(String error)? cartError,
    TResult? Function()? addToCartSuccess,
    TResult? Function(CartResponse cartResponse)? getCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartLoading,
    TResult Function(String error)? cartError,
    TResult Function()? addToCartSuccess,
    TResult Function(CartResponse cartResponse)? getCartSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CartLoading value) cartLoading,
    required TResult Function(CartError value) cartError,
    required TResult Function(AddToCartSuccess value) addToCartSuccess,
    required TResult Function(GetCartSuccess value) getCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CartLoading value)? cartLoading,
    TResult? Function(CartError value)? cartError,
    TResult? Function(AddToCartSuccess value)? addToCartSuccess,
    TResult? Function(GetCartSuccess value)? getCartSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CartLoading value)? cartLoading,
    TResult Function(CartError value)? cartError,
    TResult Function(AddToCartSuccess value)? addToCartSuccess,
    TResult Function(GetCartSuccess value)? getCartSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

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
    extends _$CartStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'CartState.initial()';
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
    required TResult Function() cartLoading,
    required TResult Function(String error) cartError,
    required TResult Function() addToCartSuccess,
    required TResult Function(CartResponse cartResponse) getCartSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartLoading,
    TResult? Function(String error)? cartError,
    TResult? Function()? addToCartSuccess,
    TResult? Function(CartResponse cartResponse)? getCartSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartLoading,
    TResult Function(String error)? cartError,
    TResult Function()? addToCartSuccess,
    TResult Function(CartResponse cartResponse)? getCartSuccess,
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
    required TResult Function(CartLoading value) cartLoading,
    required TResult Function(CartError value) cartError,
    required TResult Function(AddToCartSuccess value) addToCartSuccess,
    required TResult Function(GetCartSuccess value) getCartSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CartLoading value)? cartLoading,
    TResult? Function(CartError value)? cartError,
    TResult? Function(AddToCartSuccess value)? addToCartSuccess,
    TResult? Function(GetCartSuccess value)? getCartSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CartLoading value)? cartLoading,
    TResult Function(CartError value)? cartError,
    TResult Function(AddToCartSuccess value)? addToCartSuccess,
    TResult Function(GetCartSuccess value)? getCartSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CartState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$CartLoadingCopyWith<$Res> {
  factory _$$CartLoadingCopyWith(
          _$CartLoading value, $Res Function(_$CartLoading) then) =
      __$$CartLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartLoadingCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoading>
    implements _$$CartLoadingCopyWith<$Res> {
  __$$CartLoadingCopyWithImpl(
      _$CartLoading _value, $Res Function(_$CartLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartLoading implements CartLoading {
  const _$CartLoading();

  @override
  String toString() {
    return 'CartState.cartLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartLoading,
    required TResult Function(String error) cartError,
    required TResult Function() addToCartSuccess,
    required TResult Function(CartResponse cartResponse) getCartSuccess,
  }) {
    return cartLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartLoading,
    TResult? Function(String error)? cartError,
    TResult? Function()? addToCartSuccess,
    TResult? Function(CartResponse cartResponse)? getCartSuccess,
  }) {
    return cartLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartLoading,
    TResult Function(String error)? cartError,
    TResult Function()? addToCartSuccess,
    TResult Function(CartResponse cartResponse)? getCartSuccess,
    required TResult orElse(),
  }) {
    if (cartLoading != null) {
      return cartLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CartLoading value) cartLoading,
    required TResult Function(CartError value) cartError,
    required TResult Function(AddToCartSuccess value) addToCartSuccess,
    required TResult Function(GetCartSuccess value) getCartSuccess,
  }) {
    return cartLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CartLoading value)? cartLoading,
    TResult? Function(CartError value)? cartError,
    TResult? Function(AddToCartSuccess value)? addToCartSuccess,
    TResult? Function(GetCartSuccess value)? getCartSuccess,
  }) {
    return cartLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CartLoading value)? cartLoading,
    TResult Function(CartError value)? cartError,
    TResult Function(AddToCartSuccess value)? addToCartSuccess,
    TResult Function(GetCartSuccess value)? getCartSuccess,
    required TResult orElse(),
  }) {
    if (cartLoading != null) {
      return cartLoading(this);
    }
    return orElse();
  }
}

abstract class CartLoading implements CartState {
  const factory CartLoading() = _$CartLoading;
}

/// @nodoc
abstract class _$$CartErrorCopyWith<$Res> {
  factory _$$CartErrorCopyWith(
          _$CartError value, $Res Function(_$CartError) then) =
      __$$CartErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CartErrorCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartError>
    implements _$$CartErrorCopyWith<$Res> {
  __$$CartErrorCopyWithImpl(
      _$CartError _value, $Res Function(_$CartError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CartError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartError implements CartError {
  const _$CartError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CartState.cartError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartErrorCopyWith<_$CartError> get copyWith =>
      __$$CartErrorCopyWithImpl<_$CartError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartLoading,
    required TResult Function(String error) cartError,
    required TResult Function() addToCartSuccess,
    required TResult Function(CartResponse cartResponse) getCartSuccess,
  }) {
    return cartError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartLoading,
    TResult? Function(String error)? cartError,
    TResult? Function()? addToCartSuccess,
    TResult? Function(CartResponse cartResponse)? getCartSuccess,
  }) {
    return cartError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartLoading,
    TResult Function(String error)? cartError,
    TResult Function()? addToCartSuccess,
    TResult Function(CartResponse cartResponse)? getCartSuccess,
    required TResult orElse(),
  }) {
    if (cartError != null) {
      return cartError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CartLoading value) cartLoading,
    required TResult Function(CartError value) cartError,
    required TResult Function(AddToCartSuccess value) addToCartSuccess,
    required TResult Function(GetCartSuccess value) getCartSuccess,
  }) {
    return cartError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CartLoading value)? cartLoading,
    TResult? Function(CartError value)? cartError,
    TResult? Function(AddToCartSuccess value)? addToCartSuccess,
    TResult? Function(GetCartSuccess value)? getCartSuccess,
  }) {
    return cartError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CartLoading value)? cartLoading,
    TResult Function(CartError value)? cartError,
    TResult Function(AddToCartSuccess value)? addToCartSuccess,
    TResult Function(GetCartSuccess value)? getCartSuccess,
    required TResult orElse(),
  }) {
    if (cartError != null) {
      return cartError(this);
    }
    return orElse();
  }
}

abstract class CartError implements CartState {
  const factory CartError(final String error) = _$CartError;

  String get error;
  @JsonKey(ignore: true)
  _$$CartErrorCopyWith<_$CartError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToCartSuccessCopyWith<$Res> {
  factory _$$AddToCartSuccessCopyWith(
          _$AddToCartSuccess value, $Res Function(_$AddToCartSuccess) then) =
      __$$AddToCartSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddToCartSuccessCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$AddToCartSuccess>
    implements _$$AddToCartSuccessCopyWith<$Res> {
  __$$AddToCartSuccessCopyWithImpl(
      _$AddToCartSuccess _value, $Res Function(_$AddToCartSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddToCartSuccess implements AddToCartSuccess {
  const _$AddToCartSuccess();

  @override
  String toString() {
    return 'CartState.addToCartSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddToCartSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartLoading,
    required TResult Function(String error) cartError,
    required TResult Function() addToCartSuccess,
    required TResult Function(CartResponse cartResponse) getCartSuccess,
  }) {
    return addToCartSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartLoading,
    TResult? Function(String error)? cartError,
    TResult? Function()? addToCartSuccess,
    TResult? Function(CartResponse cartResponse)? getCartSuccess,
  }) {
    return addToCartSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartLoading,
    TResult Function(String error)? cartError,
    TResult Function()? addToCartSuccess,
    TResult Function(CartResponse cartResponse)? getCartSuccess,
    required TResult orElse(),
  }) {
    if (addToCartSuccess != null) {
      return addToCartSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CartLoading value) cartLoading,
    required TResult Function(CartError value) cartError,
    required TResult Function(AddToCartSuccess value) addToCartSuccess,
    required TResult Function(GetCartSuccess value) getCartSuccess,
  }) {
    return addToCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CartLoading value)? cartLoading,
    TResult? Function(CartError value)? cartError,
    TResult? Function(AddToCartSuccess value)? addToCartSuccess,
    TResult? Function(GetCartSuccess value)? getCartSuccess,
  }) {
    return addToCartSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CartLoading value)? cartLoading,
    TResult Function(CartError value)? cartError,
    TResult Function(AddToCartSuccess value)? addToCartSuccess,
    TResult Function(GetCartSuccess value)? getCartSuccess,
    required TResult orElse(),
  }) {
    if (addToCartSuccess != null) {
      return addToCartSuccess(this);
    }
    return orElse();
  }
}

abstract class AddToCartSuccess implements CartState {
  const factory AddToCartSuccess() = _$AddToCartSuccess;
}

/// @nodoc
abstract class _$$GetCartSuccessCopyWith<$Res> {
  factory _$$GetCartSuccessCopyWith(
          _$GetCartSuccess value, $Res Function(_$GetCartSuccess) then) =
      __$$GetCartSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({CartResponse cartResponse});

  $CartResponseCopyWith<$Res> get cartResponse;
}

/// @nodoc
class __$$GetCartSuccessCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$GetCartSuccess>
    implements _$$GetCartSuccessCopyWith<$Res> {
  __$$GetCartSuccessCopyWithImpl(
      _$GetCartSuccess _value, $Res Function(_$GetCartSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartResponse = null,
  }) {
    return _then(_$GetCartSuccess(
      cartResponse: null == cartResponse
          ? _value.cartResponse
          : cartResponse // ignore: cast_nullable_to_non_nullable
              as CartResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartResponseCopyWith<$Res> get cartResponse {
    return $CartResponseCopyWith<$Res>(_value.cartResponse, (value) {
      return _then(_value.copyWith(cartResponse: value));
    });
  }
}

/// @nodoc

class _$GetCartSuccess implements GetCartSuccess {
  const _$GetCartSuccess({required this.cartResponse});

  @override
  final CartResponse cartResponse;

  @override
  String toString() {
    return 'CartState.getCartSuccess(cartResponse: $cartResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartSuccess &&
            (identical(other.cartResponse, cartResponse) ||
                other.cartResponse == cartResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartSuccessCopyWith<_$GetCartSuccess> get copyWith =>
      __$$GetCartSuccessCopyWithImpl<_$GetCartSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cartLoading,
    required TResult Function(String error) cartError,
    required TResult Function() addToCartSuccess,
    required TResult Function(CartResponse cartResponse) getCartSuccess,
  }) {
    return getCartSuccess(cartResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cartLoading,
    TResult? Function(String error)? cartError,
    TResult? Function()? addToCartSuccess,
    TResult? Function(CartResponse cartResponse)? getCartSuccess,
  }) {
    return getCartSuccess?.call(cartResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cartLoading,
    TResult Function(String error)? cartError,
    TResult Function()? addToCartSuccess,
    TResult Function(CartResponse cartResponse)? getCartSuccess,
    required TResult orElse(),
  }) {
    if (getCartSuccess != null) {
      return getCartSuccess(cartResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CartLoading value) cartLoading,
    required TResult Function(CartError value) cartError,
    required TResult Function(AddToCartSuccess value) addToCartSuccess,
    required TResult Function(GetCartSuccess value) getCartSuccess,
  }) {
    return getCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CartLoading value)? cartLoading,
    TResult? Function(CartError value)? cartError,
    TResult? Function(AddToCartSuccess value)? addToCartSuccess,
    TResult? Function(GetCartSuccess value)? getCartSuccess,
  }) {
    return getCartSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CartLoading value)? cartLoading,
    TResult Function(CartError value)? cartError,
    TResult Function(AddToCartSuccess value)? addToCartSuccess,
    TResult Function(GetCartSuccess value)? getCartSuccess,
    required TResult orElse(),
  }) {
    if (getCartSuccess != null) {
      return getCartSuccess(this);
    }
    return orElse();
  }
}

abstract class GetCartSuccess implements CartState {
  const factory GetCartSuccess({required final CartResponse cartResponse}) =
      _$GetCartSuccess;

  CartResponse get cartResponse;
  @JsonKey(ignore: true)
  _$$GetCartSuccessCopyWith<_$GetCartSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
