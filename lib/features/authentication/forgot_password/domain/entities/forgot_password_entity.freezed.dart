// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForgotPasswordRequest _$ForgotPasswordRequestFromJson(
    Map<String, dynamic> json) {
  return _ForgotPasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordRequest {
  @JsonKey(name: 'phone')
  String? get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'otp')
  int? get otpCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordRequestCopyWith<ForgotPasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordRequestCopyWith<$Res> {
  factory $ForgotPasswordRequestCopyWith(ForgotPasswordRequest value,
          $Res Function(ForgotPasswordRequest) then) =
      _$ForgotPasswordRequestCopyWithImpl<$Res, ForgotPasswordRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'phone') String? mobileNumber,
      @JsonKey(name: 'otp') int? otpCode,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$ForgotPasswordRequestCopyWithImpl<$Res,
        $Val extends ForgotPasswordRequest>
    implements $ForgotPasswordRequestCopyWith<$Res> {
  _$ForgotPasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = freezed,
    Object? otpCode = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      otpCode: freezed == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as int?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordRequestCopyWith<$Res>
    implements $ForgotPasswordRequestCopyWith<$Res> {
  factory _$$_ForgotPasswordRequestCopyWith(_$_ForgotPasswordRequest value,
          $Res Function(_$_ForgotPasswordRequest) then) =
      __$$_ForgotPasswordRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'phone') String? mobileNumber,
      @JsonKey(name: 'otp') int? otpCode,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$$_ForgotPasswordRequestCopyWithImpl<$Res>
    extends _$ForgotPasswordRequestCopyWithImpl<$Res, _$_ForgotPasswordRequest>
    implements _$$_ForgotPasswordRequestCopyWith<$Res> {
  __$$_ForgotPasswordRequestCopyWithImpl(_$_ForgotPasswordRequest _value,
      $Res Function(_$_ForgotPasswordRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = freezed,
    Object? otpCode = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_ForgotPasswordRequest(
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      otpCode: freezed == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as int?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForgotPasswordRequest implements _ForgotPasswordRequest {
  const _$_ForgotPasswordRequest(
      {@JsonKey(name: 'phone') this.mobileNumber,
      @JsonKey(name: 'otp') this.otpCode,
      @JsonKey(name: 'password') this.password});

  factory _$_ForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ForgotPasswordRequestFromJson(json);

  @override
  @JsonKey(name: 'phone')
  final String? mobileNumber;
  @override
  @JsonKey(name: 'otp')
  final int? otpCode;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'ForgotPasswordRequest(mobileNumber: $mobileNumber, otpCode: $otpCode, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordRequest &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber, otpCode, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotPasswordRequestCopyWith<_$_ForgotPasswordRequest> get copyWith =>
      __$$_ForgotPasswordRequestCopyWithImpl<_$_ForgotPasswordRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForgotPasswordRequestToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordRequest implements ForgotPasswordRequest {
  const factory _ForgotPasswordRequest(
          {@JsonKey(name: 'phone') final String? mobileNumber,
          @JsonKey(name: 'otp') final int? otpCode,
          @JsonKey(name: 'password') final String? password}) =
      _$_ForgotPasswordRequest;

  factory _ForgotPasswordRequest.fromJson(Map<String, dynamic> json) =
      _$_ForgotPasswordRequest.fromJson;

  @override
  @JsonKey(name: 'phone')
  String? get mobileNumber;
  @override
  @JsonKey(name: 'otp')
  int? get otpCode;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordRequestCopyWith<_$_ForgotPasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
