// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  LoginRequest get loginRequest => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest loginRequest) initLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequest loginRequest)? initLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest loginRequest)? initLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLogin value) initLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLogin value)? initLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLogin value)? initLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
  @useResult
  $Res call({LoginRequest loginRequest});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginRequest = null,
  }) {
    return _then(_value.copyWith(
      loginRequest: null == loginRequest
          ? _value.loginRequest
          : loginRequest // ignore: cast_nullable_to_non_nullable
              as LoginRequest,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitLoginCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$$InitLoginCopyWith(
          _$InitLogin value, $Res Function(_$InitLogin) then) =
      __$$InitLoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginRequest loginRequest});
}

/// @nodoc
class __$$InitLoginCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$InitLogin>
    implements _$$InitLoginCopyWith<$Res> {
  __$$InitLoginCopyWithImpl(
      _$InitLogin _value, $Res Function(_$InitLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginRequest = null,
  }) {
    return _then(_$InitLogin(
      null == loginRequest
          ? _value.loginRequest
          : loginRequest // ignore: cast_nullable_to_non_nullable
              as LoginRequest,
    ));
  }
}

/// @nodoc

class _$InitLogin implements InitLogin {
  const _$InitLogin(this.loginRequest);

  @override
  final LoginRequest loginRequest;

  @override
  String toString() {
    return 'LoginEvent.initLogin(loginRequest: $loginRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitLogin &&
            (identical(other.loginRequest, loginRequest) ||
                other.loginRequest == loginRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitLoginCopyWith<_$InitLogin> get copyWith =>
      __$$InitLoginCopyWithImpl<_$InitLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest loginRequest) initLogin,
  }) {
    return initLogin(loginRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequest loginRequest)? initLogin,
  }) {
    return initLogin?.call(loginRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest loginRequest)? initLogin,
    required TResult orElse(),
  }) {
    if (initLogin != null) {
      return initLogin(loginRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLogin value) initLogin,
  }) {
    return initLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLogin value)? initLogin,
  }) {
    return initLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLogin value)? initLogin,
    required TResult orElse(),
  }) {
    if (initLogin != null) {
      return initLogin(this);
    }
    return orElse();
  }
}

abstract class InitLogin implements LoginEvent {
  const factory InitLogin(final LoginRequest loginRequest) = _$InitLogin;

  @override
  LoginRequest get loginRequest;
  @override
  @JsonKey(ignore: true)
  _$$InitLoginCopyWith<_$InitLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() initLoginSuccess,
    required TResult Function(String error) initLoginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? initLoginSuccess,
    TResult? Function(String error)? initLoginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? initLoginSuccess,
    TResult Function(String error)? initLoginFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(InitLoginSuccess value) initLoginSuccess,
    required TResult Function(InitLoginFailure value) initLoginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(InitLoginSuccess value)? initLoginSuccess,
    TResult? Function(InitLoginFailure value)? initLoginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(InitLoginSuccess value)? initLoginSuccess,
    TResult Function(InitLoginFailure value)? initLoginFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

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
    extends _$LoginStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'LoginState.initial()';
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
    required TResult Function() initLoginSuccess,
    required TResult Function(String error) initLoginFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? initLoginSuccess,
    TResult? Function(String error)? initLoginFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? initLoginSuccess,
    TResult Function(String error)? initLoginFailure,
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
    required TResult Function(InitLoginSuccess value) initLoginSuccess,
    required TResult Function(InitLoginFailure value) initLoginFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(InitLoginSuccess value)? initLoginSuccess,
    TResult? Function(InitLoginFailure value)? initLoginFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(InitLoginSuccess value)? initLoginSuccess,
    TResult Function(InitLoginFailure value)? initLoginFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LoginState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'LoginState.loading()';
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
    required TResult Function() initLoginSuccess,
    required TResult Function(String error) initLoginFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? initLoginSuccess,
    TResult? Function(String error)? initLoginFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? initLoginSuccess,
    TResult Function(String error)? initLoginFailure,
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
    required TResult Function(InitLoginSuccess value) initLoginSuccess,
    required TResult Function(InitLoginFailure value) initLoginFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(InitLoginSuccess value)? initLoginSuccess,
    TResult? Function(InitLoginFailure value)? initLoginFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(InitLoginSuccess value)? initLoginSuccess,
    TResult Function(InitLoginFailure value)? initLoginFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LoginState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$InitLoginSuccessCopyWith<$Res> {
  factory _$$InitLoginSuccessCopyWith(
          _$InitLoginSuccess value, $Res Function(_$InitLoginSuccess) then) =
      __$$InitLoginSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitLoginSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitLoginSuccess>
    implements _$$InitLoginSuccessCopyWith<$Res> {
  __$$InitLoginSuccessCopyWithImpl(
      _$InitLoginSuccess _value, $Res Function(_$InitLoginSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitLoginSuccess implements InitLoginSuccess {
  const _$InitLoginSuccess();

  @override
  String toString() {
    return 'LoginState.initLoginSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitLoginSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() initLoginSuccess,
    required TResult Function(String error) initLoginFailure,
  }) {
    return initLoginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? initLoginSuccess,
    TResult? Function(String error)? initLoginFailure,
  }) {
    return initLoginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? initLoginSuccess,
    TResult Function(String error)? initLoginFailure,
    required TResult orElse(),
  }) {
    if (initLoginSuccess != null) {
      return initLoginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(InitLoginSuccess value) initLoginSuccess,
    required TResult Function(InitLoginFailure value) initLoginFailure,
  }) {
    return initLoginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(InitLoginSuccess value)? initLoginSuccess,
    TResult? Function(InitLoginFailure value)? initLoginFailure,
  }) {
    return initLoginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(InitLoginSuccess value)? initLoginSuccess,
    TResult Function(InitLoginFailure value)? initLoginFailure,
    required TResult orElse(),
  }) {
    if (initLoginSuccess != null) {
      return initLoginSuccess(this);
    }
    return orElse();
  }
}

abstract class InitLoginSuccess implements LoginState {
  const factory InitLoginSuccess() = _$InitLoginSuccess;
}

/// @nodoc
abstract class _$$InitLoginFailureCopyWith<$Res> {
  factory _$$InitLoginFailureCopyWith(
          _$InitLoginFailure value, $Res Function(_$InitLoginFailure) then) =
      __$$InitLoginFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$InitLoginFailureCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitLoginFailure>
    implements _$$InitLoginFailureCopyWith<$Res> {
  __$$InitLoginFailureCopyWithImpl(
      _$InitLoginFailure _value, $Res Function(_$InitLoginFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$InitLoginFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitLoginFailure implements InitLoginFailure {
  const _$InitLoginFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState.initLoginFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitLoginFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitLoginFailureCopyWith<_$InitLoginFailure> get copyWith =>
      __$$InitLoginFailureCopyWithImpl<_$InitLoginFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() initLoginSuccess,
    required TResult Function(String error) initLoginFailure,
  }) {
    return initLoginFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? initLoginSuccess,
    TResult? Function(String error)? initLoginFailure,
  }) {
    return initLoginFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? initLoginSuccess,
    TResult Function(String error)? initLoginFailure,
    required TResult orElse(),
  }) {
    if (initLoginFailure != null) {
      return initLoginFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(InitLoginSuccess value) initLoginSuccess,
    required TResult Function(InitLoginFailure value) initLoginFailure,
  }) {
    return initLoginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(InitLoginSuccess value)? initLoginSuccess,
    TResult? Function(InitLoginFailure value)? initLoginFailure,
  }) {
    return initLoginFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(InitLoginSuccess value)? initLoginSuccess,
    TResult Function(InitLoginFailure value)? initLoginFailure,
    required TResult orElse(),
  }) {
    if (initLoginFailure != null) {
      return initLoginFailure(this);
    }
    return orElse();
  }
}

abstract class InitLoginFailure implements LoginState {
  const factory InitLoginFailure(final String error) = _$InitLoginFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$InitLoginFailureCopyWith<_$InitLoginFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
