// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'featured_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BBFeaturedItem _$BBFeaturedItemFromJson(Map<String, dynamic> json) {
  return _BBFeaturedItem.fromJson(json);
}

/// @nodoc
mixin _$BBFeaturedItem {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'productCategoryList')
  List<BBCategory> get categories => throw _privateConstructorUsedError;
  @JsonKey(name: 'productList')
  List<Product> get products => throw _privateConstructorUsedError;
  @JsonKey(name: "BBFeaturedItemImage")
  List<String>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BBFeaturedItemCopyWith<BBFeaturedItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BBFeaturedItemCopyWith<$Res> {
  factory $BBFeaturedItemCopyWith(
          BBFeaturedItem value, $Res Function(BBFeaturedItem) then) =
      _$BBFeaturedItemCopyWithImpl<$Res, BBFeaturedItem>;
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'productCategoryList') List<BBCategory> categories,
      @JsonKey(name: 'productList') List<Product> products,
      @JsonKey(name: "BBFeaturedItemImage") List<String>? images});
}

/// @nodoc
class _$BBFeaturedItemCopyWithImpl<$Res, $Val extends BBFeaturedItem>
    implements $BBFeaturedItemCopyWith<$Res> {
  _$BBFeaturedItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? categories = null,
    Object? products = null,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<BBCategory>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BBFeaturedItemCopyWith<$Res>
    implements $BBFeaturedItemCopyWith<$Res> {
  factory _$$_BBFeaturedItemCopyWith(
          _$_BBFeaturedItem value, $Res Function(_$_BBFeaturedItem) then) =
      __$$_BBFeaturedItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'productCategoryList') List<BBCategory> categories,
      @JsonKey(name: 'productList') List<Product> products,
      @JsonKey(name: "BBFeaturedItemImage") List<String>? images});
}

/// @nodoc
class __$$_BBFeaturedItemCopyWithImpl<$Res>
    extends _$BBFeaturedItemCopyWithImpl<$Res, _$_BBFeaturedItem>
    implements _$$_BBFeaturedItemCopyWith<$Res> {
  __$$_BBFeaturedItemCopyWithImpl(
      _$_BBFeaturedItem _value, $Res Function(_$_BBFeaturedItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? categories = null,
    Object? products = null,
    Object? images = freezed,
  }) {
    return _then(_$_BBFeaturedItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<BBCategory>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BBFeaturedItem implements _BBFeaturedItem {
  const _$_BBFeaturedItem(
      {required this.id,
      required this.title,
      @JsonKey(name: 'productCategoryList')
          required final List<BBCategory> categories,
      @JsonKey(name: 'productList')
          required final List<Product> products,
      @JsonKey(name: "BBFeaturedItemImage")
          final List<String>? images})
      : _categories = categories,
        _products = products,
        _images = images;

  factory _$_BBFeaturedItem.fromJson(Map<String, dynamic> json) =>
      _$$_BBFeaturedItemFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<BBCategory> _categories;
  @override
  @JsonKey(name: 'productCategoryList')
  List<BBCategory> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Product> _products;
  @override
  @JsonKey(name: 'productList')
  List<Product> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<String>? _images;
  @override
  @JsonKey(name: "BBFeaturedItemImage")
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BBFeaturedItem(id: $id, title: $title, categories: $categories, products: $products, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BBFeaturedItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BBFeaturedItemCopyWith<_$_BBFeaturedItem> get copyWith =>
      __$$_BBFeaturedItemCopyWithImpl<_$_BBFeaturedItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BBFeaturedItemToJson(
      this,
    );
  }
}

abstract class _BBFeaturedItem implements BBFeaturedItem {
  const factory _BBFeaturedItem(
      {required final String id,
      required final String title,
      @JsonKey(name: 'productCategoryList')
          required final List<BBCategory> categories,
      @JsonKey(name: 'productList')
          required final List<Product> products,
      @JsonKey(name: "BBFeaturedItemImage")
          final List<String>? images}) = _$_BBFeaturedItem;

  factory _BBFeaturedItem.fromJson(Map<String, dynamic> json) =
      _$_BBFeaturedItem.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'productCategoryList')
  List<BBCategory> get categories;
  @override
  @JsonKey(name: 'productList')
  List<Product> get products;
  @override
  @JsonKey(name: "BBFeaturedItemImage")
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$_BBFeaturedItemCopyWith<_$_BBFeaturedItem> get copyWith =>
      throw _privateConstructorUsedError;
}
