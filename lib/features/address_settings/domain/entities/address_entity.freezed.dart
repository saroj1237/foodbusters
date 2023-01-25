// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String get id => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  AddrLocation get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call({String id, bool isSelected, String name, AddrLocation location});

  $AddrLocationCopyWith<$Res> get location;
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isSelected = null,
    Object? name = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as AddrLocation,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddrLocationCopyWith<$Res> get location {
    return $AddrLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isSelected, String name, AddrLocation location});

  @override
  $AddrLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_Address>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isSelected = null,
    Object? name = null,
    Object? location = null,
  }) {
    return _then(_$_Address(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as AddrLocation,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Address implements _Address {
  const _$_Address(
      {this.id = '',
      this.isSelected = false,
      required this.name,
      required this.location});

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$$_AddressFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final bool isSelected;
  @override
  final String name;
  @override
  final AddrLocation location;

  @override
  String toString() {
    return 'Address(id: $id, isSelected: $isSelected, name: $name, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, isSelected, name, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {final String id,
      final bool isSelected,
      required final String name,
      required final AddrLocation location}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  String get id;
  @override
  bool get isSelected;
  @override
  String get name;
  @override
  AddrLocation get location;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}

AddrLocation _$AddrLocationFromJson(Map<String, dynamic> json) {
  return _AddrLocation.fromJson(json);
}

/// @nodoc
mixin _$AddrLocation {
  @JsonKey(name: "lat")
  num get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "lng")
  num get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddrLocationCopyWith<AddrLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddrLocationCopyWith<$Res> {
  factory $AddrLocationCopyWith(
          AddrLocation value, $Res Function(AddrLocation) then) =
      _$AddrLocationCopyWithImpl<$Res, AddrLocation>;
  @useResult
  $Res call(
      {@JsonKey(name: "lat") num latitude,
      @JsonKey(name: "lng") num longitude});
}

/// @nodoc
class _$AddrLocationCopyWithImpl<$Res, $Val extends AddrLocation>
    implements $AddrLocationCopyWith<$Res> {
  _$AddrLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddrLocationCopyWith<$Res>
    implements $AddrLocationCopyWith<$Res> {
  factory _$$_AddrLocationCopyWith(
          _$_AddrLocation value, $Res Function(_$_AddrLocation) then) =
      __$$_AddrLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "lat") num latitude,
      @JsonKey(name: "lng") num longitude});
}

/// @nodoc
class __$$_AddrLocationCopyWithImpl<$Res>
    extends _$AddrLocationCopyWithImpl<$Res, _$_AddrLocation>
    implements _$$_AddrLocationCopyWith<$Res> {
  __$$_AddrLocationCopyWithImpl(
      _$_AddrLocation _value, $Res Function(_$_AddrLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_AddrLocation(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddrLocation implements _AddrLocation {
  const _$_AddrLocation(
      {@JsonKey(name: "lat") required this.latitude,
      @JsonKey(name: "lng") required this.longitude});

  factory _$_AddrLocation.fromJson(Map<String, dynamic> json) =>
      _$$_AddrLocationFromJson(json);

  @override
  @JsonKey(name: "lat")
  final num latitude;
  @override
  @JsonKey(name: "lng")
  final num longitude;

  @override
  String toString() {
    return 'AddrLocation(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddrLocation &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddrLocationCopyWith<_$_AddrLocation> get copyWith =>
      __$$_AddrLocationCopyWithImpl<_$_AddrLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddrLocationToJson(
      this,
    );
  }
}

abstract class _AddrLocation implements AddrLocation {
  const factory _AddrLocation(
      {@JsonKey(name: "lat") required final num latitude,
      @JsonKey(name: "lng") required final num longitude}) = _$_AddrLocation;

  factory _AddrLocation.fromJson(Map<String, dynamic> json) =
      _$_AddrLocation.fromJson;

  @override
  @JsonKey(name: "lat")
  num get latitude;
  @override
  @JsonKey(name: "lng")
  num get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_AddrLocationCopyWith<_$_AddrLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
