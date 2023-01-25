// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'featured_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeaturedProductEvent {
  String get featuredItemId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String featuredItemId) getFeaturedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String featuredItemId)? getFeaturedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String featuredItemId)? getFeaturedProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFeaturedProducts value) getFeaturedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFeaturedProducts value)? getFeaturedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFeaturedProducts value)? getFeaturedProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeaturedProductEventCopyWith<FeaturedProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedProductEventCopyWith<$Res> {
  factory $FeaturedProductEventCopyWith(FeaturedProductEvent value,
          $Res Function(FeaturedProductEvent) then) =
      _$FeaturedProductEventCopyWithImpl<$Res, FeaturedProductEvent>;
  @useResult
  $Res call({String featuredItemId});
}

/// @nodoc
class _$FeaturedProductEventCopyWithImpl<$Res,
        $Val extends FeaturedProductEvent>
    implements $FeaturedProductEventCopyWith<$Res> {
  _$FeaturedProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? featuredItemId = null,
  }) {
    return _then(_value.copyWith(
      featuredItemId: null == featuredItemId
          ? _value.featuredItemId
          : featuredItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetFeaturedProductsCopyWith<$Res>
    implements $FeaturedProductEventCopyWith<$Res> {
  factory _$$GetFeaturedProductsCopyWith(_$GetFeaturedProducts value,
          $Res Function(_$GetFeaturedProducts) then) =
      __$$GetFeaturedProductsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String featuredItemId});
}

/// @nodoc
class __$$GetFeaturedProductsCopyWithImpl<$Res>
    extends _$FeaturedProductEventCopyWithImpl<$Res, _$GetFeaturedProducts>
    implements _$$GetFeaturedProductsCopyWith<$Res> {
  __$$GetFeaturedProductsCopyWithImpl(
      _$GetFeaturedProducts _value, $Res Function(_$GetFeaturedProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? featuredItemId = null,
  }) {
    return _then(_$GetFeaturedProducts(
      null == featuredItemId
          ? _value.featuredItemId
          : featuredItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFeaturedProducts implements GetFeaturedProducts {
  const _$GetFeaturedProducts(this.featuredItemId);

  @override
  final String featuredItemId;

  @override
  String toString() {
    return 'FeaturedProductEvent.getFeaturedProducts(featuredItemId: $featuredItemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeaturedProducts &&
            (identical(other.featuredItemId, featuredItemId) ||
                other.featuredItemId == featuredItemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, featuredItemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeaturedProductsCopyWith<_$GetFeaturedProducts> get copyWith =>
      __$$GetFeaturedProductsCopyWithImpl<_$GetFeaturedProducts>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String featuredItemId) getFeaturedProducts,
  }) {
    return getFeaturedProducts(featuredItemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String featuredItemId)? getFeaturedProducts,
  }) {
    return getFeaturedProducts?.call(featuredItemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String featuredItemId)? getFeaturedProducts,
    required TResult orElse(),
  }) {
    if (getFeaturedProducts != null) {
      return getFeaturedProducts(featuredItemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFeaturedProducts value) getFeaturedProducts,
  }) {
    return getFeaturedProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFeaturedProducts value)? getFeaturedProducts,
  }) {
    return getFeaturedProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFeaturedProducts value)? getFeaturedProducts,
    required TResult orElse(),
  }) {
    if (getFeaturedProducts != null) {
      return getFeaturedProducts(this);
    }
    return orElse();
  }
}

abstract class GetFeaturedProducts implements FeaturedProductEvent {
  const factory GetFeaturedProducts(final String featuredItemId) =
      _$GetFeaturedProducts;

  @override
  String get featuredItemId;
  @override
  @JsonKey(ignore: true)
  _$$GetFeaturedProductsCopyWith<_$GetFeaturedProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeaturedProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredProductsLoading,
    required TResult Function(String error) featuredProductsError,
    required TResult Function(List<Product> products) featuredProductsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredProductsLoading,
    TResult? Function(String error)? featuredProductsError,
    TResult? Function(List<Product> products)? featuredProductsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredProductsLoading,
    TResult Function(String error)? featuredProductsError,
    TResult Function(List<Product> products)? featuredProductsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeaturedProductsLoading value)
        featuredProductsLoading,
    required TResult Function(FeaturedProductsError value)
        featuredProductsError,
    required TResult Function(FeaturedProductsLoaded value)
        featuredProductsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult? Function(FeaturedProductsError value)? featuredProductsError,
    TResult? Function(FeaturedProductsLoaded value)? featuredProductsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult Function(FeaturedProductsError value)? featuredProductsError,
    TResult Function(FeaturedProductsLoaded value)? featuredProductsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedProductStateCopyWith<$Res> {
  factory $FeaturedProductStateCopyWith(FeaturedProductState value,
          $Res Function(FeaturedProductState) then) =
      _$FeaturedProductStateCopyWithImpl<$Res, FeaturedProductState>;
}

/// @nodoc
class _$FeaturedProductStateCopyWithImpl<$Res,
        $Val extends FeaturedProductState>
    implements $FeaturedProductStateCopyWith<$Res> {
  _$FeaturedProductStateCopyWithImpl(this._value, this._then);

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
    extends _$FeaturedProductStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'FeaturedProductState.initial()';
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
    required TResult Function() featuredProductsLoading,
    required TResult Function(String error) featuredProductsError,
    required TResult Function(List<Product> products) featuredProductsLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredProductsLoading,
    TResult? Function(String error)? featuredProductsError,
    TResult? Function(List<Product> products)? featuredProductsLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredProductsLoading,
    TResult Function(String error)? featuredProductsError,
    TResult Function(List<Product> products)? featuredProductsLoaded,
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
    required TResult Function(FeaturedProductsLoading value)
        featuredProductsLoading,
    required TResult Function(FeaturedProductsError value)
        featuredProductsError,
    required TResult Function(FeaturedProductsLoaded value)
        featuredProductsLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult? Function(FeaturedProductsError value)? featuredProductsError,
    TResult? Function(FeaturedProductsLoaded value)? featuredProductsLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult Function(FeaturedProductsError value)? featuredProductsError,
    TResult Function(FeaturedProductsLoaded value)? featuredProductsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FeaturedProductState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$FeaturedProductsLoadingCopyWith<$Res> {
  factory _$$FeaturedProductsLoadingCopyWith(_$FeaturedProductsLoading value,
          $Res Function(_$FeaturedProductsLoading) then) =
      __$$FeaturedProductsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeaturedProductsLoadingCopyWithImpl<$Res>
    extends _$FeaturedProductStateCopyWithImpl<$Res, _$FeaturedProductsLoading>
    implements _$$FeaturedProductsLoadingCopyWith<$Res> {
  __$$FeaturedProductsLoadingCopyWithImpl(_$FeaturedProductsLoading _value,
      $Res Function(_$FeaturedProductsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FeaturedProductsLoading implements FeaturedProductsLoading {
  const _$FeaturedProductsLoading();

  @override
  String toString() {
    return 'FeaturedProductState.featuredProductsLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedProductsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredProductsLoading,
    required TResult Function(String error) featuredProductsError,
    required TResult Function(List<Product> products) featuredProductsLoaded,
  }) {
    return featuredProductsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredProductsLoading,
    TResult? Function(String error)? featuredProductsError,
    TResult? Function(List<Product> products)? featuredProductsLoaded,
  }) {
    return featuredProductsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredProductsLoading,
    TResult Function(String error)? featuredProductsError,
    TResult Function(List<Product> products)? featuredProductsLoaded,
    required TResult orElse(),
  }) {
    if (featuredProductsLoading != null) {
      return featuredProductsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeaturedProductsLoading value)
        featuredProductsLoading,
    required TResult Function(FeaturedProductsError value)
        featuredProductsError,
    required TResult Function(FeaturedProductsLoaded value)
        featuredProductsLoaded,
  }) {
    return featuredProductsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult? Function(FeaturedProductsError value)? featuredProductsError,
    TResult? Function(FeaturedProductsLoaded value)? featuredProductsLoaded,
  }) {
    return featuredProductsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult Function(FeaturedProductsError value)? featuredProductsError,
    TResult Function(FeaturedProductsLoaded value)? featuredProductsLoaded,
    required TResult orElse(),
  }) {
    if (featuredProductsLoading != null) {
      return featuredProductsLoading(this);
    }
    return orElse();
  }
}

abstract class FeaturedProductsLoading implements FeaturedProductState {
  const factory FeaturedProductsLoading() = _$FeaturedProductsLoading;
}

/// @nodoc
abstract class _$$FeaturedProductsErrorCopyWith<$Res> {
  factory _$$FeaturedProductsErrorCopyWith(_$FeaturedProductsError value,
          $Res Function(_$FeaturedProductsError) then) =
      __$$FeaturedProductsErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FeaturedProductsErrorCopyWithImpl<$Res>
    extends _$FeaturedProductStateCopyWithImpl<$Res, _$FeaturedProductsError>
    implements _$$FeaturedProductsErrorCopyWith<$Res> {
  __$$FeaturedProductsErrorCopyWithImpl(_$FeaturedProductsError _value,
      $Res Function(_$FeaturedProductsError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FeaturedProductsError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FeaturedProductsError implements FeaturedProductsError {
  const _$FeaturedProductsError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FeaturedProductState.featuredProductsError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedProductsError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedProductsErrorCopyWith<_$FeaturedProductsError> get copyWith =>
      __$$FeaturedProductsErrorCopyWithImpl<_$FeaturedProductsError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredProductsLoading,
    required TResult Function(String error) featuredProductsError,
    required TResult Function(List<Product> products) featuredProductsLoaded,
  }) {
    return featuredProductsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredProductsLoading,
    TResult? Function(String error)? featuredProductsError,
    TResult? Function(List<Product> products)? featuredProductsLoaded,
  }) {
    return featuredProductsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredProductsLoading,
    TResult Function(String error)? featuredProductsError,
    TResult Function(List<Product> products)? featuredProductsLoaded,
    required TResult orElse(),
  }) {
    if (featuredProductsError != null) {
      return featuredProductsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeaturedProductsLoading value)
        featuredProductsLoading,
    required TResult Function(FeaturedProductsError value)
        featuredProductsError,
    required TResult Function(FeaturedProductsLoaded value)
        featuredProductsLoaded,
  }) {
    return featuredProductsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult? Function(FeaturedProductsError value)? featuredProductsError,
    TResult? Function(FeaturedProductsLoaded value)? featuredProductsLoaded,
  }) {
    return featuredProductsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult Function(FeaturedProductsError value)? featuredProductsError,
    TResult Function(FeaturedProductsLoaded value)? featuredProductsLoaded,
    required TResult orElse(),
  }) {
    if (featuredProductsError != null) {
      return featuredProductsError(this);
    }
    return orElse();
  }
}

abstract class FeaturedProductsError implements FeaturedProductState {
  const factory FeaturedProductsError(final String error) =
      _$FeaturedProductsError;

  String get error;
  @JsonKey(ignore: true)
  _$$FeaturedProductsErrorCopyWith<_$FeaturedProductsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeaturedProductsLoadedCopyWith<$Res> {
  factory _$$FeaturedProductsLoadedCopyWith(_$FeaturedProductsLoaded value,
          $Res Function(_$FeaturedProductsLoaded) then) =
      __$$FeaturedProductsLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$FeaturedProductsLoadedCopyWithImpl<$Res>
    extends _$FeaturedProductStateCopyWithImpl<$Res, _$FeaturedProductsLoaded>
    implements _$$FeaturedProductsLoadedCopyWith<$Res> {
  __$$FeaturedProductsLoadedCopyWithImpl(_$FeaturedProductsLoaded _value,
      $Res Function(_$FeaturedProductsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$FeaturedProductsLoaded(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$FeaturedProductsLoaded implements FeaturedProductsLoaded {
  const _$FeaturedProductsLoaded(final List<Product> products)
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'FeaturedProductState.featuredProductsLoaded(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedProductsLoaded &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedProductsLoadedCopyWith<_$FeaturedProductsLoaded> get copyWith =>
      __$$FeaturedProductsLoadedCopyWithImpl<_$FeaturedProductsLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredProductsLoading,
    required TResult Function(String error) featuredProductsError,
    required TResult Function(List<Product> products) featuredProductsLoaded,
  }) {
    return featuredProductsLoaded(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredProductsLoading,
    TResult? Function(String error)? featuredProductsError,
    TResult? Function(List<Product> products)? featuredProductsLoaded,
  }) {
    return featuredProductsLoaded?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredProductsLoading,
    TResult Function(String error)? featuredProductsError,
    TResult Function(List<Product> products)? featuredProductsLoaded,
    required TResult orElse(),
  }) {
    if (featuredProductsLoaded != null) {
      return featuredProductsLoaded(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeaturedProductsLoading value)
        featuredProductsLoading,
    required TResult Function(FeaturedProductsError value)
        featuredProductsError,
    required TResult Function(FeaturedProductsLoaded value)
        featuredProductsLoaded,
  }) {
    return featuredProductsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult? Function(FeaturedProductsError value)? featuredProductsError,
    TResult? Function(FeaturedProductsLoaded value)? featuredProductsLoaded,
  }) {
    return featuredProductsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedProductsLoading value)? featuredProductsLoading,
    TResult Function(FeaturedProductsError value)? featuredProductsError,
    TResult Function(FeaturedProductsLoaded value)? featuredProductsLoaded,
    required TResult orElse(),
  }) {
    if (featuredProductsLoaded != null) {
      return featuredProductsLoaded(this);
    }
    return orElse();
  }
}

abstract class FeaturedProductsLoaded implements FeaturedProductState {
  const factory FeaturedProductsLoaded(final List<Product> products) =
      _$FeaturedProductsLoaded;

  List<Product> get products;
  @JsonKey(ignore: true)
  _$$FeaturedProductsLoadedCopyWith<_$FeaturedProductsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
