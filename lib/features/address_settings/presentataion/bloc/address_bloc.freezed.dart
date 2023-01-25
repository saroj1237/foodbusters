// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Address address) addAddress,
    required TResult Function() getAddress,
    required TResult Function(String addressId) deleteAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Address address)? addAddress,
    TResult? Function()? getAddress,
    TResult? Function(String addressId)? deleteAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Address address)? addAddress,
    TResult Function()? getAddress,
    TResult Function(String addressId)? deleteAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(GetAddress value) getAddress,
    required TResult Function(DeleteAddress value) deleteAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(GetAddress value)? getAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AddAddress value)? addAddress,
    TResult Function(GetAddress value)? getAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEventCopyWith<$Res> {
  factory $AddressEventCopyWith(
          AddressEvent value, $Res Function(AddressEvent) then) =
      _$AddressEventCopyWithImpl<$Res, AddressEvent>;
}

/// @nodoc
class _$AddressEventCopyWithImpl<$Res, $Val extends AddressEvent>
    implements $AddressEventCopyWith<$Res> {
  _$AddressEventCopyWithImpl(this._value, this._then);

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
    extends _$AddressEventCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AddressEvent.initial()';
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
    required TResult Function(Address address) addAddress,
    required TResult Function() getAddress,
    required TResult Function(String addressId) deleteAddress,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Address address)? addAddress,
    TResult? Function()? getAddress,
    TResult? Function(String addressId)? deleteAddress,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Address address)? addAddress,
    TResult Function()? getAddress,
    TResult Function(String addressId)? deleteAddress,
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
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(GetAddress value) getAddress,
    required TResult Function(DeleteAddress value) deleteAddress,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(GetAddress value)? getAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AddAddress value)? addAddress,
    TResult Function(GetAddress value)? getAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AddressEvent {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$AddAddressCopyWith<$Res> {
  factory _$$AddAddressCopyWith(
          _$AddAddress value, $Res Function(_$AddAddress) then) =
      __$$AddAddressCopyWithImpl<$Res>;
  @useResult
  $Res call({Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$AddAddressCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$AddAddress>
    implements _$$AddAddressCopyWith<$Res> {
  __$$AddAddressCopyWithImpl(
      _$AddAddress _value, $Res Function(_$AddAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$AddAddress(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc

class _$AddAddress implements AddAddress {
  const _$AddAddress({required this.address});

  @override
  final Address address;

  @override
  String toString() {
    return 'AddressEvent.addAddress(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAddress &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressCopyWith<_$AddAddress> get copyWith =>
      __$$AddAddressCopyWithImpl<_$AddAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Address address) addAddress,
    required TResult Function() getAddress,
    required TResult Function(String addressId) deleteAddress,
  }) {
    return addAddress(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Address address)? addAddress,
    TResult? Function()? getAddress,
    TResult? Function(String addressId)? deleteAddress,
  }) {
    return addAddress?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Address address)? addAddress,
    TResult Function()? getAddress,
    TResult Function(String addressId)? deleteAddress,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(GetAddress value) getAddress,
    required TResult Function(DeleteAddress value) deleteAddress,
  }) {
    return addAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(GetAddress value)? getAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
  }) {
    return addAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AddAddress value)? addAddress,
    TResult Function(GetAddress value)? getAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(this);
    }
    return orElse();
  }
}

abstract class AddAddress implements AddressEvent {
  const factory AddAddress({required final Address address}) = _$AddAddress;

  Address get address;
  @JsonKey(ignore: true)
  _$$AddAddressCopyWith<_$AddAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAddressCopyWith<$Res> {
  factory _$$GetAddressCopyWith(
          _$GetAddress value, $Res Function(_$GetAddress) then) =
      __$$GetAddressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAddressCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$GetAddress>
    implements _$$GetAddressCopyWith<$Res> {
  __$$GetAddressCopyWithImpl(
      _$GetAddress _value, $Res Function(_$GetAddress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAddress implements GetAddress {
  const _$GetAddress();

  @override
  String toString() {
    return 'AddressEvent.getAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Address address) addAddress,
    required TResult Function() getAddress,
    required TResult Function(String addressId) deleteAddress,
  }) {
    return getAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Address address)? addAddress,
    TResult? Function()? getAddress,
    TResult? Function(String addressId)? deleteAddress,
  }) {
    return getAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Address address)? addAddress,
    TResult Function()? getAddress,
    TResult Function(String addressId)? deleteAddress,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(GetAddress value) getAddress,
    required TResult Function(DeleteAddress value) deleteAddress,
  }) {
    return getAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(GetAddress value)? getAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
  }) {
    return getAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AddAddress value)? addAddress,
    TResult Function(GetAddress value)? getAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress(this);
    }
    return orElse();
  }
}

abstract class GetAddress implements AddressEvent {
  const factory GetAddress() = _$GetAddress;
}

/// @nodoc
abstract class _$$DeleteAddressCopyWith<$Res> {
  factory _$$DeleteAddressCopyWith(
          _$DeleteAddress value, $Res Function(_$DeleteAddress) then) =
      __$$DeleteAddressCopyWithImpl<$Res>;
  @useResult
  $Res call({String addressId});
}

/// @nodoc
class __$$DeleteAddressCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$DeleteAddress>
    implements _$$DeleteAddressCopyWith<$Res> {
  __$$DeleteAddressCopyWithImpl(
      _$DeleteAddress _value, $Res Function(_$DeleteAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressId = null,
  }) {
    return _then(_$DeleteAddress(
      null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteAddress implements DeleteAddress {
  const _$DeleteAddress(this.addressId);

  @override
  final String addressId;

  @override
  String toString() {
    return 'AddressEvent.deleteAddress(addressId: $addressId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAddress &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAddressCopyWith<_$DeleteAddress> get copyWith =>
      __$$DeleteAddressCopyWithImpl<_$DeleteAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Address address) addAddress,
    required TResult Function() getAddress,
    required TResult Function(String addressId) deleteAddress,
  }) {
    return deleteAddress(addressId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Address address)? addAddress,
    TResult? Function()? getAddress,
    TResult? Function(String addressId)? deleteAddress,
  }) {
    return deleteAddress?.call(addressId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Address address)? addAddress,
    TResult Function()? getAddress,
    TResult Function(String addressId)? deleteAddress,
    required TResult orElse(),
  }) {
    if (deleteAddress != null) {
      return deleteAddress(addressId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(GetAddress value) getAddress,
    required TResult Function(DeleteAddress value) deleteAddress,
  }) {
    return deleteAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(GetAddress value)? getAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
  }) {
    return deleteAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AddAddress value)? addAddress,
    TResult Function(GetAddress value)? getAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    required TResult orElse(),
  }) {
    if (deleteAddress != null) {
      return deleteAddress(this);
    }
    return orElse();
  }
}

abstract class DeleteAddress implements AddressEvent {
  const factory DeleteAddress(final String addressId) = _$DeleteAddress;

  String get addressId;
  @JsonKey(ignore: true)
  _$$DeleteAddressCopyWith<_$DeleteAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position, String? address) loaded,
    required TResult Function() addAddressSuccess,
    required TResult Function(String error) addAddressFailure,
    required TResult Function(List<Address> addressList) getAddressSuccess,
    required TResult Function(String error) getAddressFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position, String? address)? loaded,
    TResult? Function()? addAddressSuccess,
    TResult? Function(String error)? addAddressFailure,
    TResult? Function(List<Address> addressList)? getAddressSuccess,
    TResult? Function(String error)? getAddressFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position, String? address)? loaded,
    TResult Function()? addAddressSuccess,
    TResult Function(String error)? addAddressFailure,
    TResult Function(List<Address> addressList)? getAddressSuccess,
    TResult Function(String error)? getAddressFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddAddressSuccess value) addAddressSuccess,
    required TResult Function(AddAddressFailure value) addAddressFailure,
    required TResult Function(GetAddressSuccess value) getAddressSuccess,
    required TResult Function(GetAddressFailure value) getAddressFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(AddAddressSuccess value)? addAddressSuccess,
    TResult? Function(AddAddressFailure value)? addAddressFailure,
    TResult? Function(GetAddressSuccess value)? getAddressSuccess,
    TResult? Function(GetAddressFailure value)? getAddressFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddAddressSuccess value)? addAddressSuccess,
    TResult Function(AddAddressFailure value)? addAddressFailure,
    TResult Function(GetAddressSuccess value)? getAddressSuccess,
    TResult Function(GetAddressFailure value)? getAddressFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res, AddressState>;
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res, $Val extends AddressState>
    implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateCopyWith<$Res> {
  factory _$$InitialStateCopyWith(
          _$InitialState value, $Res Function(_$InitialState) then) =
      __$$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$InitialState>
    implements _$$InitialStateCopyWith<$Res> {
  __$$InitialStateCopyWithImpl(
      _$InitialState _value, $Res Function(_$InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialState implements InitialState {
  const _$InitialState();

  @override
  String toString() {
    return 'AddressState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position, String? address) loaded,
    required TResult Function() addAddressSuccess,
    required TResult Function(String error) addAddressFailure,
    required TResult Function(List<Address> addressList) getAddressSuccess,
    required TResult Function(String error) getAddressFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position, String? address)? loaded,
    TResult? Function()? addAddressSuccess,
    TResult? Function(String error)? addAddressFailure,
    TResult? Function(List<Address> addressList)? getAddressSuccess,
    TResult? Function(String error)? getAddressFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position, String? address)? loaded,
    TResult Function()? addAddressSuccess,
    TResult Function(String error)? addAddressFailure,
    TResult Function(List<Address> addressList)? getAddressSuccess,
    TResult Function(String error)? getAddressFailure,
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
    required TResult Function(InitialState value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddAddressSuccess value) addAddressSuccess,
    required TResult Function(AddAddressFailure value) addAddressFailure,
    required TResult Function(GetAddressSuccess value) getAddressSuccess,
    required TResult Function(GetAddressFailure value) getAddressFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(AddAddressSuccess value)? addAddressSuccess,
    TResult? Function(AddAddressFailure value)? addAddressFailure,
    TResult? Function(GetAddressSuccess value)? getAddressSuccess,
    TResult? Function(GetAddressFailure value)? getAddressFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddAddressSuccess value)? addAddressSuccess,
    TResult Function(AddAddressFailure value)? addAddressFailure,
    TResult Function(GetAddressSuccess value)? getAddressSuccess,
    TResult Function(GetAddressFailure value)? getAddressFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements AddressState {
  const factory InitialState() = _$InitialState;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'AddressState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position, String? address) loaded,
    required TResult Function() addAddressSuccess,
    required TResult Function(String error) addAddressFailure,
    required TResult Function(List<Address> addressList) getAddressSuccess,
    required TResult Function(String error) getAddressFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position, String? address)? loaded,
    TResult? Function()? addAddressSuccess,
    TResult? Function(String error)? addAddressFailure,
    TResult? Function(List<Address> addressList)? getAddressSuccess,
    TResult? Function(String error)? getAddressFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position, String? address)? loaded,
    TResult Function()? addAddressSuccess,
    TResult Function(String error)? addAddressFailure,
    TResult Function(List<Address> addressList)? getAddressSuccess,
    TResult Function(String error)? getAddressFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddAddressSuccess value) addAddressSuccess,
    required TResult Function(AddAddressFailure value) addAddressFailure,
    required TResult Function(GetAddressSuccess value) getAddressSuccess,
    required TResult Function(GetAddressFailure value) getAddressFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(AddAddressSuccess value)? addAddressSuccess,
    TResult? Function(AddAddressFailure value)? addAddressFailure,
    TResult? Function(GetAddressSuccess value)? getAddressSuccess,
    TResult? Function(GetAddressFailure value)? getAddressFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddAddressSuccess value)? addAddressSuccess,
    TResult Function(AddAddressFailure value)? addAddressFailure,
    TResult Function(GetAddressSuccess value)? getAddressSuccess,
    TResult Function(GetAddressFailure value)? getAddressFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AddressState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Position position, String? address});
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$Loaded>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? address = freezed,
  }) {
    return _then(_$Loaded(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded({required this.position, this.address});

  @override
  final Position position;
  @override
  final String? address;

  @override
  String toString() {
    return 'AddressState.loaded(position: $position, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position, String? address) loaded,
    required TResult Function() addAddressSuccess,
    required TResult Function(String error) addAddressFailure,
    required TResult Function(List<Address> addressList) getAddressSuccess,
    required TResult Function(String error) getAddressFailure,
  }) {
    return loaded(position, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position, String? address)? loaded,
    TResult? Function()? addAddressSuccess,
    TResult? Function(String error)? addAddressFailure,
    TResult? Function(List<Address> addressList)? getAddressSuccess,
    TResult? Function(String error)? getAddressFailure,
  }) {
    return loaded?.call(position, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position, String? address)? loaded,
    TResult Function()? addAddressSuccess,
    TResult Function(String error)? addAddressFailure,
    TResult Function(List<Address> addressList)? getAddressSuccess,
    TResult Function(String error)? getAddressFailure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(position, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddAddressSuccess value) addAddressSuccess,
    required TResult Function(AddAddressFailure value) addAddressFailure,
    required TResult Function(GetAddressSuccess value) getAddressSuccess,
    required TResult Function(GetAddressFailure value) getAddressFailure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(AddAddressSuccess value)? addAddressSuccess,
    TResult? Function(AddAddressFailure value)? addAddressFailure,
    TResult? Function(GetAddressSuccess value)? getAddressSuccess,
    TResult? Function(GetAddressFailure value)? getAddressFailure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddAddressSuccess value)? addAddressSuccess,
    TResult Function(AddAddressFailure value)? addAddressFailure,
    TResult Function(GetAddressSuccess value)? getAddressSuccess,
    TResult Function(GetAddressFailure value)? getAddressFailure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements AddressState {
  const factory Loaded(
      {required final Position position, final String? address}) = _$Loaded;

  Position get position;
  String? get address;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddAddressSuccessCopyWith<$Res> {
  factory _$$AddAddressSuccessCopyWith(
          _$AddAddressSuccess value, $Res Function(_$AddAddressSuccess) then) =
      __$$AddAddressSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddAddressSuccessCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$AddAddressSuccess>
    implements _$$AddAddressSuccessCopyWith<$Res> {
  __$$AddAddressSuccessCopyWithImpl(
      _$AddAddressSuccess _value, $Res Function(_$AddAddressSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddAddressSuccess implements AddAddressSuccess {
  const _$AddAddressSuccess();

  @override
  String toString() {
    return 'AddressState.addAddressSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddAddressSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position, String? address) loaded,
    required TResult Function() addAddressSuccess,
    required TResult Function(String error) addAddressFailure,
    required TResult Function(List<Address> addressList) getAddressSuccess,
    required TResult Function(String error) getAddressFailure,
  }) {
    return addAddressSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position, String? address)? loaded,
    TResult? Function()? addAddressSuccess,
    TResult? Function(String error)? addAddressFailure,
    TResult? Function(List<Address> addressList)? getAddressSuccess,
    TResult? Function(String error)? getAddressFailure,
  }) {
    return addAddressSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position, String? address)? loaded,
    TResult Function()? addAddressSuccess,
    TResult Function(String error)? addAddressFailure,
    TResult Function(List<Address> addressList)? getAddressSuccess,
    TResult Function(String error)? getAddressFailure,
    required TResult orElse(),
  }) {
    if (addAddressSuccess != null) {
      return addAddressSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddAddressSuccess value) addAddressSuccess,
    required TResult Function(AddAddressFailure value) addAddressFailure,
    required TResult Function(GetAddressSuccess value) getAddressSuccess,
    required TResult Function(GetAddressFailure value) getAddressFailure,
  }) {
    return addAddressSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(AddAddressSuccess value)? addAddressSuccess,
    TResult? Function(AddAddressFailure value)? addAddressFailure,
    TResult? Function(GetAddressSuccess value)? getAddressSuccess,
    TResult? Function(GetAddressFailure value)? getAddressFailure,
  }) {
    return addAddressSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddAddressSuccess value)? addAddressSuccess,
    TResult Function(AddAddressFailure value)? addAddressFailure,
    TResult Function(GetAddressSuccess value)? getAddressSuccess,
    TResult Function(GetAddressFailure value)? getAddressFailure,
    required TResult orElse(),
  }) {
    if (addAddressSuccess != null) {
      return addAddressSuccess(this);
    }
    return orElse();
  }
}

abstract class AddAddressSuccess implements AddressState {
  const factory AddAddressSuccess() = _$AddAddressSuccess;
}

/// @nodoc
abstract class _$$AddAddressFailureCopyWith<$Res> {
  factory _$$AddAddressFailureCopyWith(
          _$AddAddressFailure value, $Res Function(_$AddAddressFailure) then) =
      __$$AddAddressFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AddAddressFailureCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$AddAddressFailure>
    implements _$$AddAddressFailureCopyWith<$Res> {
  __$$AddAddressFailureCopyWithImpl(
      _$AddAddressFailure _value, $Res Function(_$AddAddressFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AddAddressFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddAddressFailure implements AddAddressFailure {
  const _$AddAddressFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AddressState.addAddressFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAddressFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressFailureCopyWith<_$AddAddressFailure> get copyWith =>
      __$$AddAddressFailureCopyWithImpl<_$AddAddressFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position, String? address) loaded,
    required TResult Function() addAddressSuccess,
    required TResult Function(String error) addAddressFailure,
    required TResult Function(List<Address> addressList) getAddressSuccess,
    required TResult Function(String error) getAddressFailure,
  }) {
    return addAddressFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position, String? address)? loaded,
    TResult? Function()? addAddressSuccess,
    TResult? Function(String error)? addAddressFailure,
    TResult? Function(List<Address> addressList)? getAddressSuccess,
    TResult? Function(String error)? getAddressFailure,
  }) {
    return addAddressFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position, String? address)? loaded,
    TResult Function()? addAddressSuccess,
    TResult Function(String error)? addAddressFailure,
    TResult Function(List<Address> addressList)? getAddressSuccess,
    TResult Function(String error)? getAddressFailure,
    required TResult orElse(),
  }) {
    if (addAddressFailure != null) {
      return addAddressFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddAddressSuccess value) addAddressSuccess,
    required TResult Function(AddAddressFailure value) addAddressFailure,
    required TResult Function(GetAddressSuccess value) getAddressSuccess,
    required TResult Function(GetAddressFailure value) getAddressFailure,
  }) {
    return addAddressFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(AddAddressSuccess value)? addAddressSuccess,
    TResult? Function(AddAddressFailure value)? addAddressFailure,
    TResult? Function(GetAddressSuccess value)? getAddressSuccess,
    TResult? Function(GetAddressFailure value)? getAddressFailure,
  }) {
    return addAddressFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddAddressSuccess value)? addAddressSuccess,
    TResult Function(AddAddressFailure value)? addAddressFailure,
    TResult Function(GetAddressSuccess value)? getAddressSuccess,
    TResult Function(GetAddressFailure value)? getAddressFailure,
    required TResult orElse(),
  }) {
    if (addAddressFailure != null) {
      return addAddressFailure(this);
    }
    return orElse();
  }
}

abstract class AddAddressFailure implements AddressState {
  const factory AddAddressFailure(final String error) = _$AddAddressFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$AddAddressFailureCopyWith<_$AddAddressFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAddressSuccessCopyWith<$Res> {
  factory _$$GetAddressSuccessCopyWith(
          _$GetAddressSuccess value, $Res Function(_$GetAddressSuccess) then) =
      __$$GetAddressSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Address> addressList});
}

/// @nodoc
class __$$GetAddressSuccessCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$GetAddressSuccess>
    implements _$$GetAddressSuccessCopyWith<$Res> {
  __$$GetAddressSuccessCopyWithImpl(
      _$GetAddressSuccess _value, $Res Function(_$GetAddressSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressList = null,
  }) {
    return _then(_$GetAddressSuccess(
      addressList: null == addressList
          ? _value._addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as List<Address>,
    ));
  }
}

/// @nodoc

class _$GetAddressSuccess implements GetAddressSuccess {
  _$GetAddressSuccess({required final List<Address> addressList})
      : _addressList = addressList;

  final List<Address> _addressList;
  @override
  List<Address> get addressList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressList);
  }

  @override
  String toString() {
    return 'AddressState.getAddressSuccess(addressList: $addressList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAddressSuccess &&
            const DeepCollectionEquality()
                .equals(other._addressList, _addressList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_addressList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAddressSuccessCopyWith<_$GetAddressSuccess> get copyWith =>
      __$$GetAddressSuccessCopyWithImpl<_$GetAddressSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position, String? address) loaded,
    required TResult Function() addAddressSuccess,
    required TResult Function(String error) addAddressFailure,
    required TResult Function(List<Address> addressList) getAddressSuccess,
    required TResult Function(String error) getAddressFailure,
  }) {
    return getAddressSuccess(addressList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position, String? address)? loaded,
    TResult? Function()? addAddressSuccess,
    TResult? Function(String error)? addAddressFailure,
    TResult? Function(List<Address> addressList)? getAddressSuccess,
    TResult? Function(String error)? getAddressFailure,
  }) {
    return getAddressSuccess?.call(addressList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position, String? address)? loaded,
    TResult Function()? addAddressSuccess,
    TResult Function(String error)? addAddressFailure,
    TResult Function(List<Address> addressList)? getAddressSuccess,
    TResult Function(String error)? getAddressFailure,
    required TResult orElse(),
  }) {
    if (getAddressSuccess != null) {
      return getAddressSuccess(addressList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddAddressSuccess value) addAddressSuccess,
    required TResult Function(AddAddressFailure value) addAddressFailure,
    required TResult Function(GetAddressSuccess value) getAddressSuccess,
    required TResult Function(GetAddressFailure value) getAddressFailure,
  }) {
    return getAddressSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(AddAddressSuccess value)? addAddressSuccess,
    TResult? Function(AddAddressFailure value)? addAddressFailure,
    TResult? Function(GetAddressSuccess value)? getAddressSuccess,
    TResult? Function(GetAddressFailure value)? getAddressFailure,
  }) {
    return getAddressSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddAddressSuccess value)? addAddressSuccess,
    TResult Function(AddAddressFailure value)? addAddressFailure,
    TResult Function(GetAddressSuccess value)? getAddressSuccess,
    TResult Function(GetAddressFailure value)? getAddressFailure,
    required TResult orElse(),
  }) {
    if (getAddressSuccess != null) {
      return getAddressSuccess(this);
    }
    return orElse();
  }
}

abstract class GetAddressSuccess implements AddressState {
  factory GetAddressSuccess({required final List<Address> addressList}) =
      _$GetAddressSuccess;

  List<Address> get addressList;
  @JsonKey(ignore: true)
  _$$GetAddressSuccessCopyWith<_$GetAddressSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAddressFailureCopyWith<$Res> {
  factory _$$GetAddressFailureCopyWith(
          _$GetAddressFailure value, $Res Function(_$GetAddressFailure) then) =
      __$$GetAddressFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetAddressFailureCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$GetAddressFailure>
    implements _$$GetAddressFailureCopyWith<$Res> {
  __$$GetAddressFailureCopyWithImpl(
      _$GetAddressFailure _value, $Res Function(_$GetAddressFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetAddressFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAddressFailure implements GetAddressFailure {
  const _$GetAddressFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AddressState.getAddressFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAddressFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAddressFailureCopyWith<_$GetAddressFailure> get copyWith =>
      __$$GetAddressFailureCopyWithImpl<_$GetAddressFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position, String? address) loaded,
    required TResult Function() addAddressSuccess,
    required TResult Function(String error) addAddressFailure,
    required TResult Function(List<Address> addressList) getAddressSuccess,
    required TResult Function(String error) getAddressFailure,
  }) {
    return getAddressFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position, String? address)? loaded,
    TResult? Function()? addAddressSuccess,
    TResult? Function(String error)? addAddressFailure,
    TResult? Function(List<Address> addressList)? getAddressSuccess,
    TResult? Function(String error)? getAddressFailure,
  }) {
    return getAddressFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position, String? address)? loaded,
    TResult Function()? addAddressSuccess,
    TResult Function(String error)? addAddressFailure,
    TResult Function(List<Address> addressList)? getAddressSuccess,
    TResult Function(String error)? getAddressFailure,
    required TResult orElse(),
  }) {
    if (getAddressFailure != null) {
      return getAddressFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddAddressSuccess value) addAddressSuccess,
    required TResult Function(AddAddressFailure value) addAddressFailure,
    required TResult Function(GetAddressSuccess value) getAddressSuccess,
    required TResult Function(GetAddressFailure value) getAddressFailure,
  }) {
    return getAddressFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(AddAddressSuccess value)? addAddressSuccess,
    TResult? Function(AddAddressFailure value)? addAddressFailure,
    TResult? Function(GetAddressSuccess value)? getAddressSuccess,
    TResult? Function(GetAddressFailure value)? getAddressFailure,
  }) {
    return getAddressFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddAddressSuccess value)? addAddressSuccess,
    TResult Function(AddAddressFailure value)? addAddressFailure,
    TResult Function(GetAddressSuccess value)? getAddressSuccess,
    TResult Function(GetAddressFailure value)? getAddressFailure,
    required TResult orElse(),
  }) {
    if (getAddressFailure != null) {
      return getAddressFailure(this);
    }
    return orElse();
  }
}

abstract class GetAddressFailure implements AddressState {
  const factory GetAddressFailure(final String error) = _$GetAddressFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$GetAddressFailureCopyWith<_$GetAddressFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
