// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bb_category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BBCategory _$BBCategoryFromJson(Map<String, dynamic> json) {
  return _BBCategory.fromJson(json);
}

/// @nodoc
mixin _$BBCategory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'productCatImage')
  List<String>? get images => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  num? get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BBCategoryCopyWith<BBCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BBCategoryCopyWith<$Res> {
  factory $BBCategoryCopyWith(
          BBCategory value, $Res Function(BBCategory) then) =
      _$BBCategoryCopyWithImpl<$Res, BBCategory>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'productCatImage') List<String>? images,
      String? description,
      num? discount});
}

/// @nodoc
class _$BBCategoryCopyWithImpl<$Res, $Val extends BBCategory>
    implements $BBCategoryCopyWith<$Res> {
  _$BBCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = freezed,
    Object? description = freezed,
    Object? discount = freezed,
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
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BBCategoryCopyWith<$Res>
    implements $BBCategoryCopyWith<$Res> {
  factory _$$_BBCategoryCopyWith(
          _$_BBCategory value, $Res Function(_$_BBCategory) then) =
      __$$_BBCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'productCatImage') List<String>? images,
      String? description,
      num? discount});
}

/// @nodoc
class __$$_BBCategoryCopyWithImpl<$Res>
    extends _$BBCategoryCopyWithImpl<$Res, _$_BBCategory>
    implements _$$_BBCategoryCopyWith<$Res> {
  __$$_BBCategoryCopyWithImpl(
      _$_BBCategory _value, $Res Function(_$_BBCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = freezed,
    Object? description = freezed,
    Object? discount = freezed,
  }) {
    return _then(_$_BBCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BBCategory implements _BBCategory {
  const _$_BBCategory(
      {required this.id,
      required this.name,
      @JsonKey(name: 'productCatImage') final List<String>? images,
      this.description,
      this.discount})
      : _images = images;

  factory _$_BBCategory.fromJson(Map<String, dynamic> json) =>
      _$$_BBCategoryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<String>? _images;
  @override
  @JsonKey(name: 'productCatImage')
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  final num? discount;

  @override
  String toString() {
    return 'BBCategory(id: $id, name: $name, images: $images, description: $description, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BBCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_images), description, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BBCategoryCopyWith<_$_BBCategory> get copyWith =>
      __$$_BBCategoryCopyWithImpl<_$_BBCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BBCategoryToJson(
      this,
    );
  }
}

abstract class _BBCategory implements BBCategory {
  const factory _BBCategory(
      {required final String id,
      required final String name,
      @JsonKey(name: 'productCatImage') final List<String>? images,
      final String? description,
      final num? discount}) = _$_BBCategory;

  factory _BBCategory.fromJson(Map<String, dynamic> json) =
      _$_BBCategory.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'productCatImage')
  List<String>? get images;
  @override
  String? get description;
  @override
  num? get discount;
  @override
  @JsonKey(ignore: true)
  _$$_BBCategoryCopyWith<_$_BBCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

BBSubCategory _$BBSubCategoryFromJson(Map<String, dynamic> json) {
  return _BBSubCategory.fromJson(json);
}

/// @nodoc
mixin _$BBSubCategory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BBSubCategoryCopyWith<BBSubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BBSubCategoryCopyWith<$Res> {
  factory $BBSubCategoryCopyWith(
          BBSubCategory value, $Res Function(BBSubCategory) then) =
      _$BBSubCategoryCopyWithImpl<$Res, BBSubCategory>;
  @useResult
  $Res call({String id, String name, List<String>? images});
}

/// @nodoc
class _$BBSubCategoryCopyWithImpl<$Res, $Val extends BBSubCategory>
    implements $BBSubCategoryCopyWith<$Res> {
  _$BBSubCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = freezed,
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
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BBSubCategoryCopyWith<$Res>
    implements $BBSubCategoryCopyWith<$Res> {
  factory _$$_BBSubCategoryCopyWith(
          _$_BBSubCategory value, $Res Function(_$_BBSubCategory) then) =
      __$$_BBSubCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<String>? images});
}

/// @nodoc
class __$$_BBSubCategoryCopyWithImpl<$Res>
    extends _$BBSubCategoryCopyWithImpl<$Res, _$_BBSubCategory>
    implements _$$_BBSubCategoryCopyWith<$Res> {
  __$$_BBSubCategoryCopyWithImpl(
      _$_BBSubCategory _value, $Res Function(_$_BBSubCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = freezed,
  }) {
    return _then(_$_BBSubCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BBSubCategory implements _BBSubCategory {
  const _$_BBSubCategory(
      {required this.id, required this.name, final List<String>? images})
      : _images = images;

  factory _$_BBSubCategory.fromJson(Map<String, dynamic> json) =>
      _$$_BBSubCategoryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BBSubCategory(id: $id, name: $name, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BBSubCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BBSubCategoryCopyWith<_$_BBSubCategory> get copyWith =>
      __$$_BBSubCategoryCopyWithImpl<_$_BBSubCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BBSubCategoryToJson(
      this,
    );
  }
}

abstract class _BBSubCategory implements BBSubCategory {
  const factory _BBSubCategory(
      {required final String id,
      required final String name,
      final List<String>? images}) = _$_BBSubCategory;

  factory _BBSubCategory.fromJson(Map<String, dynamic> json) =
      _$_BBSubCategory.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$_BBSubCategoryCopyWith<_$_BBSubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

SliderCategory _$SliderCategoryFromJson(Map<String, dynamic> json) {
  return _SliderCategory.fromJson(json);
}

/// @nodoc
mixin _$SliderCategory {
  String? get id => throw _privateConstructorUsedError;
  String? get productId => throw _privateConstructorUsedError;
  String? get productcategoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "bannerImage")
  String? get image => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SliderCategoryCopyWith<SliderCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderCategoryCopyWith<$Res> {
  factory $SliderCategoryCopyWith(
          SliderCategory value, $Res Function(SliderCategory) then) =
      _$SliderCategoryCopyWithImpl<$Res, SliderCategory>;
  @useResult
  $Res call(
      {String? id,
      String? productId,
      String? productcategoryId,
      @JsonKey(name: "bannerImage") String? image,
      String? title});
}

/// @nodoc
class _$SliderCategoryCopyWithImpl<$Res, $Val extends SliderCategory>
    implements $SliderCategoryCopyWith<$Res> {
  _$SliderCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? productcategoryId = freezed,
    Object? image = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      productcategoryId: freezed == productcategoryId
          ? _value.productcategoryId
          : productcategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SliderCategoryCopyWith<$Res>
    implements $SliderCategoryCopyWith<$Res> {
  factory _$$_SliderCategoryCopyWith(
          _$_SliderCategory value, $Res Function(_$_SliderCategory) then) =
      __$$_SliderCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? productId,
      String? productcategoryId,
      @JsonKey(name: "bannerImage") String? image,
      String? title});
}

/// @nodoc
class __$$_SliderCategoryCopyWithImpl<$Res>
    extends _$SliderCategoryCopyWithImpl<$Res, _$_SliderCategory>
    implements _$$_SliderCategoryCopyWith<$Res> {
  __$$_SliderCategoryCopyWithImpl(
      _$_SliderCategory _value, $Res Function(_$_SliderCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? productcategoryId = freezed,
    Object? image = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_SliderCategory(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      productcategoryId: freezed == productcategoryId
          ? _value.productcategoryId
          : productcategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SliderCategory implements _SliderCategory {
  const _$_SliderCategory(
      {this.id,
      this.productId,
      this.productcategoryId,
      @JsonKey(name: "bannerImage") this.image,
      this.title});

  factory _$_SliderCategory.fromJson(Map<String, dynamic> json) =>
      _$$_SliderCategoryFromJson(json);

  @override
  final String? id;
  @override
  final String? productId;
  @override
  final String? productcategoryId;
  @override
  @JsonKey(name: "bannerImage")
  final String? image;
  @override
  final String? title;

  @override
  String toString() {
    return 'SliderCategory(id: $id, productId: $productId, productcategoryId: $productcategoryId, image: $image, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SliderCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productcategoryId, productcategoryId) ||
                other.productcategoryId == productcategoryId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, productId, productcategoryId, image, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SliderCategoryCopyWith<_$_SliderCategory> get copyWith =>
      __$$_SliderCategoryCopyWithImpl<_$_SliderCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SliderCategoryToJson(
      this,
    );
  }
}

abstract class _SliderCategory implements SliderCategory {
  const factory _SliderCategory(
      {final String? id,
      final String? productId,
      final String? productcategoryId,
      @JsonKey(name: "bannerImage") final String? image,
      final String? title}) = _$_SliderCategory;

  factory _SliderCategory.fromJson(Map<String, dynamic> json) =
      _$_SliderCategory.fromJson;

  @override
  String? get id;
  @override
  String? get productId;
  @override
  String? get productcategoryId;
  @override
  @JsonKey(name: "bannerImage")
  String? get image;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_SliderCategoryCopyWith<_$_SliderCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

UrlMeta _$UrlMetaFromJson(Map<String, dynamic> json) {
  return _UrlMeta.fromJson(json);
}

/// @nodoc
mixin _$UrlMeta {
  @JsonKey(name: 'has_next')
  bool? get hasNext => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_prev')
  bool? get hasPrev => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_num')
  int? get nextNum => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get pages => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_num')
  int? get prevNum => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlMetaCopyWith<UrlMeta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlMetaCopyWith<$Res> {
  factory $UrlMetaCopyWith(UrlMeta value, $Res Function(UrlMeta) then) =
      _$UrlMetaCopyWithImpl<$Res, UrlMeta>;
  @useResult
  $Res call(
      {@JsonKey(name: 'has_next') bool? hasNext,
      @JsonKey(name: 'has_prev') bool? hasPrev,
      @JsonKey(name: 'next_num') int? nextNum,
      int? page,
      int? pages,
      @JsonKey(name: 'prev_num') int? prevNum,
      int? total});
}

/// @nodoc
class _$UrlMetaCopyWithImpl<$Res, $Val extends UrlMeta>
    implements $UrlMetaCopyWith<$Res> {
  _$UrlMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasNext = freezed,
    Object? hasPrev = freezed,
    Object? nextNum = freezed,
    Object? page = freezed,
    Object? pages = freezed,
    Object? prevNum = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      hasNext: freezed == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPrev: freezed == hasPrev
          ? _value.hasPrev
          : hasPrev // ignore: cast_nullable_to_non_nullable
              as bool?,
      nextNum: freezed == nextNum
          ? _value.nextNum
          : nextNum // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      prevNum: freezed == prevNum
          ? _value.prevNum
          : prevNum // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UrlMetaCopyWith<$Res> implements $UrlMetaCopyWith<$Res> {
  factory _$$_UrlMetaCopyWith(
          _$_UrlMeta value, $Res Function(_$_UrlMeta) then) =
      __$$_UrlMetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'has_next') bool? hasNext,
      @JsonKey(name: 'has_prev') bool? hasPrev,
      @JsonKey(name: 'next_num') int? nextNum,
      int? page,
      int? pages,
      @JsonKey(name: 'prev_num') int? prevNum,
      int? total});
}

/// @nodoc
class __$$_UrlMetaCopyWithImpl<$Res>
    extends _$UrlMetaCopyWithImpl<$Res, _$_UrlMeta>
    implements _$$_UrlMetaCopyWith<$Res> {
  __$$_UrlMetaCopyWithImpl(_$_UrlMeta _value, $Res Function(_$_UrlMeta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasNext = freezed,
    Object? hasPrev = freezed,
    Object? nextNum = freezed,
    Object? page = freezed,
    Object? pages = freezed,
    Object? prevNum = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_UrlMeta(
      hasNext: freezed == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPrev: freezed == hasPrev
          ? _value.hasPrev
          : hasPrev // ignore: cast_nullable_to_non_nullable
              as bool?,
      nextNum: freezed == nextNum
          ? _value.nextNum
          : nextNum // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      prevNum: freezed == prevNum
          ? _value.prevNum
          : prevNum // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UrlMeta implements _UrlMeta {
  const _$_UrlMeta(
      {@JsonKey(name: 'has_next') this.hasNext,
      @JsonKey(name: 'has_prev') this.hasPrev,
      @JsonKey(name: 'next_num') this.nextNum,
      this.page,
      this.pages,
      @JsonKey(name: 'prev_num') this.prevNum,
      this.total});

  factory _$_UrlMeta.fromJson(Map<String, dynamic> json) =>
      _$$_UrlMetaFromJson(json);

  @override
  @JsonKey(name: 'has_next')
  final bool? hasNext;
  @override
  @JsonKey(name: 'has_prev')
  final bool? hasPrev;
  @override
  @JsonKey(name: 'next_num')
  final int? nextNum;
  @override
  final int? page;
  @override
  final int? pages;
  @override
  @JsonKey(name: 'prev_num')
  final int? prevNum;
  @override
  final int? total;

  @override
  String toString() {
    return 'UrlMeta(hasNext: $hasNext, hasPrev: $hasPrev, nextNum: $nextNum, page: $page, pages: $pages, prevNum: $prevNum, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UrlMeta &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.hasPrev, hasPrev) || other.hasPrev == hasPrev) &&
            (identical(other.nextNum, nextNum) || other.nextNum == nextNum) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.prevNum, prevNum) || other.prevNum == prevNum) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, hasNext, hasPrev, nextNum, page, pages, prevNum, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UrlMetaCopyWith<_$_UrlMeta> get copyWith =>
      __$$_UrlMetaCopyWithImpl<_$_UrlMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UrlMetaToJson(
      this,
    );
  }
}

abstract class _UrlMeta implements UrlMeta {
  const factory _UrlMeta(
      {@JsonKey(name: 'has_next') final bool? hasNext,
      @JsonKey(name: 'has_prev') final bool? hasPrev,
      @JsonKey(name: 'next_num') final int? nextNum,
      final int? page,
      final int? pages,
      @JsonKey(name: 'prev_num') final int? prevNum,
      final int? total}) = _$_UrlMeta;

  factory _UrlMeta.fromJson(Map<String, dynamic> json) = _$_UrlMeta.fromJson;

  @override
  @JsonKey(name: 'has_next')
  bool? get hasNext;
  @override
  @JsonKey(name: 'has_prev')
  bool? get hasPrev;
  @override
  @JsonKey(name: 'next_num')
  int? get nextNum;
  @override
  int? get page;
  @override
  int? get pages;
  @override
  @JsonKey(name: 'prev_num')
  int? get prevNum;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_UrlMetaCopyWith<_$_UrlMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
