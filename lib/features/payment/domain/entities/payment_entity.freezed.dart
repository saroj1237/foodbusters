// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentReq {
  String get oid => throw _privateConstructorUsedError;
  String get paymentOption => throw _privateConstructorUsedError;
  String? get referenceId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentReqCopyWith<PaymentReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentReqCopyWith<$Res> {
  factory $PaymentReqCopyWith(
          PaymentReq value, $Res Function(PaymentReq) then) =
      _$PaymentReqCopyWithImpl<$Res, PaymentReq>;
  @useResult
  $Res call({String oid, String paymentOption, String? referenceId});
}

/// @nodoc
class _$PaymentReqCopyWithImpl<$Res, $Val extends PaymentReq>
    implements $PaymentReqCopyWith<$Res> {
  _$PaymentReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oid = null,
    Object? paymentOption = null,
    Object? referenceId = freezed,
  }) {
    return _then(_value.copyWith(
      oid: null == oid
          ? _value.oid
          : oid // ignore: cast_nullable_to_non_nullable
              as String,
      paymentOption: null == paymentOption
          ? _value.paymentOption
          : paymentOption // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentReqCopyWith<$Res>
    implements $PaymentReqCopyWith<$Res> {
  factory _$$_PaymentReqCopyWith(
          _$_PaymentReq value, $Res Function(_$_PaymentReq) then) =
      __$$_PaymentReqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String oid, String paymentOption, String? referenceId});
}

/// @nodoc
class __$$_PaymentReqCopyWithImpl<$Res>
    extends _$PaymentReqCopyWithImpl<$Res, _$_PaymentReq>
    implements _$$_PaymentReqCopyWith<$Res> {
  __$$_PaymentReqCopyWithImpl(
      _$_PaymentReq _value, $Res Function(_$_PaymentReq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oid = null,
    Object? paymentOption = null,
    Object? referenceId = freezed,
  }) {
    return _then(_$_PaymentReq(
      oid: null == oid
          ? _value.oid
          : oid // ignore: cast_nullable_to_non_nullable
              as String,
      paymentOption: null == paymentOption
          ? _value.paymentOption
          : paymentOption // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PaymentReq implements _PaymentReq {
  const _$_PaymentReq(
      {required this.oid, required this.paymentOption, this.referenceId});

  @override
  final String oid;
  @override
  final String paymentOption;
  @override
  final String? referenceId;

  @override
  String toString() {
    return 'PaymentReq(oid: $oid, paymentOption: $paymentOption, referenceId: $referenceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentReq &&
            (identical(other.oid, oid) || other.oid == oid) &&
            (identical(other.paymentOption, paymentOption) ||
                other.paymentOption == paymentOption) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oid, paymentOption, referenceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentReqCopyWith<_$_PaymentReq> get copyWith =>
      __$$_PaymentReqCopyWithImpl<_$_PaymentReq>(this, _$identity);
}

abstract class _PaymentReq implements PaymentReq {
  const factory _PaymentReq(
      {required final String oid,
      required final String paymentOption,
      final String? referenceId}) = _$_PaymentReq;

  @override
  String get oid;
  @override
  String get paymentOption;
  @override
  String? get referenceId;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentReqCopyWith<_$_PaymentReq> get copyWith =>
      throw _privateConstructorUsedError;
}
