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

FeaturedItem _$FeaturedItemFromJson(Map<String, dynamic> json) {
  return _FeaturedItem.fromJson(json);
}

/// @nodoc
mixin _$FeaturedItem {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get sortNumber => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeaturedItemCopyWith<FeaturedItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedItemCopyWith<$Res> {
  factory $FeaturedItemCopyWith(
          FeaturedItem value, $Res Function(FeaturedItem) then) =
      _$FeaturedItemCopyWithImpl<$Res, FeaturedItem>;
  @useResult
  $Res call(
      {String id,
      String title,
      int sortNumber,
      List<Map<String, dynamic>> items});
}

/// @nodoc
class _$FeaturedItemCopyWithImpl<$Res, $Val extends FeaturedItem>
    implements $FeaturedItemCopyWith<$Res> {
  _$FeaturedItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? sortNumber = null,
    Object? items = null,
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
      sortNumber: null == sortNumber
          ? _value.sortNumber
          : sortNumber // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeaturedItemCopyWith<$Res>
    implements $FeaturedItemCopyWith<$Res> {
  factory _$$_FeaturedItemCopyWith(
          _$_FeaturedItem value, $Res Function(_$_FeaturedItem) then) =
      __$$_FeaturedItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      int sortNumber,
      List<Map<String, dynamic>> items});
}

/// @nodoc
class __$$_FeaturedItemCopyWithImpl<$Res>
    extends _$FeaturedItemCopyWithImpl<$Res, _$_FeaturedItem>
    implements _$$_FeaturedItemCopyWith<$Res> {
  __$$_FeaturedItemCopyWithImpl(
      _$_FeaturedItem _value, $Res Function(_$_FeaturedItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? sortNumber = null,
    Object? items = null,
  }) {
    return _then(_$_FeaturedItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sortNumber: null == sortNumber
          ? _value.sortNumber
          : sortNumber // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_FeaturedItem implements _FeaturedItem {
  const _$_FeaturedItem(
      {required this.id,
      required this.title,
      required this.sortNumber,
      required final List<Map<String, dynamic>> items})
      : _items = items;

  factory _$_FeaturedItem.fromJson(Map<String, dynamic> json) =>
      _$$_FeaturedItemFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final int sortNumber;
  final List<Map<String, dynamic>> _items;
  @override
  List<Map<String, dynamic>> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'FeaturedItem(id: $id, title: $title, sortNumber: $sortNumber, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeaturedItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sortNumber, sortNumber) ||
                other.sortNumber == sortNumber) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, sortNumber,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeaturedItemCopyWith<_$_FeaturedItem> get copyWith =>
      __$$_FeaturedItemCopyWithImpl<_$_FeaturedItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeaturedItemToJson(
      this,
    );
  }
}

abstract class _FeaturedItem implements FeaturedItem {
  const factory _FeaturedItem(
      {required final String id,
      required final String title,
      required final int sortNumber,
      required final List<Map<String, dynamic>> items}) = _$_FeaturedItem;

  factory _FeaturedItem.fromJson(Map<String, dynamic> json) =
      _$_FeaturedItem.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  int get sortNumber;
  @override
  List<Map<String, dynamic>> get items;
  @override
  @JsonKey(ignore: true)
  _$$_FeaturedItemCopyWith<_$_FeaturedItem> get copyWith =>
      throw _privateConstructorUsedError;
}
