// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return _Restaurant.fromJson(json);
}

/// @nodoc
mixin _$Restaurant {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurant_name')
  String get name => throw _privateConstructorUsedError;
  String? get images => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  num? get lat => throw _privateConstructorUsedError;
  num? get lng => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  @JsonKey(name: "opening_time")
  String? get openingTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'closing_time')
  String? get closingTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantCopyWith<Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) then) =
      _$RestaurantCopyWithImpl<$Res, Restaurant>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'restaurant_name') String name,
      String? images,
      String? address,
      num? lat,
      num? lng,
      bool isFavorite,
      @JsonKey(name: "opening_time") String? openingTime,
      @JsonKey(name: 'closing_time') String? closingTime});
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res, $Val extends Restaurant>
    implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

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
    Object? address = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? isFavorite = null,
    Object? openingTime = freezed,
    Object? closingTime = freezed,
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
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as num?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      openingTime: freezed == openingTime
          ? _value.openingTime
          : openingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      closingTime: freezed == closingTime
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantCopyWith<$Res>
    implements $RestaurantCopyWith<$Res> {
  factory _$$_RestaurantCopyWith(
          _$_Restaurant value, $Res Function(_$_Restaurant) then) =
      __$$_RestaurantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'restaurant_name') String name,
      String? images,
      String? address,
      num? lat,
      num? lng,
      bool isFavorite,
      @JsonKey(name: "opening_time") String? openingTime,
      @JsonKey(name: 'closing_time') String? closingTime});
}

/// @nodoc
class __$$_RestaurantCopyWithImpl<$Res>
    extends _$RestaurantCopyWithImpl<$Res, _$_Restaurant>
    implements _$$_RestaurantCopyWith<$Res> {
  __$$_RestaurantCopyWithImpl(
      _$_Restaurant _value, $Res Function(_$_Restaurant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = freezed,
    Object? address = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? isFavorite = null,
    Object? openingTime = freezed,
    Object? closingTime = freezed,
  }) {
    return _then(_$_Restaurant(
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
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as num?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      openingTime: freezed == openingTime
          ? _value.openingTime
          : openingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      closingTime: freezed == closingTime
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Restaurant implements _Restaurant {
  const _$_Restaurant(
      {required this.id,
      @JsonKey(name: 'restaurant_name') required this.name,
      this.images,
      this.address,
      this.lat,
      this.lng,
      this.isFavorite = false,
      @JsonKey(name: "opening_time") this.openingTime,
      @JsonKey(name: 'closing_time') this.closingTime});

  factory _$_Restaurant.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'restaurant_name')
  final String name;
  @override
  final String? images;
  @override
  final String? address;
  @override
  final num? lat;
  @override
  final num? lng;
  @override
  @JsonKey()
  final bool isFavorite;
  @override
  @JsonKey(name: "opening_time")
  final String? openingTime;
  @override
  @JsonKey(name: 'closing_time')
  final String? closingTime;

  @override
  String toString() {
    return 'Restaurant(id: $id, name: $name, images: $images, address: $address, lat: $lat, lng: $lng, isFavorite: $isFavorite, openingTime: $openingTime, closingTime: $closingTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Restaurant &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.openingTime, openingTime) ||
                other.openingTime == openingTime) &&
            (identical(other.closingTime, closingTime) ||
                other.closingTime == closingTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, images, address, lat,
      lng, isFavorite, openingTime, closingTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantCopyWith<_$_Restaurant> get copyWith =>
      __$$_RestaurantCopyWithImpl<_$_Restaurant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantToJson(
      this,
    );
  }
}

abstract class _Restaurant implements Restaurant {
  const factory _Restaurant(
          {required final String id,
          @JsonKey(name: 'restaurant_name') required final String name,
          final String? images,
          final String? address,
          final num? lat,
          final num? lng,
          final bool isFavorite,
          @JsonKey(name: "opening_time") final String? openingTime,
          @JsonKey(name: 'closing_time') final String? closingTime}) =
      _$_Restaurant;

  factory _Restaurant.fromJson(Map<String, dynamic> json) =
      _$_Restaurant.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'restaurant_name')
  String get name;
  @override
  String? get images;
  @override
  String? get address;
  @override
  num? get lat;
  @override
  num? get lng;
  @override
  bool get isFavorite;
  @override
  @JsonKey(name: "opening_time")
  String? get openingTime;
  @override
  @JsonKey(name: 'closing_time')
  String? get closingTime;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantCopyWith<_$_Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

RestaurantDetail _$RestaurantDetailFromJson(Map<String, dynamic> json) {
  return _RestaurantDetail.fromJson(json);
}

/// @nodoc
mixin _$RestaurantDetail {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurant_name')
  String get restaurantName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get images => throw _privateConstructorUsedError;
  String? get contact => throw _privateConstructorUsedError;
  @JsonKey(name: "opening_time")
  String? get openingTime => throw _privateConstructorUsedError;
  @JsonKey(name: "closing_time")
  String? get closingTime => throw _privateConstructorUsedError;
  num? get lat => throw _privateConstructorUsedError;
  num? get lng => throw _privateConstructorUsedError;
  num? get rating => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  List<dynamic> get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantDetailCopyWith<RestaurantDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantDetailCopyWith<$Res> {
  factory $RestaurantDetailCopyWith(
          RestaurantDetail value, $Res Function(RestaurantDetail) then) =
      _$RestaurantDetailCopyWithImpl<$Res, RestaurantDetail>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'restaurant_name') String restaurantName,
      String? description,
      String? address,
      String? images,
      String? contact,
      @JsonKey(name: "opening_time") String? openingTime,
      @JsonKey(name: "closing_time") String? closingTime,
      num? lat,
      num? lng,
      num? rating,
      bool isFavorite,
      List<dynamic> reviews});
}

/// @nodoc
class _$RestaurantDetailCopyWithImpl<$Res, $Val extends RestaurantDetail>
    implements $RestaurantDetailCopyWith<$Res> {
  _$RestaurantDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? restaurantName = null,
    Object? description = freezed,
    Object? address = freezed,
    Object? images = freezed,
    Object? contact = freezed,
    Object? openingTime = freezed,
    Object? closingTime = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? rating = freezed,
    Object? isFavorite = null,
    Object? reviews = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantName: null == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      openingTime: freezed == openingTime
          ? _value.openingTime
          : openingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      closingTime: freezed == closingTime
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as num?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantDetailCopyWith<$Res>
    implements $RestaurantDetailCopyWith<$Res> {
  factory _$$_RestaurantDetailCopyWith(
          _$_RestaurantDetail value, $Res Function(_$_RestaurantDetail) then) =
      __$$_RestaurantDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'restaurant_name') String restaurantName,
      String? description,
      String? address,
      String? images,
      String? contact,
      @JsonKey(name: "opening_time") String? openingTime,
      @JsonKey(name: "closing_time") String? closingTime,
      num? lat,
      num? lng,
      num? rating,
      bool isFavorite,
      List<dynamic> reviews});
}

/// @nodoc
class __$$_RestaurantDetailCopyWithImpl<$Res>
    extends _$RestaurantDetailCopyWithImpl<$Res, _$_RestaurantDetail>
    implements _$$_RestaurantDetailCopyWith<$Res> {
  __$$_RestaurantDetailCopyWithImpl(
      _$_RestaurantDetail _value, $Res Function(_$_RestaurantDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? restaurantName = null,
    Object? description = freezed,
    Object? address = freezed,
    Object? images = freezed,
    Object? contact = freezed,
    Object? openingTime = freezed,
    Object? closingTime = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? rating = freezed,
    Object? isFavorite = null,
    Object? reviews = null,
  }) {
    return _then(_$_RestaurantDetail(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantName: null == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      openingTime: freezed == openingTime
          ? _value.openingTime
          : openingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      closingTime: freezed == closingTime
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as num?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantDetail implements _RestaurantDetail {
  const _$_RestaurantDetail(
      {required this.id,
      @JsonKey(name: 'restaurant_name') required this.restaurantName,
      this.description,
      this.address,
      this.images,
      this.contact,
      @JsonKey(name: "opening_time") this.openingTime,
      @JsonKey(name: "closing_time") this.closingTime,
      this.lat,
      this.lng,
      this.rating,
      this.isFavorite = false,
      final List<dynamic> reviews = const []})
      : _reviews = reviews;

  factory _$_RestaurantDetail.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantDetailFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'restaurant_name')
  final String restaurantName;
  @override
  final String? description;
  @override
  final String? address;
  @override
  final String? images;
  @override
  final String? contact;
  @override
  @JsonKey(name: "opening_time")
  final String? openingTime;
  @override
  @JsonKey(name: "closing_time")
  final String? closingTime;
  @override
  final num? lat;
  @override
  final num? lng;
  @override
  final num? rating;
  @override
  @JsonKey()
  final bool isFavorite;
  final List<dynamic> _reviews;
  @override
  @JsonKey()
  List<dynamic> get reviews {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'RestaurantDetail(id: $id, restaurantName: $restaurantName, description: $description, address: $address, images: $images, contact: $contact, openingTime: $openingTime, closingTime: $closingTime, lat: $lat, lng: $lng, rating: $rating, isFavorite: $isFavorite, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.restaurantName, restaurantName) ||
                other.restaurantName == restaurantName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.openingTime, openingTime) ||
                other.openingTime == openingTime) &&
            (identical(other.closingTime, closingTime) ||
                other.closingTime == closingTime) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      restaurantName,
      description,
      address,
      images,
      contact,
      openingTime,
      closingTime,
      lat,
      lng,
      rating,
      isFavorite,
      const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantDetailCopyWith<_$_RestaurantDetail> get copyWith =>
      __$$_RestaurantDetailCopyWithImpl<_$_RestaurantDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantDetailToJson(
      this,
    );
  }
}

abstract class _RestaurantDetail implements RestaurantDetail {
  const factory _RestaurantDetail(
      {required final String id,
      @JsonKey(name: 'restaurant_name') required final String restaurantName,
      final String? description,
      final String? address,
      final String? images,
      final String? contact,
      @JsonKey(name: "opening_time") final String? openingTime,
      @JsonKey(name: "closing_time") final String? closingTime,
      final num? lat,
      final num? lng,
      final num? rating,
      final bool isFavorite,
      final List<dynamic> reviews}) = _$_RestaurantDetail;

  factory _RestaurantDetail.fromJson(Map<String, dynamic> json) =
      _$_RestaurantDetail.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'restaurant_name')
  String get restaurantName;
  @override
  String? get description;
  @override
  String? get address;
  @override
  String? get images;
  @override
  String? get contact;
  @override
  @JsonKey(name: "opening_time")
  String? get openingTime;
  @override
  @JsonKey(name: "closing_time")
  String? get closingTime;
  @override
  num? get lat;
  @override
  num? get lng;
  @override
  num? get rating;
  @override
  bool get isFavorite;
  @override
  List<dynamic> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantDetailCopyWith<_$_RestaurantDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

Menu _$MenuFromJson(Map<String, dynamic> json) {
  return _Menu.fromJson(json);
}

/// @nodoc
mixin _$Menu {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<Food> get foods => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuCopyWith<Menu> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuCopyWith<$Res> {
  factory $MenuCopyWith(Menu value, $Res Function(Menu) then) =
      _$MenuCopyWithImpl<$Res, Menu>;
  @useResult
  $Res call({String id, String title, List<Food> foods});
}

/// @nodoc
class _$MenuCopyWithImpl<$Res, $Val extends Menu>
    implements $MenuCopyWith<$Res> {
  _$MenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? foods = null,
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
      foods: null == foods
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuCopyWith<$Res> implements $MenuCopyWith<$Res> {
  factory _$$_MenuCopyWith(_$_Menu value, $Res Function(_$_Menu) then) =
      __$$_MenuCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, List<Food> foods});
}

/// @nodoc
class __$$_MenuCopyWithImpl<$Res> extends _$MenuCopyWithImpl<$Res, _$_Menu>
    implements _$$_MenuCopyWith<$Res> {
  __$$_MenuCopyWithImpl(_$_Menu _value, $Res Function(_$_Menu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? foods = null,
  }) {
    return _then(_$_Menu(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      foods: null == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Menu implements _Menu {
  const _$_Menu(
      {required this.id,
      required this.title,
      final List<Food> foods = const []})
      : _foods = foods;

  factory _$_Menu.fromJson(Map<String, dynamic> json) => _$$_MenuFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<Food> _foods;
  @override
  @JsonKey()
  List<Food> get foods {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  @override
  String toString() {
    return 'Menu(id: $id, title: $title, foods: $foods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Menu &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._foods, _foods));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, const DeepCollectionEquality().hash(_foods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuCopyWith<_$_Menu> get copyWith =>
      __$$_MenuCopyWithImpl<_$_Menu>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuToJson(
      this,
    );
  }
}

abstract class _Menu implements Menu {
  const factory _Menu(
      {required final String id,
      required final String title,
      final List<Food> foods}) = _$_Menu;

  factory _Menu.fromJson(Map<String, dynamic> json) = _$_Menu.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<Food> get foods;
  @override
  @JsonKey(ignore: true)
  _$$_MenuCopyWith<_$_Menu> get copyWith => throw _privateConstructorUsedError;
}

Food _$FoodFromJson(Map<String, dynamic> json) {
  return _Food.fromJson(json);
}

/// @nodoc
mixin _$Food {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "restaurant_id")
  String? get restaurantId => throw _privateConstructorUsedError;
  @JsonKey(name: "restaurant")
  String? get restaurantName => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  num? get discount => throw _privateConstructorUsedError;
  num? get discountedPrice => throw _privateConstructorUsedError;
  List<String>? get foodImage => throw _privateConstructorUsedError;
  bool? get isVeg => throw _privateConstructorUsedError;
  bool get offer => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_name")
  String? get offerName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodCopyWith<Food> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCopyWith<$Res> {
  factory $FoodCopyWith(Food value, $Res Function(Food) then) =
      _$FoodCopyWithImpl<$Res, Food>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "restaurant_id") String? restaurantId,
      @JsonKey(name: "restaurant") String? restaurantName,
      String? name,
      String? detail,
      num? price,
      num? discount,
      num? discountedPrice,
      List<String>? foodImage,
      bool? isVeg,
      bool offer,
      @JsonKey(name: "offer_name") String? offerName});
}

/// @nodoc
class _$FoodCopyWithImpl<$Res, $Val extends Food>
    implements $FoodCopyWith<$Res> {
  _$FoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? restaurantId = freezed,
    Object? restaurantName = freezed,
    Object? name = freezed,
    Object? detail = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? discountedPrice = freezed,
    Object? foodImage = freezed,
    Object? isVeg = freezed,
    Object? offer = null,
    Object? offerName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: freezed == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantName: freezed == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      foodImage: freezed == foodImage
          ? _value.foodImage
          : foodImage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isVeg: freezed == isVeg
          ? _value.isVeg
          : isVeg // ignore: cast_nullable_to_non_nullable
              as bool?,
      offer: null == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as bool,
      offerName: freezed == offerName
          ? _value.offerName
          : offerName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodCopyWith<$Res> implements $FoodCopyWith<$Res> {
  factory _$$_FoodCopyWith(_$_Food value, $Res Function(_$_Food) then) =
      __$$_FoodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "restaurant_id") String? restaurantId,
      @JsonKey(name: "restaurant") String? restaurantName,
      String? name,
      String? detail,
      num? price,
      num? discount,
      num? discountedPrice,
      List<String>? foodImage,
      bool? isVeg,
      bool offer,
      @JsonKey(name: "offer_name") String? offerName});
}

/// @nodoc
class __$$_FoodCopyWithImpl<$Res> extends _$FoodCopyWithImpl<$Res, _$_Food>
    implements _$$_FoodCopyWith<$Res> {
  __$$_FoodCopyWithImpl(_$_Food _value, $Res Function(_$_Food) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? restaurantId = freezed,
    Object? restaurantName = freezed,
    Object? name = freezed,
    Object? detail = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? discountedPrice = freezed,
    Object? foodImage = freezed,
    Object? isVeg = freezed,
    Object? offer = null,
    Object? offerName = freezed,
  }) {
    return _then(_$_Food(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: freezed == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantName: freezed == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      foodImage: freezed == foodImage
          ? _value._foodImage
          : foodImage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isVeg: freezed == isVeg
          ? _value.isVeg
          : isVeg // ignore: cast_nullable_to_non_nullable
              as bool?,
      offer: null == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as bool,
      offerName: freezed == offerName
          ? _value.offerName
          : offerName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Food implements _Food {
  const _$_Food(
      {required this.id,
      @JsonKey(name: "restaurant_id") this.restaurantId,
      @JsonKey(name: "restaurant") this.restaurantName,
      this.name,
      this.detail,
      this.price,
      this.discount,
      this.discountedPrice,
      final List<String>? foodImage,
      this.isVeg,
      required this.offer,
      @JsonKey(name: "offer_name") this.offerName})
      : _foodImage = foodImage;

  factory _$_Food.fromJson(Map<String, dynamic> json) => _$$_FoodFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "restaurant_id")
  final String? restaurantId;
  @override
  @JsonKey(name: "restaurant")
  final String? restaurantName;
  @override
  final String? name;
  @override
  final String? detail;
  @override
  final num? price;
  @override
  final num? discount;
  @override
  final num? discountedPrice;
  final List<String>? _foodImage;
  @override
  List<String>? get foodImage {
    final value = _foodImage;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isVeg;
  @override
  final bool offer;
  @override
  @JsonKey(name: "offer_name")
  final String? offerName;

  @override
  String toString() {
    return 'Food(id: $id, restaurantId: $restaurantId, restaurantName: $restaurantName, name: $name, detail: $detail, price: $price, discount: $discount, discountedPrice: $discountedPrice, foodImage: $foodImage, isVeg: $isVeg, offer: $offer, offerName: $offerName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Food &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.restaurantName, restaurantName) ||
                other.restaurantName == restaurantName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountedPrice, discountedPrice) ||
                other.discountedPrice == discountedPrice) &&
            const DeepCollectionEquality()
                .equals(other._foodImage, _foodImage) &&
            (identical(other.isVeg, isVeg) || other.isVeg == isVeg) &&
            (identical(other.offer, offer) || other.offer == offer) &&
            (identical(other.offerName, offerName) ||
                other.offerName == offerName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      restaurantId,
      restaurantName,
      name,
      detail,
      price,
      discount,
      discountedPrice,
      const DeepCollectionEquality().hash(_foodImage),
      isVeg,
      offer,
      offerName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodCopyWith<_$_Food> get copyWith =>
      __$$_FoodCopyWithImpl<_$_Food>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodToJson(
      this,
    );
  }
}

abstract class _Food implements Food {
  const factory _Food(
      {required final String id,
      @JsonKey(name: "restaurant_id") final String? restaurantId,
      @JsonKey(name: "restaurant") final String? restaurantName,
      final String? name,
      final String? detail,
      final num? price,
      final num? discount,
      final num? discountedPrice,
      final List<String>? foodImage,
      final bool? isVeg,
      required final bool offer,
      @JsonKey(name: "offer_name") final String? offerName}) = _$_Food;

  factory _Food.fromJson(Map<String, dynamic> json) = _$_Food.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "restaurant_id")
  String? get restaurantId;
  @override
  @JsonKey(name: "restaurant")
  String? get restaurantName;
  @override
  String? get name;
  @override
  String? get detail;
  @override
  num? get price;
  @override
  num? get discount;
  @override
  num? get discountedPrice;
  @override
  List<String>? get foodImage;
  @override
  bool? get isVeg;
  @override
  bool get offer;
  @override
  @JsonKey(name: "offer_name")
  String? get offerName;
  @override
  @JsonKey(ignore: true)
  _$$_FoodCopyWith<_$_Food> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RestaurantDetailWithMenu {
  RestaurantDetail get detail => throw _privateConstructorUsedError;
  List<Menu> get menuList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantDetailWithMenuCopyWith<RestaurantDetailWithMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantDetailWithMenuCopyWith<$Res> {
  factory $RestaurantDetailWithMenuCopyWith(RestaurantDetailWithMenu value,
          $Res Function(RestaurantDetailWithMenu) then) =
      _$RestaurantDetailWithMenuCopyWithImpl<$Res, RestaurantDetailWithMenu>;
  @useResult
  $Res call({RestaurantDetail detail, List<Menu> menuList});

  $RestaurantDetailCopyWith<$Res> get detail;
}

/// @nodoc
class _$RestaurantDetailWithMenuCopyWithImpl<$Res,
        $Val extends RestaurantDetailWithMenu>
    implements $RestaurantDetailWithMenuCopyWith<$Res> {
  _$RestaurantDetailWithMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? menuList = null,
  }) {
    return _then(_value.copyWith(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as RestaurantDetail,
      menuList: null == menuList
          ? _value.menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<Menu>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantDetailCopyWith<$Res> get detail {
    return $RestaurantDetailCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RestaurantDetailWithMenuCopyWith<$Res>
    implements $RestaurantDetailWithMenuCopyWith<$Res> {
  factory _$$_RestaurantDetailWithMenuCopyWith(
          _$_RestaurantDetailWithMenu value,
          $Res Function(_$_RestaurantDetailWithMenu) then) =
      __$$_RestaurantDetailWithMenuCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RestaurantDetail detail, List<Menu> menuList});

  @override
  $RestaurantDetailCopyWith<$Res> get detail;
}

/// @nodoc
class __$$_RestaurantDetailWithMenuCopyWithImpl<$Res>
    extends _$RestaurantDetailWithMenuCopyWithImpl<$Res,
        _$_RestaurantDetailWithMenu>
    implements _$$_RestaurantDetailWithMenuCopyWith<$Res> {
  __$$_RestaurantDetailWithMenuCopyWithImpl(_$_RestaurantDetailWithMenu _value,
      $Res Function(_$_RestaurantDetailWithMenu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? menuList = null,
  }) {
    return _then(_$_RestaurantDetailWithMenu(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as RestaurantDetail,
      menuList: null == menuList
          ? _value._menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<Menu>,
    ));
  }
}

/// @nodoc

class _$_RestaurantDetailWithMenu implements _RestaurantDetailWithMenu {
  const _$_RestaurantDetailWithMenu(
      {required this.detail, final List<Menu> menuList = const []})
      : _menuList = menuList;

  @override
  final RestaurantDetail detail;
  final List<Menu> _menuList;
  @override
  @JsonKey()
  List<Menu> get menuList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuList);
  }

  @override
  String toString() {
    return 'RestaurantDetailWithMenu(detail: $detail, menuList: $menuList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantDetailWithMenu &&
            (identical(other.detail, detail) || other.detail == detail) &&
            const DeepCollectionEquality().equals(other._menuList, _menuList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, detail, const DeepCollectionEquality().hash(_menuList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantDetailWithMenuCopyWith<_$_RestaurantDetailWithMenu>
      get copyWith => __$$_RestaurantDetailWithMenuCopyWithImpl<
          _$_RestaurantDetailWithMenu>(this, _$identity);
}

abstract class _RestaurantDetailWithMenu implements RestaurantDetailWithMenu {
  const factory _RestaurantDetailWithMenu(
      {required final RestaurantDetail detail,
      final List<Menu> menuList}) = _$_RestaurantDetailWithMenu;

  @override
  RestaurantDetail get detail;
  @override
  List<Menu> get menuList;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantDetailWithMenuCopyWith<_$_RestaurantDetailWithMenu>
      get copyWith => throw _privateConstructorUsedError;
}
