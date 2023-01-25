// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber) getForgotPasswordOtp,
    required TResult Function(ForgotPasswordRequest requestModel) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber)? getForgotPasswordOtp,
    TResult? Function(ForgotPasswordRequest requestModel)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber)? getForgotPasswordOtp,
    TResult Function(ForgotPasswordRequest requestModel)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetForgotPasswordOtp value) getForgotPasswordOtp,
    required TResult Function(ResetPassword value) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetForgotPasswordOtp value)? getForgotPasswordOtp,
    TResult? Function(ResetPassword value)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetForgotPasswordOtp value)? getForgotPasswordOtp,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res, ForgotPasswordEvent>;
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res, $Val extends ForgotPasswordEvent>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetForgotPasswordOtpCopyWith<$Res> {
  factory _$$GetForgotPasswordOtpCopyWith(_$GetForgotPasswordOtp value,
          $Res Function(_$GetForgotPasswordOtp) then) =
      __$$GetForgotPasswordOtpCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobileNumber});
}

/// @nodoc
class __$$GetForgotPasswordOtpCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$GetForgotPasswordOtp>
    implements _$$GetForgotPasswordOtpCopyWith<$Res> {
  __$$GetForgotPasswordOtpCopyWithImpl(_$GetForgotPasswordOtp _value,
      $Res Function(_$GetForgotPasswordOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = null,
  }) {
    return _then(_$GetForgotPasswordOtp(
      null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetForgotPasswordOtp implements GetForgotPasswordOtp {
  const _$GetForgotPasswordOtp(this.mobileNumber);

  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'ForgotPasswordEvent.getForgotPasswordOtp(mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetForgotPasswordOtp &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetForgotPasswordOtpCopyWith<_$GetForgotPasswordOtp> get copyWith =>
      __$$GetForgotPasswordOtpCopyWithImpl<_$GetForgotPasswordOtp>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber) getForgotPasswordOtp,
    required TResult Function(ForgotPasswordRequest requestModel) resetPassword,
  }) {
    return getForgotPasswordOtp(mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber)? getForgotPasswordOtp,
    TResult? Function(ForgotPasswordRequest requestModel)? resetPassword,
  }) {
    return getForgotPasswordOtp?.call(mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber)? getForgotPasswordOtp,
    TResult Function(ForgotPasswordRequest requestModel)? resetPassword,
    required TResult orElse(),
  }) {
    if (getForgotPasswordOtp != null) {
      return getForgotPasswordOtp(mobileNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetForgotPasswordOtp value) getForgotPasswordOtp,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return getForgotPasswordOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetForgotPasswordOtp value)? getForgotPasswordOtp,
    TResult? Function(ResetPassword value)? resetPassword,
  }) {
    return getForgotPasswordOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetForgotPasswordOtp value)? getForgotPasswordOtp,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (getForgotPasswordOtp != null) {
      return getForgotPasswordOtp(this);
    }
    return orElse();
  }
}

abstract class GetForgotPasswordOtp implements ForgotPasswordEvent {
  const factory GetForgotPasswordOtp(final String mobileNumber) =
      _$GetForgotPasswordOtp;

  String get mobileNumber;
  @JsonKey(ignore: true)
  _$$GetForgotPasswordOtpCopyWith<_$GetForgotPasswordOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordCopyWith<$Res> {
  factory _$$ResetPasswordCopyWith(
          _$ResetPassword value, $Res Function(_$ResetPassword) then) =
      __$$ResetPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({ForgotPasswordRequest requestModel});

  $ForgotPasswordRequestCopyWith<$Res> get requestModel;
}

/// @nodoc
class __$$ResetPasswordCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$ResetPassword>
    implements _$$ResetPasswordCopyWith<$Res> {
  __$$ResetPasswordCopyWithImpl(
      _$ResetPassword _value, $Res Function(_$ResetPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestModel = null,
  }) {
    return _then(_$ResetPassword(
      null == requestModel
          ? _value.requestModel
          : requestModel // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ForgotPasswordRequestCopyWith<$Res> get requestModel {
    return $ForgotPasswordRequestCopyWith<$Res>(_value.requestModel, (value) {
      return _then(_value.copyWith(requestModel: value));
    });
  }
}

/// @nodoc

class _$ResetPassword implements ResetPassword {
  const _$ResetPassword(this.requestModel);

  @override
  final ForgotPasswordRequest requestModel;

  @override
  String toString() {
    return 'ForgotPasswordEvent.resetPassword(requestModel: $requestModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPassword &&
            (identical(other.requestModel, requestModel) ||
                other.requestModel == requestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordCopyWith<_$ResetPassword> get copyWith =>
      __$$ResetPasswordCopyWithImpl<_$ResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber) getForgotPasswordOtp,
    required TResult Function(ForgotPasswordRequest requestModel) resetPassword,
  }) {
    return resetPassword(requestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber)? getForgotPasswordOtp,
    TResult? Function(ForgotPasswordRequest requestModel)? resetPassword,
  }) {
    return resetPassword?.call(requestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber)? getForgotPasswordOtp,
    TResult Function(ForgotPasswordRequest requestModel)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(requestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetForgotPasswordOtp value) getForgotPasswordOtp,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetForgotPasswordOtp value)? getForgotPasswordOtp,
    TResult? Function(ResetPassword value)? resetPassword,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetForgotPasswordOtp value)? getForgotPasswordOtp,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class ResetPassword implements ForgotPasswordEvent {
  const factory ResetPassword(final ForgotPasswordRequest requestModel) =
      _$ResetPassword;

  ForgotPasswordRequest get requestModel;
  @JsonKey(ignore: true)
  _$$ResetPasswordCopyWith<_$ResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() getForgotPasswordOtpSuccess,
    required TResult Function(String error) getForgotPasswordOtpFailure,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(String error) resetPasswordFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getForgotPasswordOtpSuccess,
    TResult? Function(String error)? getForgotPasswordOtpFailure,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(String error)? resetPasswordFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getForgotPasswordOtpSuccess,
    TResult Function(String error)? getForgotPasswordOtpFailure,
    TResult Function()? resetPasswordSuccess,
    TResult Function(String error)? resetPasswordFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetForgotPasswordOtpSuccess value)
        getForgotPasswordOtpSuccess,
    required TResult Function(GetForgotPasswordOtpFailure value)
        getForgotPasswordOtpFailure,
    required TResult Function(ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(ResetPasswordFailure value) resetPasswordFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetForgotPasswordOtpSuccess value)?
        getForgotPasswordOtpSuccess,
    TResult? Function(GetForgotPasswordOtpFailure value)?
        getForgotPasswordOtpFailure,
    TResult? Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(ResetPasswordFailure value)? resetPasswordFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetForgotPasswordOtpSuccess value)?
        getForgotPasswordOtpSuccess,
    TResult Function(GetForgotPasswordOtpFailure value)?
        getForgotPasswordOtpFailure,
    TResult Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(ResetPasswordFailure value)? resetPasswordFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

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
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ForgotPasswordState.initial()';
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
    required TResult Function() loading,
    required TResult Function() getForgotPasswordOtpSuccess,
    required TResult Function(String error) getForgotPasswordOtpFailure,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(String error) resetPasswordFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getForgotPasswordOtpSuccess,
    TResult? Function(String error)? getForgotPasswordOtpFailure,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(String error)? resetPasswordFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getForgotPasswordOtpSuccess,
    TResult Function(String error)? getForgotPasswordOtpFailure,
    TResult Function()? resetPasswordSuccess,
    TResult Function(String error)? resetPasswordFailure,
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
    required TResult Function(Loading value) loading,
    required TResult Function(GetForgotPasswordOtpSuccess value)
        getForgotPasswordOtpSuccess,
    required TResult Function(GetForgotPasswordOtpFailure value)
        getForgotPasswordOtpFailure,
    required TResult Function(ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(ResetPasswordFailure value) resetPasswordFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetForgotPasswordOtpSuccess value)?
        getForgotPasswordOtpSuccess,
    TResult? Function(GetForgotPasswordOtpFailure value)?
        getForgotPasswordOtpFailure,
    TResult? Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(ResetPasswordFailure value)? resetPasswordFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetForgotPasswordOtpSuccess value)?
        getForgotPasswordOtpSuccess,
    TResult Function(GetForgotPasswordOtpFailure value)?
        getForgotPasswordOtpFailure,
    TResult Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(ResetPasswordFailure value)? resetPasswordFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ForgotPasswordState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'ForgotPasswordState.loading()';
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
    required TResult Function() getForgotPasswordOtpSuccess,
    required TResult Function(String error) getForgotPasswordOtpFailure,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(String error) resetPasswordFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getForgotPasswordOtpSuccess,
    TResult? Function(String error)? getForgotPasswordOtpFailure,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(String error)? resetPasswordFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getForgotPasswordOtpSuccess,
    TResult Function(String error)? getForgotPasswordOtpFailure,
    TResult Function()? resetPasswordSuccess,
    TResult Function(String error)? resetPasswordFailure,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetForgotPasswordOtpSuccess value)
        getForgotPasswordOtpSuccess,
    required TResult Function(GetForgotPasswordOtpFailure value)
        getForgotPasswordOtpFailure,
    required TResult Function(ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(ResetPasswordFailure value) resetPasswordFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetForgotPasswordOtpSuccess value)?
        getForgotPasswordOtpSuccess,
    TResult? Function(GetForgotPasswordOtpFailure value)?
        getForgotPasswordOtpFailure,
    TResult? Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(ResetPasswordFailure value)? resetPasswordFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetForgotPasswordOtpSuccess value)?
        getForgotPasswordOtpSuccess,
    TResult Function(GetForgotPasswordOtpFailure value)?
        getForgotPasswordOtpFailure,
    TResult Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(ResetPasswordFailure value)? resetPasswordFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ForgotPasswordState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$GetForgotPasswordOtpSuccessCopyWith<$Res> {
  factory _$$GetForgotPasswordOtpSuccessCopyWith(
          _$GetForgotPasswordOtpSuccess value,
          $Res Function(_$GetForgotPasswordOtpSuccess) then) =
      __$$GetForgotPasswordOtpSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetForgotPasswordOtpSuccessCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res,
        _$GetForgotPasswordOtpSuccess>
    implements _$$GetForgotPasswordOtpSuccessCopyWith<$Res> {
  __$$GetForgotPasswordOtpSuccessCopyWithImpl(
      _$GetForgotPasswordOtpSuccess _value,
      $Res Function(_$GetForgotPasswordOtpSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetForgotPasswordOtpSuccess implements GetForgotPasswordOtpSuccess {
  const _$GetForgotPasswordOtpSuccess();

  @override
  String toString() {
    return 'ForgotPasswordState.getForgotPasswordOtpSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetForgotPasswordOtpSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() getForgotPasswordOtpSuccess,
    required TResult Function(String error) getForgotPasswordOtpFailure,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(String error) resetPasswordFailure,
  }) {
    return getForgotPasswordOtpSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getForgotPasswordOtpSuccess,
    TResult? Function(String error)? getForgotPasswordOtpFailure,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(String error)? resetPasswordFailure,
  }) {
    return getForgotPasswordOtpSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getForgotPasswordOtpSuccess,
    TResult Function(String error)? getForgotPasswordOtpFailure,
    TResult Function()? resetPasswordSuccess,
    TResult Function(String error)? resetPasswordFailure,
    required TResult orElse(),
  }) {
    if (getForgotPasswordOtpSuccess != null) {
      return getForgotPasswordOtpSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetForgotPasswordOtpSuccess value)
        getForgotPasswordOtpSuccess,
    required TResult Function(GetForgotPasswordOtpFailure value)
        getForgotPasswordOtpFailure,
    required TResult Function(ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(ResetPasswordFailure value) resetPasswordFailure,
  }) {
    return getForgotPasswordOtpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetForgotPasswordOtpSuccess value)?
        getForgotPasswordOtpSuccess,
    TResult? Function(GetForgotPasswordOtpFailure value)?
        getForgotPasswordOtpFailure,
    TResult? Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(ResetPasswordFailure value)? resetPasswordFailure,
  }) {
    return getForgotPasswordOtpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetForgotPasswordOtpSuccess value)?
        getForgotPasswordOtpSuccess,
    TResult Function(GetForgotPasswordOtpFailure value)?
        getForgotPasswordOtpFailure,
    TResult Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(ResetPasswordFailure value)? resetPasswordFailure,
    required TResult orElse(),
  }) {
    if (getForgotPasswordOtpSuccess != null) {
      return getForgotPasswordOtpSuccess(this);
    }
    return orElse();
  }
}

abstract class GetForgotPasswordOtpSuccess implements ForgotPasswordState {
  const factory GetForgotPasswordOtpSuccess() = _$GetForgotPasswordOtpSuccess;
}

/// @nodoc
abstract class _$$GetForgotPasswordOtpFailureCopyWith<$Res> {
  factory _$$GetForgotPasswordOtpFailureCopyWith(
          _$GetForgotPasswordOtpFailure value,
          $Res Function(_$GetForgotPasswordOtpFailure) then) =
      __$$GetForgotPasswordOtpFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetForgotPasswordOtpFailureCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res,
        _$GetForgotPasswordOtpFailure>
    implements _$$GetForgotPasswordOtpFailureCopyWith<$Res> {
  __$$GetForgotPasswordOtpFailureCopyWithImpl(
      _$GetForgotPasswordOtpFailure _value,
      $Res Function(_$GetForgotPasswordOtpFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetForgotPasswordOtpFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetForgotPasswordOtpFailure implements GetForgotPasswordOtpFailure {
  const _$GetForgotPasswordOtpFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ForgotPasswordState.getForgotPasswordOtpFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetForgotPasswordOtpFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetForgotPasswordOtpFailureCopyWith<_$GetForgotPasswordOtpFailure>
      get copyWith => __$$GetForgotPasswordOtpFailureCopyWithImpl<
          _$GetForgotPasswordOtpFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() getForgotPasswordOtpSuccess,
    required TResult Function(String error) getForgotPasswordOtpFailure,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(String error) resetPasswordFailure,
  }) {
    return getForgotPasswordOtpFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getForgotPasswordOtpSuccess,
    TResult? Function(String error)? getForgotPasswordOtpFailure,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(String error)? resetPasswordFailure,
  }) {
    return getForgotPasswordOtpFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getForgotPasswordOtpSuccess,
    TResult Function(String error)? getForgotPasswordOtpFailure,
    TResult Function()? resetPasswordSuccess,
    TResult Function(String error)? resetPasswordFailure,
    required TResult orElse(),
  }) {
    if (getForgotPasswordOtpFailure != null) {
      return getForgotPasswordOtpFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetForgotPasswordOtpSuccess value)
        getForgotPasswordOtpSuccess,
    required TResult Function(GetForgotPasswordOtpFailure value)
        getForgotPasswordOtpFailure,
    required TResult Function(ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(ResetPasswordFailure value) resetPasswordFailure,
  }) {
    return getForgotPasswordOtpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetForgotPasswordOtpSuccess value)?
        getForgotPasswordOtpSuccess,
    TResult? Function(GetForgotPasswordOtpFailure value)?
        getForgotPasswordOtpFailure,
    TResult? Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(ResetPasswordFailure value)? resetPasswordFailure,
  }) {
    return getForgotPasswordOtpFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetForgotPasswordOtpSuccess value)?
        getForgotPasswordOtpSuccess,
    TResult Function(GetForgotPasswordOtpFailure value)?
        getForgotPasswordOtpFailure,
    TResult Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(ResetPasswordFailure value)? resetPasswordFailure,
    required TResult orElse(),
  }) {
    if (getForgotPasswordOtpFailure != null) {
      return getForgotPasswordOtpFailure(this);
    }
    return orElse();
  }
}

abstract class GetForgotPasswordOtpFailure implements ForgotPasswordState {
  const factory GetForgotPasswordOtpFailure(final String error) =
      _$GetForgotPasswordOtpFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$GetForgotPasswordOtpFailureCopyWith<_$GetForgotPasswordOtpFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordSuccessCopyWith<$Res> {
  factory _$$ResetPasswordSuccessCopyWith(_$ResetPasswordSuccess value,
          $Res Function(_$ResetPasswordSuccess) then) =
      __$$ResetPasswordSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetPasswordSuccessCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ResetPasswordSuccess>
    implements _$$ResetPasswordSuccessCopyWith<$Res> {
  __$$ResetPasswordSuccessCopyWithImpl(_$ResetPasswordSuccess _value,
      $Res Function(_$ResetPasswordSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetPasswordSuccess implements ResetPasswordSuccess {
  const _$ResetPasswordSuccess();

  @override
  String toString() {
    return 'ForgotPasswordState.resetPasswordSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetPasswordSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() getForgotPasswordOtpSuccess,
    required TResult Function(String error) getForgotPasswordOtpFailure,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(String error) resetPasswordFailure,
  }) {
    return resetPasswordSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getForgotPasswordOtpSuccess,
    TResult? Function(String error)? getForgotPasswordOtpFailure,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(String error)? resetPasswordFailure,
  }) {
    return resetPasswordSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getForgotPasswordOtpSuccess,
    TResult Function(String error)? getForgotPasswordOtpFailure,
    TResult Function()? resetPasswordSuccess,
    TResult Function(String error)? resetPasswordFailure,
    required TResult orElse(),
  }) {
    if (resetPasswordSuccess != null) {
      return resetPasswordSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetForgotPasswordOtpSuccess value)
        getForgotPasswordOtpSuccess,
    required TResult Function(GetForgotPasswordOtpFailure value)
        getForgotPasswordOtpFailure,
    required TResult Function(ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(ResetPasswordFailure value) resetPasswordFailure,
  }) {
    return resetPasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetForgotPasswordOtpSuccess value)?
        getForgotPasswordOtpSuccess,
    TResult? Function(GetForgotPasswordOtpFailure value)?
        getForgotPasswordOtpFailure,
    TResult? Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(ResetPasswordFailure value)? resetPasswordFailure,
  }) {
    return resetPasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetForgotPasswordOtpSuccess value)?
        getForgotPasswordOtpSuccess,
    TResult Function(GetForgotPasswordOtpFailure value)?
        getForgotPasswordOtpFailure,
    TResult Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(ResetPasswordFailure value)? resetPasswordFailure,
    required TResult orElse(),
  }) {
    if (resetPasswordSuccess != null) {
      return resetPasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordSuccess implements ForgotPasswordState {
  const factory ResetPasswordSuccess() = _$ResetPasswordSuccess;
}

/// @nodoc
abstract class _$$ResetPasswordFailureCopyWith<$Res> {
  factory _$$ResetPasswordFailureCopyWith(_$ResetPasswordFailure value,
          $Res Function(_$ResetPasswordFailure) then) =
      __$$ResetPasswordFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ResetPasswordFailureCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ResetPasswordFailure>
    implements _$$ResetPasswordFailureCopyWith<$Res> {
  __$$ResetPasswordFailureCopyWithImpl(_$ResetPasswordFailure _value,
      $Res Function(_$ResetPasswordFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ResetPasswordFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordFailure implements ResetPasswordFailure {
  const _$ResetPasswordFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ForgotPasswordState.resetPasswordFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordFailureCopyWith<_$ResetPasswordFailure> get copyWith =>
      __$$ResetPasswordFailureCopyWithImpl<_$ResetPasswordFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() getForgotPasswordOtpSuccess,
    required TResult Function(String error) getForgotPasswordOtpFailure,
    required TResult Function() resetPasswordSuccess,
    required TResult Function(String error) resetPasswordFailure,
  }) {
    return resetPasswordFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? getForgotPasswordOtpSuccess,
    TResult? Function(String error)? getForgotPasswordOtpFailure,
    TResult? Function()? resetPasswordSuccess,
    TResult? Function(String error)? resetPasswordFailure,
  }) {
    return resetPasswordFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? getForgotPasswordOtpSuccess,
    TResult Function(String error)? getForgotPasswordOtpFailure,
    TResult Function()? resetPasswordSuccess,
    TResult Function(String error)? resetPasswordFailure,
    required TResult orElse(),
  }) {
    if (resetPasswordFailure != null) {
      return resetPasswordFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(GetForgotPasswordOtpSuccess value)
        getForgotPasswordOtpSuccess,
    required TResult Function(GetForgotPasswordOtpFailure value)
        getForgotPasswordOtpFailure,
    required TResult Function(ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(ResetPasswordFailure value) resetPasswordFailure,
  }) {
    return resetPasswordFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(GetForgotPasswordOtpSuccess value)?
        getForgotPasswordOtpSuccess,
    TResult? Function(GetForgotPasswordOtpFailure value)?
        getForgotPasswordOtpFailure,
    TResult? Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(ResetPasswordFailure value)? resetPasswordFailure,
  }) {
    return resetPasswordFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(GetForgotPasswordOtpSuccess value)?
        getForgotPasswordOtpSuccess,
    TResult Function(GetForgotPasswordOtpFailure value)?
        getForgotPasswordOtpFailure,
    TResult Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(ResetPasswordFailure value)? resetPasswordFailure,
    required TResult orElse(),
  }) {
    if (resetPasswordFailure != null) {
      return resetPasswordFailure(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordFailure implements ForgotPasswordState {
  const factory ResetPasswordFailure(final String error) =
      _$ResetPasswordFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$ResetPasswordFailureCopyWith<_$ResetPasswordFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
