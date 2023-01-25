// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resturant_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantCategory _$RestaurantCategoryFromJson(Map<String, dynamic> json) {
  return _RestaurantCategory.fromJson(json);
}

/// @nodoc
mixin _$RestaurantCategory {
  String? get id => throw _privateConstructorUsedError;
  String? get createdDate => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantCategoryCopyWith<RestaurantCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCategoryCopyWith<$Res> {
  factory $RestaurantCategoryCopyWith(
          RestaurantCategory value, $Res Function(RestaurantCategory) then) =
      _$RestaurantCategoryCopyWithImpl<$Res, RestaurantCategory>;
  @useResult
  $Res call({String? id, String? createdDate, String? image, String? name});
}

/// @nodoc
class _$RestaurantCategoryCopyWithImpl<$Res, $Val extends RestaurantCategory>
    implements $RestaurantCategoryCopyWith<$Res> {
  _$RestaurantCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdDate = freezed,
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantCategoryCopyWith<$Res>
    implements $RestaurantCategoryCopyWith<$Res> {
  factory _$$_RestaurantCategoryCopyWith(_$_RestaurantCategory value,
          $Res Function(_$_RestaurantCategory) then) =
      __$$_RestaurantCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? createdDate, String? image, String? name});
}

/// @nodoc
class __$$_RestaurantCategoryCopyWithImpl<$Res>
    extends _$RestaurantCategoryCopyWithImpl<$Res, _$_RestaurantCategory>
    implements _$$_RestaurantCategoryCopyWith<$Res> {
  __$$_RestaurantCategoryCopyWithImpl(
      _$_RestaurantCategory _value, $Res Function(_$_RestaurantCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdDate = freezed,
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_RestaurantCategory(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantCategory implements _RestaurantCategory {
  const _$_RestaurantCategory(
      {this.id, this.createdDate, this.image, this.name});

  factory _$_RestaurantCategory.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantCategoryFromJson(json);

  @override
  final String? id;
  @override
  final String? createdDate;
  @override
  final String? image;
  @override
  final String? name;

  @override
  String toString() {
    return 'RestaurantCategory(id: $id, createdDate: $createdDate, image: $image, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdDate, image, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantCategoryCopyWith<_$_RestaurantCategory> get copyWith =>
      __$$_RestaurantCategoryCopyWithImpl<_$_RestaurantCategory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantCategoryToJson(
      this,
    );
  }
}

abstract class _RestaurantCategory implements RestaurantCategory {
  const factory _RestaurantCategory(
      {final String? id,
      final String? createdDate,
      final String? image,
      final String? name}) = _$_RestaurantCategory;

  factory _RestaurantCategory.fromJson(Map<String, dynamic> json) =
      _$_RestaurantCategory.fromJson;

  @override
  String? get id;
  @override
  String? get createdDate;
  @override
  String? get image;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantCategoryCopyWith<_$_RestaurantCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
