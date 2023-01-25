// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BBSubCategory subCategory, int pageIndex)
        getSubCategoryProducts,
    required TResult Function(BBSubCategory subCategory, int pageIndex)
        getSubCategoryNextProducts,
    required TResult Function() getAllProducts,
    required TResult Function() resetProductState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryProducts,
    TResult? Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryNextProducts,
    TResult? Function()? getAllProducts,
    TResult? Function()? resetProductState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryProducts,
    TResult Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryNextProducts,
    TResult Function()? getAllProducts,
    TResult Function()? resetProductState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSubCategoryProducts value)
        getSubCategoryProducts,
    required TResult Function(GetSubCategoryNextProducts value)
        getSubCategoryNextProducts,
    required TResult Function(GetAllProducts value) getAllProducts,
    required TResult Function(ResetProductState value) resetProductState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSubCategoryProducts value)? getSubCategoryProducts,
    TResult? Function(GetSubCategoryNextProducts value)?
        getSubCategoryNextProducts,
    TResult? Function(GetAllProducts value)? getAllProducts,
    TResult? Function(ResetProductState value)? resetProductState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSubCategoryProducts value)? getSubCategoryProducts,
    TResult Function(GetSubCategoryNextProducts value)?
        getSubCategoryNextProducts,
    TResult Function(GetAllProducts value)? getAllProducts,
    TResult Function(ResetProductState value)? resetProductState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSubCategoryProductsCopyWith<$Res> {
  factory _$$GetSubCategoryProductsCopyWith(_$GetSubCategoryProducts value,
          $Res Function(_$GetSubCategoryProducts) then) =
      __$$GetSubCategoryProductsCopyWithImpl<$Res>;
  @useResult
  $Res call({BBSubCategory subCategory, int pageIndex});

  $BBSubCategoryCopyWith<$Res> get subCategory;
}

/// @nodoc
class __$$GetSubCategoryProductsCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetSubCategoryProducts>
    implements _$$GetSubCategoryProductsCopyWith<$Res> {
  __$$GetSubCategoryProductsCopyWithImpl(_$GetSubCategoryProducts _value,
      $Res Function(_$GetSubCategoryProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategory = null,
    Object? pageIndex = null,
  }) {
    return _then(_$GetSubCategoryProducts(
      subCategory: null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as BBSubCategory,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BBSubCategoryCopyWith<$Res> get subCategory {
    return $BBSubCategoryCopyWith<$Res>(_value.subCategory, (value) {
      return _then(_value.copyWith(subCategory: value));
    });
  }
}

/// @nodoc

class _$GetSubCategoryProducts implements GetSubCategoryProducts {
  const _$GetSubCategoryProducts(
      {required this.subCategory, required this.pageIndex});

  @override
  final BBSubCategory subCategory;
  @override
  final int pageIndex;

  @override
  String toString() {
    return 'ProductEvent.getSubCategoryProducts(subCategory: $subCategory, pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubCategoryProducts &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subCategory, pageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubCategoryProductsCopyWith<_$GetSubCategoryProducts> get copyWith =>
      __$$GetSubCategoryProductsCopyWithImpl<_$GetSubCategoryProducts>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BBSubCategory subCategory, int pageIndex)
        getSubCategoryProducts,
    required TResult Function(BBSubCategory subCategory, int pageIndex)
        getSubCategoryNextProducts,
    required TResult Function() getAllProducts,
    required TResult Function() resetProductState,
  }) {
    return getSubCategoryProducts(subCategory, pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryProducts,
    TResult? Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryNextProducts,
    TResult? Function()? getAllProducts,
    TResult? Function()? resetProductState,
  }) {
    return getSubCategoryProducts?.call(subCategory, pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryProducts,
    TResult Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryNextProducts,
    TResult Function()? getAllProducts,
    TResult Function()? resetProductState,
    required TResult orElse(),
  }) {
    if (getSubCategoryProducts != null) {
      return getSubCategoryProducts(subCategory, pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSubCategoryProducts value)
        getSubCategoryProducts,
    required TResult Function(GetSubCategoryNextProducts value)
        getSubCategoryNextProducts,
    required TResult Function(GetAllProducts value) getAllProducts,
    required TResult Function(ResetProductState value) resetProductState,
  }) {
    return getSubCategoryProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSubCategoryProducts value)? getSubCategoryProducts,
    TResult? Function(GetSubCategoryNextProducts value)?
        getSubCategoryNextProducts,
    TResult? Function(GetAllProducts value)? getAllProducts,
    TResult? Function(ResetProductState value)? resetProductState,
  }) {
    return getSubCategoryProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSubCategoryProducts value)? getSubCategoryProducts,
    TResult Function(GetSubCategoryNextProducts value)?
        getSubCategoryNextProducts,
    TResult Function(GetAllProducts value)? getAllProducts,
    TResult Function(ResetProductState value)? resetProductState,
    required TResult orElse(),
  }) {
    if (getSubCategoryProducts != null) {
      return getSubCategoryProducts(this);
    }
    return orElse();
  }
}

abstract class GetSubCategoryProducts implements ProductEvent {
  const factory GetSubCategoryProducts(
      {required final BBSubCategory subCategory,
      required final int pageIndex}) = _$GetSubCategoryProducts;

  BBSubCategory get subCategory;
  int get pageIndex;
  @JsonKey(ignore: true)
  _$$GetSubCategoryProductsCopyWith<_$GetSubCategoryProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSubCategoryNextProductsCopyWith<$Res> {
  factory _$$GetSubCategoryNextProductsCopyWith(
          _$GetSubCategoryNextProducts value,
          $Res Function(_$GetSubCategoryNextProducts) then) =
      __$$GetSubCategoryNextProductsCopyWithImpl<$Res>;
  @useResult
  $Res call({BBSubCategory subCategory, int pageIndex});

  $BBSubCategoryCopyWith<$Res> get subCategory;
}

/// @nodoc
class __$$GetSubCategoryNextProductsCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetSubCategoryNextProducts>
    implements _$$GetSubCategoryNextProductsCopyWith<$Res> {
  __$$GetSubCategoryNextProductsCopyWithImpl(
      _$GetSubCategoryNextProducts _value,
      $Res Function(_$GetSubCategoryNextProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategory = null,
    Object? pageIndex = null,
  }) {
    return _then(_$GetSubCategoryNextProducts(
      subCategory: null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as BBSubCategory,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BBSubCategoryCopyWith<$Res> get subCategory {
    return $BBSubCategoryCopyWith<$Res>(_value.subCategory, (value) {
      return _then(_value.copyWith(subCategory: value));
    });
  }
}

/// @nodoc

class _$GetSubCategoryNextProducts implements GetSubCategoryNextProducts {
  const _$GetSubCategoryNextProducts(
      {required this.subCategory, required this.pageIndex});

  @override
  final BBSubCategory subCategory;
  @override
  final int pageIndex;

  @override
  String toString() {
    return 'ProductEvent.getSubCategoryNextProducts(subCategory: $subCategory, pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubCategoryNextProducts &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subCategory, pageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubCategoryNextProductsCopyWith<_$GetSubCategoryNextProducts>
      get copyWith => __$$GetSubCategoryNextProductsCopyWithImpl<
          _$GetSubCategoryNextProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BBSubCategory subCategory, int pageIndex)
        getSubCategoryProducts,
    required TResult Function(BBSubCategory subCategory, int pageIndex)
        getSubCategoryNextProducts,
    required TResult Function() getAllProducts,
    required TResult Function() resetProductState,
  }) {
    return getSubCategoryNextProducts(subCategory, pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryProducts,
    TResult? Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryNextProducts,
    TResult? Function()? getAllProducts,
    TResult? Function()? resetProductState,
  }) {
    return getSubCategoryNextProducts?.call(subCategory, pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryProducts,
    TResult Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryNextProducts,
    TResult Function()? getAllProducts,
    TResult Function()? resetProductState,
    required TResult orElse(),
  }) {
    if (getSubCategoryNextProducts != null) {
      return getSubCategoryNextProducts(subCategory, pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSubCategoryProducts value)
        getSubCategoryProducts,
    required TResult Function(GetSubCategoryNextProducts value)
        getSubCategoryNextProducts,
    required TResult Function(GetAllProducts value) getAllProducts,
    required TResult Function(ResetProductState value) resetProductState,
  }) {
    return getSubCategoryNextProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSubCategoryProducts value)? getSubCategoryProducts,
    TResult? Function(GetSubCategoryNextProducts value)?
        getSubCategoryNextProducts,
    TResult? Function(GetAllProducts value)? getAllProducts,
    TResult? Function(ResetProductState value)? resetProductState,
  }) {
    return getSubCategoryNextProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSubCategoryProducts value)? getSubCategoryProducts,
    TResult Function(GetSubCategoryNextProducts value)?
        getSubCategoryNextProducts,
    TResult Function(GetAllProducts value)? getAllProducts,
    TResult Function(ResetProductState value)? resetProductState,
    required TResult orElse(),
  }) {
    if (getSubCategoryNextProducts != null) {
      return getSubCategoryNextProducts(this);
    }
    return orElse();
  }
}

abstract class GetSubCategoryNextProducts implements ProductEvent {
  const factory GetSubCategoryNextProducts(
      {required final BBSubCategory subCategory,
      required final int pageIndex}) = _$GetSubCategoryNextProducts;

  BBSubCategory get subCategory;
  int get pageIndex;
  @JsonKey(ignore: true)
  _$$GetSubCategoryNextProductsCopyWith<_$GetSubCategoryNextProducts>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllProductsCopyWith<$Res> {
  factory _$$GetAllProductsCopyWith(
          _$GetAllProducts value, $Res Function(_$GetAllProducts) then) =
      __$$GetAllProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllProductsCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetAllProducts>
    implements _$$GetAllProductsCopyWith<$Res> {
  __$$GetAllProductsCopyWithImpl(
      _$GetAllProducts _value, $Res Function(_$GetAllProducts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllProducts implements GetAllProducts {
  const _$GetAllProducts();

  @override
  String toString() {
    return 'ProductEvent.getAllProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BBSubCategory subCategory, int pageIndex)
        getSubCategoryProducts,
    required TResult Function(BBSubCategory subCategory, int pageIndex)
        getSubCategoryNextProducts,
    required TResult Function() getAllProducts,
    required TResult Function() resetProductState,
  }) {
    return getAllProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryProducts,
    TResult? Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryNextProducts,
    TResult? Function()? getAllProducts,
    TResult? Function()? resetProductState,
  }) {
    return getAllProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryProducts,
    TResult Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryNextProducts,
    TResult Function()? getAllProducts,
    TResult Function()? resetProductState,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSubCategoryProducts value)
        getSubCategoryProducts,
    required TResult Function(GetSubCategoryNextProducts value)
        getSubCategoryNextProducts,
    required TResult Function(GetAllProducts value) getAllProducts,
    required TResult Function(ResetProductState value) resetProductState,
  }) {
    return getAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSubCategoryProducts value)? getSubCategoryProducts,
    TResult? Function(GetSubCategoryNextProducts value)?
        getSubCategoryNextProducts,
    TResult? Function(GetAllProducts value)? getAllProducts,
    TResult? Function(ResetProductState value)? resetProductState,
  }) {
    return getAllProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSubCategoryProducts value)? getSubCategoryProducts,
    TResult Function(GetSubCategoryNextProducts value)?
        getSubCategoryNextProducts,
    TResult Function(GetAllProducts value)? getAllProducts,
    TResult Function(ResetProductState value)? resetProductState,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts(this);
    }
    return orElse();
  }
}

abstract class GetAllProducts implements ProductEvent {
  const factory GetAllProducts() = _$GetAllProducts;
}

/// @nodoc
abstract class _$$ResetProductStateCopyWith<$Res> {
  factory _$$ResetProductStateCopyWith(
          _$ResetProductState value, $Res Function(_$ResetProductState) then) =
      __$$ResetProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetProductStateCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$ResetProductState>
    implements _$$ResetProductStateCopyWith<$Res> {
  __$$ResetProductStateCopyWithImpl(
      _$ResetProductState _value, $Res Function(_$ResetProductState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetProductState implements ResetProductState {
  const _$ResetProductState();

  @override
  String toString() {
    return 'ProductEvent.resetProductState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetProductState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BBSubCategory subCategory, int pageIndex)
        getSubCategoryProducts,
    required TResult Function(BBSubCategory subCategory, int pageIndex)
        getSubCategoryNextProducts,
    required TResult Function() getAllProducts,
    required TResult Function() resetProductState,
  }) {
    return resetProductState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryProducts,
    TResult? Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryNextProducts,
    TResult? Function()? getAllProducts,
    TResult? Function()? resetProductState,
  }) {
    return resetProductState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryProducts,
    TResult Function(BBSubCategory subCategory, int pageIndex)?
        getSubCategoryNextProducts,
    TResult Function()? getAllProducts,
    TResult Function()? resetProductState,
    required TResult orElse(),
  }) {
    if (resetProductState != null) {
      return resetProductState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSubCategoryProducts value)
        getSubCategoryProducts,
    required TResult Function(GetSubCategoryNextProducts value)
        getSubCategoryNextProducts,
    required TResult Function(GetAllProducts value) getAllProducts,
    required TResult Function(ResetProductState value) resetProductState,
  }) {
    return resetProductState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSubCategoryProducts value)? getSubCategoryProducts,
    TResult? Function(GetSubCategoryNextProducts value)?
        getSubCategoryNextProducts,
    TResult? Function(GetAllProducts value)? getAllProducts,
    TResult? Function(ResetProductState value)? resetProductState,
  }) {
    return resetProductState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSubCategoryProducts value)? getSubCategoryProducts,
    TResult Function(GetSubCategoryNextProducts value)?
        getSubCategoryNextProducts,
    TResult Function(GetAllProducts value)? getAllProducts,
    TResult Function(ResetProductState value)? resetProductState,
    required TResult orElse(),
  }) {
    if (resetProductState != null) {
      return resetProductState(this);
    }
    return orElse();
  }
}

abstract class ResetProductState implements ProductEvent {
  const factory ResetProductState() = _$ResetProductState;
}

/// @nodoc
mixin _$ProductState {
  CurrentState get state => throw _privateConstructorUsedError;
  List<Product>? get categoryProducts => throw _privateConstructorUsedError;
  BBProductPagination? get paginationData => throw _privateConstructorUsedError;
  List<Product>? get allProucts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {CurrentState state,
      List<Product>? categoryProducts,
      BBProductPagination? paginationData,
      List<Product>? allProucts});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? categoryProducts = freezed,
    Object? paginationData = freezed,
    Object? allProucts = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as CurrentState,
      categoryProducts: freezed == categoryProducts
          ? _value.categoryProducts
          : categoryProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      paginationData: freezed == paginationData
          ? _value.paginationData
          : paginationData // ignore: cast_nullable_to_non_nullable
              as BBProductPagination?,
      allProucts: freezed == allProucts
          ? _value.allProucts
          : allProucts // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$_ProductStateCopyWith(
          _$_ProductState value, $Res Function(_$_ProductState) then) =
      __$$_ProductStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CurrentState state,
      List<Product>? categoryProducts,
      BBProductPagination? paginationData,
      List<Product>? allProucts});
}

/// @nodoc
class __$$_ProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_ProductState>
    implements _$$_ProductStateCopyWith<$Res> {
  __$$_ProductStateCopyWithImpl(
      _$_ProductState _value, $Res Function(_$_ProductState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? categoryProducts = freezed,
    Object? paginationData = freezed,
    Object? allProucts = freezed,
  }) {
    return _then(_$_ProductState(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as CurrentState,
      categoryProducts: freezed == categoryProducts
          ? _value._categoryProducts
          : categoryProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      paginationData: freezed == paginationData
          ? _value.paginationData
          : paginationData // ignore: cast_nullable_to_non_nullable
              as BBProductPagination?,
      allProucts: freezed == allProucts
          ? _value._allProucts
          : allProucts // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {required this.state,
      final List<Product>? categoryProducts,
      this.paginationData,
      final List<Product>? allProucts})
      : _categoryProducts = categoryProducts,
        _allProucts = allProucts;

  @override
  final CurrentState state;
  final List<Product>? _categoryProducts;
  @override
  List<Product>? get categoryProducts {
    final value = _categoryProducts;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BBProductPagination? paginationData;
  final List<Product>? _allProucts;
  @override
  List<Product>? get allProucts {
    final value = _allProucts;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductState(state: $state, categoryProducts: $categoryProducts, paginationData: $paginationData, allProucts: $allProucts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductState &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality()
                .equals(other._categoryProducts, _categoryProducts) &&
            (identical(other.paginationData, paginationData) ||
                other.paginationData == paginationData) &&
            const DeepCollectionEquality()
                .equals(other._allProucts, _allProucts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      const DeepCollectionEquality().hash(_categoryProducts),
      paginationData,
      const DeepCollectionEquality().hash(_allProucts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      __$$_ProductStateCopyWithImpl<_$_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {required final CurrentState state,
      final List<Product>? categoryProducts,
      final BBProductPagination? paginationData,
      final List<Product>? allProucts}) = _$_ProductState;

  @override
  CurrentState get state;
  @override
  List<Product>? get categoryProducts;
  @override
  BBProductPagination? get paginationData;
  @override
  List<Product>? get allProucts;
  @override
  @JsonKey(ignore: true)
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
