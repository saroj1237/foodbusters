// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupEvent {
  SignUpRequest get sighnupRequest => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpRequest sighnupRequest) getSignupOtp,
    required TResult Function(SignUpRequest sighnupRequest) verifySignupOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpRequest sighnupRequest)? getSignupOtp,
    TResult? Function(SignUpRequest sighnupRequest)? verifySignupOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpRequest sighnupRequest)? getSignupOtp,
    TResult Function(SignUpRequest sighnupRequest)? verifySignupOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSignupOtp value) getSignupOtp,
    required TResult Function(VerifySignupOtp value) verifySignupOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSignupOtp value)? getSignupOtp,
    TResult? Function(VerifySignupOtp value)? verifySignupOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSignupOtp value)? getSignupOtp,
    TResult Function(VerifySignupOtp value)? verifySignupOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupEventCopyWith<SignupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res, SignupEvent>;
  @useResult
  $Res call({SignUpRequest sighnupRequest});

  $SignUpRequestCopyWith<$Res> get sighnupRequest;
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res, $Val extends SignupEvent>
    implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sighnupRequest = null,
  }) {
    return _then(_value.copyWith(
      sighnupRequest: null == sighnupRequest
          ? _value.sighnupRequest
          : sighnupRequest // ignore: cast_nullable_to_non_nullable
              as SignUpRequest,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignUpRequestCopyWith<$Res> get sighnupRequest {
    return $SignUpRequestCopyWith<$Res>(_value.sighnupRequest, (value) {
      return _then(_value.copyWith(sighnupRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetSignupOtpCopyWith<$Res>
    implements $SignupEventCopyWith<$Res> {
  factory _$$GetSignupOtpCopyWith(
          _$GetSignupOtp value, $Res Function(_$GetSignupOtp) then) =
      __$$GetSignupOtpCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignUpRequest sighnupRequest});

  @override
  $SignUpRequestCopyWith<$Res> get sighnupRequest;
}

/// @nodoc
class __$$GetSignupOtpCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$GetSignupOtp>
    implements _$$GetSignupOtpCopyWith<$Res> {
  __$$GetSignupOtpCopyWithImpl(
      _$GetSignupOtp _value, $Res Function(_$GetSignupOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sighnupRequest = null,
  }) {
    return _then(_$GetSignupOtp(
      null == sighnupRequest
          ? _value.sighnupRequest
          : sighnupRequest // ignore: cast_nullable_to_non_nullable
              as SignUpRequest,
    ));
  }
}

/// @nodoc

class _$GetSignupOtp implements GetSignupOtp {
  const _$GetSignupOtp(this.sighnupRequest);

  @override
  final SignUpRequest sighnupRequest;

  @override
  String toString() {
    return 'SignupEvent.getSignupOtp(sighnupRequest: $sighnupRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSignupOtp &&
            (identical(other.sighnupRequest, sighnupRequest) ||
                other.sighnupRequest == sighnupRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sighnupRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSignupOtpCopyWith<_$GetSignupOtp> get copyWith =>
      __$$GetSignupOtpCopyWithImpl<_$GetSignupOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpRequest sighnupRequest) getSignupOtp,
    required TResult Function(SignUpRequest sighnupRequest) verifySignupOtp,
  }) {
    return getSignupOtp(sighnupRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpRequest sighnupRequest)? getSignupOtp,
    TResult? Function(SignUpRequest sighnupRequest)? verifySignupOtp,
  }) {
    return getSignupOtp?.call(sighnupRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpRequest sighnupRequest)? getSignupOtp,
    TResult Function(SignUpRequest sighnupRequest)? verifySignupOtp,
    required TResult orElse(),
  }) {
    if (getSignupOtp != null) {
      return getSignupOtp(sighnupRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSignupOtp value) getSignupOtp,
    required TResult Function(VerifySignupOtp value) verifySignupOtp,
  }) {
    return getSignupOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSignupOtp value)? getSignupOtp,
    TResult? Function(VerifySignupOtp value)? verifySignupOtp,
  }) {
    return getSignupOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSignupOtp value)? getSignupOtp,
    TResult Function(VerifySignupOtp value)? verifySignupOtp,
    required TResult orElse(),
  }) {
    if (getSignupOtp != null) {
      return getSignupOtp(this);
    }
    return orElse();
  }
}

abstract class GetSignupOtp implements SignupEvent {
  const factory GetSignupOtp(final SignUpRequest sighnupRequest) =
      _$GetSignupOtp;

  @override
  SignUpRequest get sighnupRequest;
  @override
  @JsonKey(ignore: true)
  _$$GetSignupOtpCopyWith<_$GetSignupOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifySignupOtpCopyWith<$Res>
    implements $SignupEventCopyWith<$Res> {
  factory _$$VerifySignupOtpCopyWith(
          _$VerifySignupOtp value, $Res Function(_$VerifySignupOtp) then) =
      __$$VerifySignupOtpCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignUpRequest sighnupRequest});

  @override
  $SignUpRequestCopyWith<$Res> get sighnupRequest;
}

/// @nodoc
class __$$VerifySignupOtpCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$VerifySignupOtp>
    implements _$$VerifySignupOtpCopyWith<$Res> {
  __$$VerifySignupOtpCopyWithImpl(
      _$VerifySignupOtp _value, $Res Function(_$VerifySignupOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sighnupRequest = null,
  }) {
    return _then(_$VerifySignupOtp(
      null == sighnupRequest
          ? _value.sighnupRequest
          : sighnupRequest // ignore: cast_nullable_to_non_nullable
              as SignUpRequest,
    ));
  }
}

/// @nodoc

class _$VerifySignupOtp implements VerifySignupOtp {
  const _$VerifySignupOtp(this.sighnupRequest);

  @override
  final SignUpRequest sighnupRequest;

  @override
  String toString() {
    return 'SignupEvent.verifySignupOtp(sighnupRequest: $sighnupRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifySignupOtp &&
            (identical(other.sighnupRequest, sighnupRequest) ||
                other.sighnupRequest == sighnupRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sighnupRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifySignupOtpCopyWith<_$VerifySignupOtp> get copyWith =>
      __$$VerifySignupOtpCopyWithImpl<_$VerifySignupOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpRequest sighnupRequest) getSignupOtp,
    required TResult Function(SignUpRequest sighnupRequest) verifySignupOtp,
  }) {
    return verifySignupOtp(sighnupRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpRequest sighnupRequest)? getSignupOtp,
    TResult? Function(SignUpRequest sighnupRequest)? verifySignupOtp,
  }) {
    return verifySignupOtp?.call(sighnupRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpRequest sighnupRequest)? getSignupOtp,
    TResult Function(SignUpRequest sighnupRequest)? verifySignupOtp,
    required TResult orElse(),
  }) {
    if (verifySignupOtp != null) {
      return verifySignupOtp(sighnupRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSignupOtp value) getSignupOtp,
    required TResult Function(VerifySignupOtp value) verifySignupOtp,
  }) {
    return verifySignupOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSignupOtp value)? getSignupOtp,
    TResult? Function(VerifySignupOtp value)? verifySignupOtp,
  }) {
    return verifySignupOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSignupOtp value)? getSignupOtp,
    TResult Function(VerifySignupOtp value)? verifySignupOtp,
    required TResult orElse(),
  }) {
    if (verifySignupOtp != null) {
      return verifySignupOtp(this);
    }
    return orElse();
  }
}

abstract class VerifySignupOtp implements SignupEvent {
  const factory VerifySignupOtp(final SignUpRequest sighnupRequest) =
      _$VerifySignupOtp;

  @override
  SignUpRequest get sighnupRequest;
  @override
  @JsonKey(ignore: true)
  _$$VerifySignupOtpCopyWith<_$VerifySignupOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getOtpLoading,
    required TResult Function() getOtpSuccess,
    required TResult Function() alreadyExistButOtpNotVerified,
    required TResult Function(String error) getOtpFailure,
    required TResult Function() verifyOtpLoading,
    required TResult Function() verifyOtpSuccess,
    required TResult Function(String error) verifyOtpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getOtpLoading,
    TResult? Function()? getOtpSuccess,
    TResult? Function()? alreadyExistButOtpNotVerified,
    TResult? Function(String error)? getOtpFailure,
    TResult? Function()? verifyOtpLoading,
    TResult? Function()? verifyOtpSuccess,
    TResult? Function(String error)? verifyOtpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getOtpLoading,
    TResult Function()? getOtpSuccess,
    TResult Function()? alreadyExistButOtpNotVerified,
    TResult Function(String error)? getOtpFailure,
    TResult Function()? verifyOtpLoading,
    TResult Function()? verifyOtpSuccess,
    TResult Function(String error)? verifyOtpFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetOtpLoading value) getOtpLoading,
    required TResult Function(GetOtpSuccess value) getOtpSuccess,
    required TResult Function(AlreadyExistButOtpNotVerified value)
        alreadyExistButOtpNotVerified,
    required TResult Function(GetOtpFailure value) getOtpFailure,
    required TResult Function(VerifyOtpLoading value) verifyOtpLoading,
    required TResult Function(VerifyOtpSuccess value) verifyOtpSuccess,
    required TResult Function(VerifyOtpFailure value) verifyOtpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetOtpLoading value)? getOtpLoading,
    TResult? Function(GetOtpSuccess value)? getOtpSuccess,
    TResult? Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult? Function(GetOtpFailure value)? getOtpFailure,
    TResult? Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult? Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult? Function(VerifyOtpFailure value)? verifyOtpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetOtpLoading value)? getOtpLoading,
    TResult Function(GetOtpSuccess value)? getOtpSuccess,
    TResult Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult Function(GetOtpFailure value)? getOtpFailure,
    TResult Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult Function(VerifyOtpFailure value)? verifyOtpFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

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
    extends _$SignupStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SignupState.initial()';
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
    required TResult Function() getOtpLoading,
    required TResult Function() getOtpSuccess,
    required TResult Function() alreadyExistButOtpNotVerified,
    required TResult Function(String error) getOtpFailure,
    required TResult Function() verifyOtpLoading,
    required TResult Function() verifyOtpSuccess,
    required TResult Function(String error) verifyOtpFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getOtpLoading,
    TResult? Function()? getOtpSuccess,
    TResult? Function()? alreadyExistButOtpNotVerified,
    TResult? Function(String error)? getOtpFailure,
    TResult? Function()? verifyOtpLoading,
    TResult? Function()? verifyOtpSuccess,
    TResult? Function(String error)? verifyOtpFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getOtpLoading,
    TResult Function()? getOtpSuccess,
    TResult Function()? alreadyExistButOtpNotVerified,
    TResult Function(String error)? getOtpFailure,
    TResult Function()? verifyOtpLoading,
    TResult Function()? verifyOtpSuccess,
    TResult Function(String error)? verifyOtpFailure,
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
    required TResult Function(GetOtpLoading value) getOtpLoading,
    required TResult Function(GetOtpSuccess value) getOtpSuccess,
    required TResult Function(AlreadyExistButOtpNotVerified value)
        alreadyExistButOtpNotVerified,
    required TResult Function(GetOtpFailure value) getOtpFailure,
    required TResult Function(VerifyOtpLoading value) verifyOtpLoading,
    required TResult Function(VerifyOtpSuccess value) verifyOtpSuccess,
    required TResult Function(VerifyOtpFailure value) verifyOtpFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetOtpLoading value)? getOtpLoading,
    TResult? Function(GetOtpSuccess value)? getOtpSuccess,
    TResult? Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult? Function(GetOtpFailure value)? getOtpFailure,
    TResult? Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult? Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult? Function(VerifyOtpFailure value)? verifyOtpFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetOtpLoading value)? getOtpLoading,
    TResult Function(GetOtpSuccess value)? getOtpSuccess,
    TResult Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult Function(GetOtpFailure value)? getOtpFailure,
    TResult Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult Function(VerifyOtpFailure value)? verifyOtpFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SignupState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$GetOtpLoadingCopyWith<$Res> {
  factory _$$GetOtpLoadingCopyWith(
          _$GetOtpLoading value, $Res Function(_$GetOtpLoading) then) =
      __$$GetOtpLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOtpLoadingCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$GetOtpLoading>
    implements _$$GetOtpLoadingCopyWith<$Res> {
  __$$GetOtpLoadingCopyWithImpl(
      _$GetOtpLoading _value, $Res Function(_$GetOtpLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOtpLoading implements GetOtpLoading {
  const _$GetOtpLoading();

  @override
  String toString() {
    return 'SignupState.getOtpLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOtpLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getOtpLoading,
    required TResult Function() getOtpSuccess,
    required TResult Function() alreadyExistButOtpNotVerified,
    required TResult Function(String error) getOtpFailure,
    required TResult Function() verifyOtpLoading,
    required TResult Function() verifyOtpSuccess,
    required TResult Function(String error) verifyOtpFailure,
  }) {
    return getOtpLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getOtpLoading,
    TResult? Function()? getOtpSuccess,
    TResult? Function()? alreadyExistButOtpNotVerified,
    TResult? Function(String error)? getOtpFailure,
    TResult? Function()? verifyOtpLoading,
    TResult? Function()? verifyOtpSuccess,
    TResult? Function(String error)? verifyOtpFailure,
  }) {
    return getOtpLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getOtpLoading,
    TResult Function()? getOtpSuccess,
    TResult Function()? alreadyExistButOtpNotVerified,
    TResult Function(String error)? getOtpFailure,
    TResult Function()? verifyOtpLoading,
    TResult Function()? verifyOtpSuccess,
    TResult Function(String error)? verifyOtpFailure,
    required TResult orElse(),
  }) {
    if (getOtpLoading != null) {
      return getOtpLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetOtpLoading value) getOtpLoading,
    required TResult Function(GetOtpSuccess value) getOtpSuccess,
    required TResult Function(AlreadyExistButOtpNotVerified value)
        alreadyExistButOtpNotVerified,
    required TResult Function(GetOtpFailure value) getOtpFailure,
    required TResult Function(VerifyOtpLoading value) verifyOtpLoading,
    required TResult Function(VerifyOtpSuccess value) verifyOtpSuccess,
    required TResult Function(VerifyOtpFailure value) verifyOtpFailure,
  }) {
    return getOtpLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetOtpLoading value)? getOtpLoading,
    TResult? Function(GetOtpSuccess value)? getOtpSuccess,
    TResult? Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult? Function(GetOtpFailure value)? getOtpFailure,
    TResult? Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult? Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult? Function(VerifyOtpFailure value)? verifyOtpFailure,
  }) {
    return getOtpLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetOtpLoading value)? getOtpLoading,
    TResult Function(GetOtpSuccess value)? getOtpSuccess,
    TResult Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult Function(GetOtpFailure value)? getOtpFailure,
    TResult Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult Function(VerifyOtpFailure value)? verifyOtpFailure,
    required TResult orElse(),
  }) {
    if (getOtpLoading != null) {
      return getOtpLoading(this);
    }
    return orElse();
  }
}

abstract class GetOtpLoading implements SignupState {
  const factory GetOtpLoading() = _$GetOtpLoading;
}

/// @nodoc
abstract class _$$GetOtpSuccessCopyWith<$Res> {
  factory _$$GetOtpSuccessCopyWith(
          _$GetOtpSuccess value, $Res Function(_$GetOtpSuccess) then) =
      __$$GetOtpSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOtpSuccessCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$GetOtpSuccess>
    implements _$$GetOtpSuccessCopyWith<$Res> {
  __$$GetOtpSuccessCopyWithImpl(
      _$GetOtpSuccess _value, $Res Function(_$GetOtpSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOtpSuccess implements GetOtpSuccess {
  const _$GetOtpSuccess();

  @override
  String toString() {
    return 'SignupState.getOtpSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOtpSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getOtpLoading,
    required TResult Function() getOtpSuccess,
    required TResult Function() alreadyExistButOtpNotVerified,
    required TResult Function(String error) getOtpFailure,
    required TResult Function() verifyOtpLoading,
    required TResult Function() verifyOtpSuccess,
    required TResult Function(String error) verifyOtpFailure,
  }) {
    return getOtpSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getOtpLoading,
    TResult? Function()? getOtpSuccess,
    TResult? Function()? alreadyExistButOtpNotVerified,
    TResult? Function(String error)? getOtpFailure,
    TResult? Function()? verifyOtpLoading,
    TResult? Function()? verifyOtpSuccess,
    TResult? Function(String error)? verifyOtpFailure,
  }) {
    return getOtpSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getOtpLoading,
    TResult Function()? getOtpSuccess,
    TResult Function()? alreadyExistButOtpNotVerified,
    TResult Function(String error)? getOtpFailure,
    TResult Function()? verifyOtpLoading,
    TResult Function()? verifyOtpSuccess,
    TResult Function(String error)? verifyOtpFailure,
    required TResult orElse(),
  }) {
    if (getOtpSuccess != null) {
      return getOtpSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetOtpLoading value) getOtpLoading,
    required TResult Function(GetOtpSuccess value) getOtpSuccess,
    required TResult Function(AlreadyExistButOtpNotVerified value)
        alreadyExistButOtpNotVerified,
    required TResult Function(GetOtpFailure value) getOtpFailure,
    required TResult Function(VerifyOtpLoading value) verifyOtpLoading,
    required TResult Function(VerifyOtpSuccess value) verifyOtpSuccess,
    required TResult Function(VerifyOtpFailure value) verifyOtpFailure,
  }) {
    return getOtpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetOtpLoading value)? getOtpLoading,
    TResult? Function(GetOtpSuccess value)? getOtpSuccess,
    TResult? Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult? Function(GetOtpFailure value)? getOtpFailure,
    TResult? Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult? Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult? Function(VerifyOtpFailure value)? verifyOtpFailure,
  }) {
    return getOtpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetOtpLoading value)? getOtpLoading,
    TResult Function(GetOtpSuccess value)? getOtpSuccess,
    TResult Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult Function(GetOtpFailure value)? getOtpFailure,
    TResult Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult Function(VerifyOtpFailure value)? verifyOtpFailure,
    required TResult orElse(),
  }) {
    if (getOtpSuccess != null) {
      return getOtpSuccess(this);
    }
    return orElse();
  }
}

abstract class GetOtpSuccess implements SignupState {
  const factory GetOtpSuccess() = _$GetOtpSuccess;
}

/// @nodoc
abstract class _$$AlreadyExistButOtpNotVerifiedCopyWith<$Res> {
  factory _$$AlreadyExistButOtpNotVerifiedCopyWith(
          _$AlreadyExistButOtpNotVerified value,
          $Res Function(_$AlreadyExistButOtpNotVerified) then) =
      __$$AlreadyExistButOtpNotVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlreadyExistButOtpNotVerifiedCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$AlreadyExistButOtpNotVerified>
    implements _$$AlreadyExistButOtpNotVerifiedCopyWith<$Res> {
  __$$AlreadyExistButOtpNotVerifiedCopyWithImpl(
      _$AlreadyExistButOtpNotVerified _value,
      $Res Function(_$AlreadyExistButOtpNotVerified) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AlreadyExistButOtpNotVerified implements AlreadyExistButOtpNotVerified {
  const _$AlreadyExistButOtpNotVerified();

  @override
  String toString() {
    return 'SignupState.alreadyExistButOtpNotVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlreadyExistButOtpNotVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getOtpLoading,
    required TResult Function() getOtpSuccess,
    required TResult Function() alreadyExistButOtpNotVerified,
    required TResult Function(String error) getOtpFailure,
    required TResult Function() verifyOtpLoading,
    required TResult Function() verifyOtpSuccess,
    required TResult Function(String error) verifyOtpFailure,
  }) {
    return alreadyExistButOtpNotVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getOtpLoading,
    TResult? Function()? getOtpSuccess,
    TResult? Function()? alreadyExistButOtpNotVerified,
    TResult? Function(String error)? getOtpFailure,
    TResult? Function()? verifyOtpLoading,
    TResult? Function()? verifyOtpSuccess,
    TResult? Function(String error)? verifyOtpFailure,
  }) {
    return alreadyExistButOtpNotVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getOtpLoading,
    TResult Function()? getOtpSuccess,
    TResult Function()? alreadyExistButOtpNotVerified,
    TResult Function(String error)? getOtpFailure,
    TResult Function()? verifyOtpLoading,
    TResult Function()? verifyOtpSuccess,
    TResult Function(String error)? verifyOtpFailure,
    required TResult orElse(),
  }) {
    if (alreadyExistButOtpNotVerified != null) {
      return alreadyExistButOtpNotVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetOtpLoading value) getOtpLoading,
    required TResult Function(GetOtpSuccess value) getOtpSuccess,
    required TResult Function(AlreadyExistButOtpNotVerified value)
        alreadyExistButOtpNotVerified,
    required TResult Function(GetOtpFailure value) getOtpFailure,
    required TResult Function(VerifyOtpLoading value) verifyOtpLoading,
    required TResult Function(VerifyOtpSuccess value) verifyOtpSuccess,
    required TResult Function(VerifyOtpFailure value) verifyOtpFailure,
  }) {
    return alreadyExistButOtpNotVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetOtpLoading value)? getOtpLoading,
    TResult? Function(GetOtpSuccess value)? getOtpSuccess,
    TResult? Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult? Function(GetOtpFailure value)? getOtpFailure,
    TResult? Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult? Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult? Function(VerifyOtpFailure value)? verifyOtpFailure,
  }) {
    return alreadyExistButOtpNotVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetOtpLoading value)? getOtpLoading,
    TResult Function(GetOtpSuccess value)? getOtpSuccess,
    TResult Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult Function(GetOtpFailure value)? getOtpFailure,
    TResult Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult Function(VerifyOtpFailure value)? verifyOtpFailure,
    required TResult orElse(),
  }) {
    if (alreadyExistButOtpNotVerified != null) {
      return alreadyExistButOtpNotVerified(this);
    }
    return orElse();
  }
}

abstract class AlreadyExistButOtpNotVerified implements SignupState {
  const factory AlreadyExistButOtpNotVerified() =
      _$AlreadyExistButOtpNotVerified;
}

/// @nodoc
abstract class _$$GetOtpFailureCopyWith<$Res> {
  factory _$$GetOtpFailureCopyWith(
          _$GetOtpFailure value, $Res Function(_$GetOtpFailure) then) =
      __$$GetOtpFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetOtpFailureCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$GetOtpFailure>
    implements _$$GetOtpFailureCopyWith<$Res> {
  __$$GetOtpFailureCopyWithImpl(
      _$GetOtpFailure _value, $Res Function(_$GetOtpFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetOtpFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOtpFailure implements GetOtpFailure {
  const _$GetOtpFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SignupState.getOtpFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOtpFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOtpFailureCopyWith<_$GetOtpFailure> get copyWith =>
      __$$GetOtpFailureCopyWithImpl<_$GetOtpFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getOtpLoading,
    required TResult Function() getOtpSuccess,
    required TResult Function() alreadyExistButOtpNotVerified,
    required TResult Function(String error) getOtpFailure,
    required TResult Function() verifyOtpLoading,
    required TResult Function() verifyOtpSuccess,
    required TResult Function(String error) verifyOtpFailure,
  }) {
    return getOtpFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getOtpLoading,
    TResult? Function()? getOtpSuccess,
    TResult? Function()? alreadyExistButOtpNotVerified,
    TResult? Function(String error)? getOtpFailure,
    TResult? Function()? verifyOtpLoading,
    TResult? Function()? verifyOtpSuccess,
    TResult? Function(String error)? verifyOtpFailure,
  }) {
    return getOtpFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getOtpLoading,
    TResult Function()? getOtpSuccess,
    TResult Function()? alreadyExistButOtpNotVerified,
    TResult Function(String error)? getOtpFailure,
    TResult Function()? verifyOtpLoading,
    TResult Function()? verifyOtpSuccess,
    TResult Function(String error)? verifyOtpFailure,
    required TResult orElse(),
  }) {
    if (getOtpFailure != null) {
      return getOtpFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetOtpLoading value) getOtpLoading,
    required TResult Function(GetOtpSuccess value) getOtpSuccess,
    required TResult Function(AlreadyExistButOtpNotVerified value)
        alreadyExistButOtpNotVerified,
    required TResult Function(GetOtpFailure value) getOtpFailure,
    required TResult Function(VerifyOtpLoading value) verifyOtpLoading,
    required TResult Function(VerifyOtpSuccess value) verifyOtpSuccess,
    required TResult Function(VerifyOtpFailure value) verifyOtpFailure,
  }) {
    return getOtpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetOtpLoading value)? getOtpLoading,
    TResult? Function(GetOtpSuccess value)? getOtpSuccess,
    TResult? Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult? Function(GetOtpFailure value)? getOtpFailure,
    TResult? Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult? Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult? Function(VerifyOtpFailure value)? verifyOtpFailure,
  }) {
    return getOtpFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetOtpLoading value)? getOtpLoading,
    TResult Function(GetOtpSuccess value)? getOtpSuccess,
    TResult Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult Function(GetOtpFailure value)? getOtpFailure,
    TResult Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult Function(VerifyOtpFailure value)? verifyOtpFailure,
    required TResult orElse(),
  }) {
    if (getOtpFailure != null) {
      return getOtpFailure(this);
    }
    return orElse();
  }
}

abstract class GetOtpFailure implements SignupState {
  const factory GetOtpFailure(final String error) = _$GetOtpFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$GetOtpFailureCopyWith<_$GetOtpFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpLoadingCopyWith<$Res> {
  factory _$$VerifyOtpLoadingCopyWith(
          _$VerifyOtpLoading value, $Res Function(_$VerifyOtpLoading) then) =
      __$$VerifyOtpLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyOtpLoadingCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$VerifyOtpLoading>
    implements _$$VerifyOtpLoadingCopyWith<$Res> {
  __$$VerifyOtpLoadingCopyWithImpl(
      _$VerifyOtpLoading _value, $Res Function(_$VerifyOtpLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyOtpLoading implements VerifyOtpLoading {
  const _$VerifyOtpLoading();

  @override
  String toString() {
    return 'SignupState.verifyOtpLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyOtpLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getOtpLoading,
    required TResult Function() getOtpSuccess,
    required TResult Function() alreadyExistButOtpNotVerified,
    required TResult Function(String error) getOtpFailure,
    required TResult Function() verifyOtpLoading,
    required TResult Function() verifyOtpSuccess,
    required TResult Function(String error) verifyOtpFailure,
  }) {
    return verifyOtpLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getOtpLoading,
    TResult? Function()? getOtpSuccess,
    TResult? Function()? alreadyExistButOtpNotVerified,
    TResult? Function(String error)? getOtpFailure,
    TResult? Function()? verifyOtpLoading,
    TResult? Function()? verifyOtpSuccess,
    TResult? Function(String error)? verifyOtpFailure,
  }) {
    return verifyOtpLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getOtpLoading,
    TResult Function()? getOtpSuccess,
    TResult Function()? alreadyExistButOtpNotVerified,
    TResult Function(String error)? getOtpFailure,
    TResult Function()? verifyOtpLoading,
    TResult Function()? verifyOtpSuccess,
    TResult Function(String error)? verifyOtpFailure,
    required TResult orElse(),
  }) {
    if (verifyOtpLoading != null) {
      return verifyOtpLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetOtpLoading value) getOtpLoading,
    required TResult Function(GetOtpSuccess value) getOtpSuccess,
    required TResult Function(AlreadyExistButOtpNotVerified value)
        alreadyExistButOtpNotVerified,
    required TResult Function(GetOtpFailure value) getOtpFailure,
    required TResult Function(VerifyOtpLoading value) verifyOtpLoading,
    required TResult Function(VerifyOtpSuccess value) verifyOtpSuccess,
    required TResult Function(VerifyOtpFailure value) verifyOtpFailure,
  }) {
    return verifyOtpLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetOtpLoading value)? getOtpLoading,
    TResult? Function(GetOtpSuccess value)? getOtpSuccess,
    TResult? Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult? Function(GetOtpFailure value)? getOtpFailure,
    TResult? Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult? Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult? Function(VerifyOtpFailure value)? verifyOtpFailure,
  }) {
    return verifyOtpLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetOtpLoading value)? getOtpLoading,
    TResult Function(GetOtpSuccess value)? getOtpSuccess,
    TResult Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult Function(GetOtpFailure value)? getOtpFailure,
    TResult Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult Function(VerifyOtpFailure value)? verifyOtpFailure,
    required TResult orElse(),
  }) {
    if (verifyOtpLoading != null) {
      return verifyOtpLoading(this);
    }
    return orElse();
  }
}

abstract class VerifyOtpLoading implements SignupState {
  const factory VerifyOtpLoading() = _$VerifyOtpLoading;
}

/// @nodoc
abstract class _$$VerifyOtpSuccessCopyWith<$Res> {
  factory _$$VerifyOtpSuccessCopyWith(
          _$VerifyOtpSuccess value, $Res Function(_$VerifyOtpSuccess) then) =
      __$$VerifyOtpSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyOtpSuccessCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$VerifyOtpSuccess>
    implements _$$VerifyOtpSuccessCopyWith<$Res> {
  __$$VerifyOtpSuccessCopyWithImpl(
      _$VerifyOtpSuccess _value, $Res Function(_$VerifyOtpSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyOtpSuccess implements VerifyOtpSuccess {
  const _$VerifyOtpSuccess();

  @override
  String toString() {
    return 'SignupState.verifyOtpSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyOtpSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getOtpLoading,
    required TResult Function() getOtpSuccess,
    required TResult Function() alreadyExistButOtpNotVerified,
    required TResult Function(String error) getOtpFailure,
    required TResult Function() verifyOtpLoading,
    required TResult Function() verifyOtpSuccess,
    required TResult Function(String error) verifyOtpFailure,
  }) {
    return verifyOtpSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getOtpLoading,
    TResult? Function()? getOtpSuccess,
    TResult? Function()? alreadyExistButOtpNotVerified,
    TResult? Function(String error)? getOtpFailure,
    TResult? Function()? verifyOtpLoading,
    TResult? Function()? verifyOtpSuccess,
    TResult? Function(String error)? verifyOtpFailure,
  }) {
    return verifyOtpSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getOtpLoading,
    TResult Function()? getOtpSuccess,
    TResult Function()? alreadyExistButOtpNotVerified,
    TResult Function(String error)? getOtpFailure,
    TResult Function()? verifyOtpLoading,
    TResult Function()? verifyOtpSuccess,
    TResult Function(String error)? verifyOtpFailure,
    required TResult orElse(),
  }) {
    if (verifyOtpSuccess != null) {
      return verifyOtpSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetOtpLoading value) getOtpLoading,
    required TResult Function(GetOtpSuccess value) getOtpSuccess,
    required TResult Function(AlreadyExistButOtpNotVerified value)
        alreadyExistButOtpNotVerified,
    required TResult Function(GetOtpFailure value) getOtpFailure,
    required TResult Function(VerifyOtpLoading value) verifyOtpLoading,
    required TResult Function(VerifyOtpSuccess value) verifyOtpSuccess,
    required TResult Function(VerifyOtpFailure value) verifyOtpFailure,
  }) {
    return verifyOtpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetOtpLoading value)? getOtpLoading,
    TResult? Function(GetOtpSuccess value)? getOtpSuccess,
    TResult? Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult? Function(GetOtpFailure value)? getOtpFailure,
    TResult? Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult? Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult? Function(VerifyOtpFailure value)? verifyOtpFailure,
  }) {
    return verifyOtpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetOtpLoading value)? getOtpLoading,
    TResult Function(GetOtpSuccess value)? getOtpSuccess,
    TResult Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult Function(GetOtpFailure value)? getOtpFailure,
    TResult Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult Function(VerifyOtpFailure value)? verifyOtpFailure,
    required TResult orElse(),
  }) {
    if (verifyOtpSuccess != null) {
      return verifyOtpSuccess(this);
    }
    return orElse();
  }
}

abstract class VerifyOtpSuccess implements SignupState {
  const factory VerifyOtpSuccess() = _$VerifyOtpSuccess;
}

/// @nodoc
abstract class _$$VerifyOtpFailureCopyWith<$Res> {
  factory _$$VerifyOtpFailureCopyWith(
          _$VerifyOtpFailure value, $Res Function(_$VerifyOtpFailure) then) =
      __$$VerifyOtpFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$VerifyOtpFailureCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$VerifyOtpFailure>
    implements _$$VerifyOtpFailureCopyWith<$Res> {
  __$$VerifyOtpFailureCopyWithImpl(
      _$VerifyOtpFailure _value, $Res Function(_$VerifyOtpFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$VerifyOtpFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOtpFailure implements VerifyOtpFailure {
  const _$VerifyOtpFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SignupState.verifyOtpFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpFailureCopyWith<_$VerifyOtpFailure> get copyWith =>
      __$$VerifyOtpFailureCopyWithImpl<_$VerifyOtpFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getOtpLoading,
    required TResult Function() getOtpSuccess,
    required TResult Function() alreadyExistButOtpNotVerified,
    required TResult Function(String error) getOtpFailure,
    required TResult Function() verifyOtpLoading,
    required TResult Function() verifyOtpSuccess,
    required TResult Function(String error) verifyOtpFailure,
  }) {
    return verifyOtpFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getOtpLoading,
    TResult? Function()? getOtpSuccess,
    TResult? Function()? alreadyExistButOtpNotVerified,
    TResult? Function(String error)? getOtpFailure,
    TResult? Function()? verifyOtpLoading,
    TResult? Function()? verifyOtpSuccess,
    TResult? Function(String error)? verifyOtpFailure,
  }) {
    return verifyOtpFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getOtpLoading,
    TResult Function()? getOtpSuccess,
    TResult Function()? alreadyExistButOtpNotVerified,
    TResult Function(String error)? getOtpFailure,
    TResult Function()? verifyOtpLoading,
    TResult Function()? verifyOtpSuccess,
    TResult Function(String error)? verifyOtpFailure,
    required TResult orElse(),
  }) {
    if (verifyOtpFailure != null) {
      return verifyOtpFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetOtpLoading value) getOtpLoading,
    required TResult Function(GetOtpSuccess value) getOtpSuccess,
    required TResult Function(AlreadyExistButOtpNotVerified value)
        alreadyExistButOtpNotVerified,
    required TResult Function(GetOtpFailure value) getOtpFailure,
    required TResult Function(VerifyOtpLoading value) verifyOtpLoading,
    required TResult Function(VerifyOtpSuccess value) verifyOtpSuccess,
    required TResult Function(VerifyOtpFailure value) verifyOtpFailure,
  }) {
    return verifyOtpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetOtpLoading value)? getOtpLoading,
    TResult? Function(GetOtpSuccess value)? getOtpSuccess,
    TResult? Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult? Function(GetOtpFailure value)? getOtpFailure,
    TResult? Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult? Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult? Function(VerifyOtpFailure value)? verifyOtpFailure,
  }) {
    return verifyOtpFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetOtpLoading value)? getOtpLoading,
    TResult Function(GetOtpSuccess value)? getOtpSuccess,
    TResult Function(AlreadyExistButOtpNotVerified value)?
        alreadyExistButOtpNotVerified,
    TResult Function(GetOtpFailure value)? getOtpFailure,
    TResult Function(VerifyOtpLoading value)? verifyOtpLoading,
    TResult Function(VerifyOtpSuccess value)? verifyOtpSuccess,
    TResult Function(VerifyOtpFailure value)? verifyOtpFailure,
    required TResult orElse(),
  }) {
    if (verifyOtpFailure != null) {
      return verifyOtpFailure(this);
    }
    return orElse();
  }
}

abstract class VerifyOtpFailure implements SignupState {
  const factory VerifyOtpFailure(final String error) = _$VerifyOtpFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$VerifyOtpFailureCopyWith<_$VerifyOtpFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
