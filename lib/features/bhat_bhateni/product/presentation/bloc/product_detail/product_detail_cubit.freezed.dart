// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productDetailLoading,
    required TResult Function(String error) productDetailFailure,
    required TResult Function(Product product) productDetailLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productDetailLoading,
    TResult? Function(String error)? productDetailFailure,
    TResult? Function(Product product)? productDetailLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productDetailLoading,
    TResult Function(String error)? productDetailFailure,
    TResult Function(Product product)? productDetailLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProductDetailLoading value) productDetailLoading,
    required TResult Function(ProductDetailFailure value) productDetailFailure,
    required TResult Function(ProductDetailLoaded value) productDetailLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProductDetailLoading value)? productDetailLoading,
    TResult? Function(ProductDetailFailure value)? productDetailFailure,
    TResult? Function(ProductDetailLoaded value)? productDetailLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProductDetailLoading value)? productDetailLoading,
    TResult Function(ProductDetailFailure value)? productDetailFailure,
    TResult Function(ProductDetailLoaded value)? productDetailLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailStateCopyWith<$Res> {
  factory $ProductDetailStateCopyWith(
          ProductDetailState value, $Res Function(ProductDetailState) then) =
      _$ProductDetailStateCopyWithImpl<$Res, ProductDetailState>;
}

/// @nodoc
class _$ProductDetailStateCopyWithImpl<$Res, $Val extends ProductDetailState>
    implements $ProductDetailStateCopyWith<$Res> {
  _$ProductDetailStateCopyWithImpl(this._value, this._then);

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
    extends _$ProductDetailStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ProductDetailState.initial()';
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
    required TResult Function() productDetailLoading,
    required TResult Function(String error) productDetailFailure,
    required TResult Function(Product product) productDetailLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productDetailLoading,
    TResult? Function(String error)? productDetailFailure,
    TResult? Function(Product product)? productDetailLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productDetailLoading,
    TResult Function(String error)? productDetailFailure,
    TResult Function(Product product)? productDetailLoaded,
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
    required TResult Function(ProductDetailLoading value) productDetailLoading,
    required TResult Function(ProductDetailFailure value) productDetailFailure,
    required TResult Function(ProductDetailLoaded value) productDetailLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProductDetailLoading value)? productDetailLoading,
    TResult? Function(ProductDetailFailure value)? productDetailFailure,
    TResult? Function(ProductDetailLoaded value)? productDetailLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProductDetailLoading value)? productDetailLoading,
    TResult Function(ProductDetailFailure value)? productDetailFailure,
    TResult Function(ProductDetailLoaded value)? productDetailLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProductDetailState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$ProductDetailLoadingCopyWith<$Res> {
  factory _$$ProductDetailLoadingCopyWith(_$ProductDetailLoading value,
          $Res Function(_$ProductDetailLoading) then) =
      __$$ProductDetailLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductDetailLoadingCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$ProductDetailLoading>
    implements _$$ProductDetailLoadingCopyWith<$Res> {
  __$$ProductDetailLoadingCopyWithImpl(_$ProductDetailLoading _value,
      $Res Function(_$ProductDetailLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductDetailLoading implements ProductDetailLoading {
  const _$ProductDetailLoading();

  @override
  String toString() {
    return 'ProductDetailState.productDetailLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductDetailLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productDetailLoading,
    required TResult Function(String error) productDetailFailure,
    required TResult Function(Product product) productDetailLoaded,
  }) {
    return productDetailLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productDetailLoading,
    TResult? Function(String error)? productDetailFailure,
    TResult? Function(Product product)? productDetailLoaded,
  }) {
    return productDetailLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productDetailLoading,
    TResult Function(String error)? productDetailFailure,
    TResult Function(Product product)? productDetailLoaded,
    required TResult orElse(),
  }) {
    if (productDetailLoading != null) {
      return productDetailLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProductDetailLoading value) productDetailLoading,
    required TResult Function(ProductDetailFailure value) productDetailFailure,
    required TResult Function(ProductDetailLoaded value) productDetailLoaded,
  }) {
    return productDetailLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProductDetailLoading value)? productDetailLoading,
    TResult? Function(ProductDetailFailure value)? productDetailFailure,
    TResult? Function(ProductDetailLoaded value)? productDetailLoaded,
  }) {
    return productDetailLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProductDetailLoading value)? productDetailLoading,
    TResult Function(ProductDetailFailure value)? productDetailFailure,
    TResult Function(ProductDetailLoaded value)? productDetailLoaded,
    required TResult orElse(),
  }) {
    if (productDetailLoading != null) {
      return productDetailLoading(this);
    }
    return orElse();
  }
}

abstract class ProductDetailLoading implements ProductDetailState {
  const factory ProductDetailLoading() = _$ProductDetailLoading;
}

/// @nodoc
abstract class _$$ProductDetailFailureCopyWith<$Res> {
  factory _$$ProductDetailFailureCopyWith(_$ProductDetailFailure value,
          $Res Function(_$ProductDetailFailure) then) =
      __$$ProductDetailFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ProductDetailFailureCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$ProductDetailFailure>
    implements _$$ProductDetailFailureCopyWith<$Res> {
  __$$ProductDetailFailureCopyWithImpl(_$ProductDetailFailure _value,
      $Res Function(_$ProductDetailFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ProductDetailFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductDetailFailure implements ProductDetailFailure {
  const _$ProductDetailFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ProductDetailState.productDetailFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailFailureCopyWith<_$ProductDetailFailure> get copyWith =>
      __$$ProductDetailFailureCopyWithImpl<_$ProductDetailFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productDetailLoading,
    required TResult Function(String error) productDetailFailure,
    required TResult Function(Product product) productDetailLoaded,
  }) {
    return productDetailFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productDetailLoading,
    TResult? Function(String error)? productDetailFailure,
    TResult? Function(Product product)? productDetailLoaded,
  }) {
    return productDetailFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productDetailLoading,
    TResult Function(String error)? productDetailFailure,
    TResult Function(Product product)? productDetailLoaded,
    required TResult orElse(),
  }) {
    if (productDetailFailure != null) {
      return productDetailFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProductDetailLoading value) productDetailLoading,
    required TResult Function(ProductDetailFailure value) productDetailFailure,
    required TResult Function(ProductDetailLoaded value) productDetailLoaded,
  }) {
    return productDetailFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProductDetailLoading value)? productDetailLoading,
    TResult? Function(ProductDetailFailure value)? productDetailFailure,
    TResult? Function(ProductDetailLoaded value)? productDetailLoaded,
  }) {
    return productDetailFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProductDetailLoading value)? productDetailLoading,
    TResult Function(ProductDetailFailure value)? productDetailFailure,
    TResult Function(ProductDetailLoaded value)? productDetailLoaded,
    required TResult orElse(),
  }) {
    if (productDetailFailure != null) {
      return productDetailFailure(this);
    }
    return orElse();
  }
}

abstract class ProductDetailFailure implements ProductDetailState {
  const factory ProductDetailFailure(final String error) =
      _$ProductDetailFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$ProductDetailFailureCopyWith<_$ProductDetailFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductDetailLoadedCopyWith<$Res> {
  factory _$$ProductDetailLoadedCopyWith(_$ProductDetailLoaded value,
          $Res Function(_$ProductDetailLoaded) then) =
      __$$ProductDetailLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductDetailLoadedCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$ProductDetailLoaded>
    implements _$$ProductDetailLoadedCopyWith<$Res> {
  __$$ProductDetailLoadedCopyWithImpl(
      _$ProductDetailLoaded _value, $Res Function(_$ProductDetailLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ProductDetailLoaded(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$ProductDetailLoaded implements ProductDetailLoaded {
  const _$ProductDetailLoaded(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductDetailState.productDetailLoaded(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailLoaded &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailLoadedCopyWith<_$ProductDetailLoaded> get copyWith =>
      __$$ProductDetailLoadedCopyWithImpl<_$ProductDetailLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productDetailLoading,
    required TResult Function(String error) productDetailFailure,
    required TResult Function(Product product) productDetailLoaded,
  }) {
    return productDetailLoaded(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productDetailLoading,
    TResult? Function(String error)? productDetailFailure,
    TResult? Function(Product product)? productDetailLoaded,
  }) {
    return productDetailLoaded?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productDetailLoading,
    TResult Function(String error)? productDetailFailure,
    TResult Function(Product product)? productDetailLoaded,
    required TResult orElse(),
  }) {
    if (productDetailLoaded != null) {
      return productDetailLoaded(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProductDetailLoading value) productDetailLoading,
    required TResult Function(ProductDetailFailure value) productDetailFailure,
    required TResult Function(ProductDetailLoaded value) productDetailLoaded,
  }) {
    return productDetailLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProductDetailLoading value)? productDetailLoading,
    TResult? Function(ProductDetailFailure value)? productDetailFailure,
    TResult? Function(ProductDetailLoaded value)? productDetailLoaded,
  }) {
    return productDetailLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProductDetailLoading value)? productDetailLoading,
    TResult Function(ProductDetailFailure value)? productDetailFailure,
    TResult Function(ProductDetailLoaded value)? productDetailLoaded,
    required TResult orElse(),
  }) {
    if (productDetailLoaded != null) {
      return productDetailLoaded(this);
    }
    return orElse();
  }
}

abstract class ProductDetailLoaded implements ProductDetailState {
  const factory ProductDetailLoaded(final Product product) =
      _$ProductDetailLoaded;

  Product get product;
  @JsonKey(ignore: true)
  _$$ProductDetailLoadedCopyWith<_$ProductDetailLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
