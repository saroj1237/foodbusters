// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileInfo,
    required TResult Function(UpdateProfileReq updateProfileReq) updateProfie,
    required TResult Function(ChangePasswordReq changePasswordReq)
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfileInfo,
    TResult? Function(UpdateProfileReq updateProfileReq)? updateProfie,
    TResult? Function(ChangePasswordReq changePasswordReq)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileInfo,
    TResult Function(UpdateProfileReq updateProfileReq)? updateProfie,
    TResult Function(ChangePasswordReq changePasswordReq)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileInfo value) getProfileInfo,
    required TResult Function(UpdateProfile value) updateProfie,
    required TResult Function(ChangePassword value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileInfo value)? getProfileInfo,
    TResult? Function(UpdateProfile value)? updateProfie,
    TResult? Function(ChangePassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileInfo value)? getProfileInfo,
    TResult Function(UpdateProfile value)? updateProfie,
    TResult Function(ChangePassword value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProfileInfoCopyWith<$Res> {
  factory _$$GetProfileInfoCopyWith(
          _$GetProfileInfo value, $Res Function(_$GetProfileInfo) then) =
      __$$GetProfileInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProfileInfoCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetProfileInfo>
    implements _$$GetProfileInfoCopyWith<$Res> {
  __$$GetProfileInfoCopyWithImpl(
      _$GetProfileInfo _value, $Res Function(_$GetProfileInfo) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProfileInfo implements GetProfileInfo {
  const _$GetProfileInfo();

  @override
  String toString() {
    return 'ProfileEvent.getProfileInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProfileInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileInfo,
    required TResult Function(UpdateProfileReq updateProfileReq) updateProfie,
    required TResult Function(ChangePasswordReq changePasswordReq)
        changePassword,
  }) {
    return getProfileInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfileInfo,
    TResult? Function(UpdateProfileReq updateProfileReq)? updateProfie,
    TResult? Function(ChangePasswordReq changePasswordReq)? changePassword,
  }) {
    return getProfileInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileInfo,
    TResult Function(UpdateProfileReq updateProfileReq)? updateProfie,
    TResult Function(ChangePasswordReq changePasswordReq)? changePassword,
    required TResult orElse(),
  }) {
    if (getProfileInfo != null) {
      return getProfileInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileInfo value) getProfileInfo,
    required TResult Function(UpdateProfile value) updateProfie,
    required TResult Function(ChangePassword value) changePassword,
  }) {
    return getProfileInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileInfo value)? getProfileInfo,
    TResult? Function(UpdateProfile value)? updateProfie,
    TResult? Function(ChangePassword value)? changePassword,
  }) {
    return getProfileInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileInfo value)? getProfileInfo,
    TResult Function(UpdateProfile value)? updateProfie,
    TResult Function(ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (getProfileInfo != null) {
      return getProfileInfo(this);
    }
    return orElse();
  }
}

abstract class GetProfileInfo implements ProfileEvent {
  const factory GetProfileInfo() = _$GetProfileInfo;
}

/// @nodoc
abstract class _$$UpdateProfileCopyWith<$Res> {
  factory _$$UpdateProfileCopyWith(
          _$UpdateProfile value, $Res Function(_$UpdateProfile) then) =
      __$$UpdateProfileCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateProfileReq updateProfileReq});
}

/// @nodoc
class __$$UpdateProfileCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateProfile>
    implements _$$UpdateProfileCopyWith<$Res> {
  __$$UpdateProfileCopyWithImpl(
      _$UpdateProfile _value, $Res Function(_$UpdateProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateProfileReq = null,
  }) {
    return _then(_$UpdateProfile(
      updateProfileReq: null == updateProfileReq
          ? _value.updateProfileReq
          : updateProfileReq // ignore: cast_nullable_to_non_nullable
              as UpdateProfileReq,
    ));
  }
}

/// @nodoc

class _$UpdateProfile implements UpdateProfile {
  const _$UpdateProfile({required this.updateProfileReq});

  @override
  final UpdateProfileReq updateProfileReq;

  @override
  String toString() {
    return 'ProfileEvent.updateProfie(updateProfileReq: $updateProfileReq)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfile &&
            (identical(other.updateProfileReq, updateProfileReq) ||
                other.updateProfileReq == updateProfileReq));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateProfileReq);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileCopyWith<_$UpdateProfile> get copyWith =>
      __$$UpdateProfileCopyWithImpl<_$UpdateProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileInfo,
    required TResult Function(UpdateProfileReq updateProfileReq) updateProfie,
    required TResult Function(ChangePasswordReq changePasswordReq)
        changePassword,
  }) {
    return updateProfie(updateProfileReq);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfileInfo,
    TResult? Function(UpdateProfileReq updateProfileReq)? updateProfie,
    TResult? Function(ChangePasswordReq changePasswordReq)? changePassword,
  }) {
    return updateProfie?.call(updateProfileReq);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileInfo,
    TResult Function(UpdateProfileReq updateProfileReq)? updateProfie,
    TResult Function(ChangePasswordReq changePasswordReq)? changePassword,
    required TResult orElse(),
  }) {
    if (updateProfie != null) {
      return updateProfie(updateProfileReq);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileInfo value) getProfileInfo,
    required TResult Function(UpdateProfile value) updateProfie,
    required TResult Function(ChangePassword value) changePassword,
  }) {
    return updateProfie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileInfo value)? getProfileInfo,
    TResult? Function(UpdateProfile value)? updateProfie,
    TResult? Function(ChangePassword value)? changePassword,
  }) {
    return updateProfie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileInfo value)? getProfileInfo,
    TResult Function(UpdateProfile value)? updateProfie,
    TResult Function(ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (updateProfie != null) {
      return updateProfie(this);
    }
    return orElse();
  }
}

abstract class UpdateProfile implements ProfileEvent {
  const factory UpdateProfile(
      {required final UpdateProfileReq updateProfileReq}) = _$UpdateProfile;

  UpdateProfileReq get updateProfileReq;
  @JsonKey(ignore: true)
  _$$UpdateProfileCopyWith<_$UpdateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordCopyWith<$Res> {
  factory _$$ChangePasswordCopyWith(
          _$ChangePassword value, $Res Function(_$ChangePassword) then) =
      __$$ChangePasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({ChangePasswordReq changePasswordReq});
}

/// @nodoc
class __$$ChangePasswordCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ChangePassword>
    implements _$$ChangePasswordCopyWith<$Res> {
  __$$ChangePasswordCopyWithImpl(
      _$ChangePassword _value, $Res Function(_$ChangePassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changePasswordReq = null,
  }) {
    return _then(_$ChangePassword(
      changePasswordReq: null == changePasswordReq
          ? _value.changePasswordReq
          : changePasswordReq // ignore: cast_nullable_to_non_nullable
              as ChangePasswordReq,
    ));
  }
}

/// @nodoc

class _$ChangePassword implements ChangePassword {
  const _$ChangePassword({required this.changePasswordReq});

  @override
  final ChangePasswordReq changePasswordReq;

  @override
  String toString() {
    return 'ProfileEvent.changePassword(changePasswordReq: $changePasswordReq)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePassword &&
            (identical(other.changePasswordReq, changePasswordReq) ||
                other.changePasswordReq == changePasswordReq));
  }

  @override
  int get hashCode => Object.hash(runtimeType, changePasswordReq);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordCopyWith<_$ChangePassword> get copyWith =>
      __$$ChangePasswordCopyWithImpl<_$ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileInfo,
    required TResult Function(UpdateProfileReq updateProfileReq) updateProfie,
    required TResult Function(ChangePasswordReq changePasswordReq)
        changePassword,
  }) {
    return changePassword(changePasswordReq);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfileInfo,
    TResult? Function(UpdateProfileReq updateProfileReq)? updateProfie,
    TResult? Function(ChangePasswordReq changePasswordReq)? changePassword,
  }) {
    return changePassword?.call(changePasswordReq);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileInfo,
    TResult Function(UpdateProfileReq updateProfileReq)? updateProfie,
    TResult Function(ChangePasswordReq changePasswordReq)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(changePasswordReq);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileInfo value) getProfileInfo,
    required TResult Function(UpdateProfile value) updateProfie,
    required TResult Function(ChangePassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileInfo value)? getProfileInfo,
    TResult? Function(UpdateProfile value)? updateProfie,
    TResult? Function(ChangePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileInfo value)? getProfileInfo,
    TResult Function(UpdateProfile value)? updateProfie,
    TResult Function(ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class ChangePassword implements ProfileEvent {
  const factory ChangePassword(
      {required final ChangePasswordReq changePasswordReq}) = _$ChangePassword;

  ChangePasswordReq get changePasswordReq;
  @JsonKey(ignore: true)
  _$$ChangePasswordCopyWith<_$ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileLoading,
    required TResult Function(UserModel userModel) getProfileInfoSuccess,
    required TResult Function(String error) getProfileInfoFailure,
    required TResult Function() updateProfileLoading,
    required TResult Function(String error) updateProfileFailure,
    required TResult Function(UserModel user) updateProfileSuccess,
    required TResult Function(String error) changePasswordFailure,
    required TResult Function() changePasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileLoading,
    TResult? Function(UserModel userModel)? getProfileInfoSuccess,
    TResult? Function(String error)? getProfileInfoFailure,
    TResult? Function()? updateProfileLoading,
    TResult? Function(String error)? updateProfileFailure,
    TResult? Function(UserModel user)? updateProfileSuccess,
    TResult? Function(String error)? changePasswordFailure,
    TResult? Function()? changePasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileLoading,
    TResult Function(UserModel userModel)? getProfileInfoSuccess,
    TResult Function(String error)? getProfileInfoFailure,
    TResult Function()? updateProfileLoading,
    TResult Function(String error)? updateProfileFailure,
    TResult Function(UserModel user)? updateProfileSuccess,
    TResult Function(String error)? changePasswordFailure,
    TResult Function()? changePasswordSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProfileLoading value) profileLoading,
    required TResult Function(GetProfileInfoSuccess value)
        getProfileInfoSuccess,
    required TResult Function(GetProfileInfoFailure value)
        getProfileInfoFailure,
    required TResult Function(UpdateProfileloading value) updateProfileLoading,
    required TResult Function(UpdateProfileFailure value) updateProfileFailure,
    required TResult Function(UpdateProfileSuccess value) updateProfileSuccess,
    required TResult Function(ChangePasswordFailure value)
        changePasswordFailure,
    required TResult Function(ChangePasswordSuccess value)
        changePasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileLoading,
    TResult? Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult? Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult? Function(UpdateProfileloading value)? updateProfileLoading,
    TResult? Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult? Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult? Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult? Function(ChangePasswordSuccess value)? changePasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProfileLoading value)? profileLoading,
    TResult Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult Function(UpdateProfileloading value)? updateProfileLoading,
    TResult Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult Function(ChangePasswordSuccess value)? changePasswordSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$ProfileStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ProfileState.initial()';
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
    required TResult Function() profileLoading,
    required TResult Function(UserModel userModel) getProfileInfoSuccess,
    required TResult Function(String error) getProfileInfoFailure,
    required TResult Function() updateProfileLoading,
    required TResult Function(String error) updateProfileFailure,
    required TResult Function(UserModel user) updateProfileSuccess,
    required TResult Function(String error) changePasswordFailure,
    required TResult Function() changePasswordSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileLoading,
    TResult? Function(UserModel userModel)? getProfileInfoSuccess,
    TResult? Function(String error)? getProfileInfoFailure,
    TResult? Function()? updateProfileLoading,
    TResult? Function(String error)? updateProfileFailure,
    TResult? Function(UserModel user)? updateProfileSuccess,
    TResult? Function(String error)? changePasswordFailure,
    TResult? Function()? changePasswordSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileLoading,
    TResult Function(UserModel userModel)? getProfileInfoSuccess,
    TResult Function(String error)? getProfileInfoFailure,
    TResult Function()? updateProfileLoading,
    TResult Function(String error)? updateProfileFailure,
    TResult Function(UserModel user)? updateProfileSuccess,
    TResult Function(String error)? changePasswordFailure,
    TResult Function()? changePasswordSuccess,
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
    required TResult Function(ProfileLoading value) profileLoading,
    required TResult Function(GetProfileInfoSuccess value)
        getProfileInfoSuccess,
    required TResult Function(GetProfileInfoFailure value)
        getProfileInfoFailure,
    required TResult Function(UpdateProfileloading value) updateProfileLoading,
    required TResult Function(UpdateProfileFailure value) updateProfileFailure,
    required TResult Function(UpdateProfileSuccess value) updateProfileSuccess,
    required TResult Function(ChangePasswordFailure value)
        changePasswordFailure,
    required TResult Function(ChangePasswordSuccess value)
        changePasswordSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileLoading,
    TResult? Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult? Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult? Function(UpdateProfileloading value)? updateProfileLoading,
    TResult? Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult? Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult? Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult? Function(ChangePasswordSuccess value)? changePasswordSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProfileLoading value)? profileLoading,
    TResult Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult Function(UpdateProfileloading value)? updateProfileLoading,
    TResult Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult Function(ChangePasswordSuccess value)? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProfileState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$ProfileLoadingCopyWith<$Res> {
  factory _$$ProfileLoadingCopyWith(
          _$ProfileLoading value, $Res Function(_$ProfileLoading) then) =
      __$$ProfileLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoading>
    implements _$$ProfileLoadingCopyWith<$Res> {
  __$$ProfileLoadingCopyWithImpl(
      _$ProfileLoading _value, $Res Function(_$ProfileLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileLoading implements ProfileLoading {
  const _$ProfileLoading();

  @override
  String toString() {
    return 'ProfileState.profileLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileLoading,
    required TResult Function(UserModel userModel) getProfileInfoSuccess,
    required TResult Function(String error) getProfileInfoFailure,
    required TResult Function() updateProfileLoading,
    required TResult Function(String error) updateProfileFailure,
    required TResult Function(UserModel user) updateProfileSuccess,
    required TResult Function(String error) changePasswordFailure,
    required TResult Function() changePasswordSuccess,
  }) {
    return profileLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileLoading,
    TResult? Function(UserModel userModel)? getProfileInfoSuccess,
    TResult? Function(String error)? getProfileInfoFailure,
    TResult? Function()? updateProfileLoading,
    TResult? Function(String error)? updateProfileFailure,
    TResult? Function(UserModel user)? updateProfileSuccess,
    TResult? Function(String error)? changePasswordFailure,
    TResult? Function()? changePasswordSuccess,
  }) {
    return profileLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileLoading,
    TResult Function(UserModel userModel)? getProfileInfoSuccess,
    TResult Function(String error)? getProfileInfoFailure,
    TResult Function()? updateProfileLoading,
    TResult Function(String error)? updateProfileFailure,
    TResult Function(UserModel user)? updateProfileSuccess,
    TResult Function(String error)? changePasswordFailure,
    TResult Function()? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (profileLoading != null) {
      return profileLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProfileLoading value) profileLoading,
    required TResult Function(GetProfileInfoSuccess value)
        getProfileInfoSuccess,
    required TResult Function(GetProfileInfoFailure value)
        getProfileInfoFailure,
    required TResult Function(UpdateProfileloading value) updateProfileLoading,
    required TResult Function(UpdateProfileFailure value) updateProfileFailure,
    required TResult Function(UpdateProfileSuccess value) updateProfileSuccess,
    required TResult Function(ChangePasswordFailure value)
        changePasswordFailure,
    required TResult Function(ChangePasswordSuccess value)
        changePasswordSuccess,
  }) {
    return profileLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileLoading,
    TResult? Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult? Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult? Function(UpdateProfileloading value)? updateProfileLoading,
    TResult? Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult? Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult? Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult? Function(ChangePasswordSuccess value)? changePasswordSuccess,
  }) {
    return profileLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProfileLoading value)? profileLoading,
    TResult Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult Function(UpdateProfileloading value)? updateProfileLoading,
    TResult Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult Function(ChangePasswordSuccess value)? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (profileLoading != null) {
      return profileLoading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoading implements ProfileState {
  const factory ProfileLoading() = _$ProfileLoading;
}

/// @nodoc
abstract class _$$GetProfileInfoSuccessCopyWith<$Res> {
  factory _$$GetProfileInfoSuccessCopyWith(_$GetProfileInfoSuccess value,
          $Res Function(_$GetProfileInfoSuccess) then) =
      __$$GetProfileInfoSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel userModel});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$GetProfileInfoSuccessCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$GetProfileInfoSuccess>
    implements _$$GetProfileInfoSuccessCopyWith<$Res> {
  __$$GetProfileInfoSuccessCopyWithImpl(_$GetProfileInfoSuccess _value,
      $Res Function(_$GetProfileInfoSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
  }) {
    return _then(_$GetProfileInfoSuccess(
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get userModel {
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

/// @nodoc

class _$GetProfileInfoSuccess implements GetProfileInfoSuccess {
  const _$GetProfileInfoSuccess({required this.userModel});

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'ProfileState.getProfileInfoSuccess(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileInfoSuccess &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileInfoSuccessCopyWith<_$GetProfileInfoSuccess> get copyWith =>
      __$$GetProfileInfoSuccessCopyWithImpl<_$GetProfileInfoSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileLoading,
    required TResult Function(UserModel userModel) getProfileInfoSuccess,
    required TResult Function(String error) getProfileInfoFailure,
    required TResult Function() updateProfileLoading,
    required TResult Function(String error) updateProfileFailure,
    required TResult Function(UserModel user) updateProfileSuccess,
    required TResult Function(String error) changePasswordFailure,
    required TResult Function() changePasswordSuccess,
  }) {
    return getProfileInfoSuccess(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileLoading,
    TResult? Function(UserModel userModel)? getProfileInfoSuccess,
    TResult? Function(String error)? getProfileInfoFailure,
    TResult? Function()? updateProfileLoading,
    TResult? Function(String error)? updateProfileFailure,
    TResult? Function(UserModel user)? updateProfileSuccess,
    TResult? Function(String error)? changePasswordFailure,
    TResult? Function()? changePasswordSuccess,
  }) {
    return getProfileInfoSuccess?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileLoading,
    TResult Function(UserModel userModel)? getProfileInfoSuccess,
    TResult Function(String error)? getProfileInfoFailure,
    TResult Function()? updateProfileLoading,
    TResult Function(String error)? updateProfileFailure,
    TResult Function(UserModel user)? updateProfileSuccess,
    TResult Function(String error)? changePasswordFailure,
    TResult Function()? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (getProfileInfoSuccess != null) {
      return getProfileInfoSuccess(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProfileLoading value) profileLoading,
    required TResult Function(GetProfileInfoSuccess value)
        getProfileInfoSuccess,
    required TResult Function(GetProfileInfoFailure value)
        getProfileInfoFailure,
    required TResult Function(UpdateProfileloading value) updateProfileLoading,
    required TResult Function(UpdateProfileFailure value) updateProfileFailure,
    required TResult Function(UpdateProfileSuccess value) updateProfileSuccess,
    required TResult Function(ChangePasswordFailure value)
        changePasswordFailure,
    required TResult Function(ChangePasswordSuccess value)
        changePasswordSuccess,
  }) {
    return getProfileInfoSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileLoading,
    TResult? Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult? Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult? Function(UpdateProfileloading value)? updateProfileLoading,
    TResult? Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult? Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult? Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult? Function(ChangePasswordSuccess value)? changePasswordSuccess,
  }) {
    return getProfileInfoSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProfileLoading value)? profileLoading,
    TResult Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult Function(UpdateProfileloading value)? updateProfileLoading,
    TResult Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult Function(ChangePasswordSuccess value)? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (getProfileInfoSuccess != null) {
      return getProfileInfoSuccess(this);
    }
    return orElse();
  }
}

abstract class GetProfileInfoSuccess implements ProfileState {
  const factory GetProfileInfoSuccess({required final UserModel userModel}) =
      _$GetProfileInfoSuccess;

  UserModel get userModel;
  @JsonKey(ignore: true)
  _$$GetProfileInfoSuccessCopyWith<_$GetProfileInfoSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProfileInfoFailureCopyWith<$Res> {
  factory _$$GetProfileInfoFailureCopyWith(_$GetProfileInfoFailure value,
          $Res Function(_$GetProfileInfoFailure) then) =
      __$$GetProfileInfoFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetProfileInfoFailureCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$GetProfileInfoFailure>
    implements _$$GetProfileInfoFailureCopyWith<$Res> {
  __$$GetProfileInfoFailureCopyWithImpl(_$GetProfileInfoFailure _value,
      $Res Function(_$GetProfileInfoFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetProfileInfoFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProfileInfoFailure implements GetProfileInfoFailure {
  const _$GetProfileInfoFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ProfileState.getProfileInfoFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileInfoFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileInfoFailureCopyWith<_$GetProfileInfoFailure> get copyWith =>
      __$$GetProfileInfoFailureCopyWithImpl<_$GetProfileInfoFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileLoading,
    required TResult Function(UserModel userModel) getProfileInfoSuccess,
    required TResult Function(String error) getProfileInfoFailure,
    required TResult Function() updateProfileLoading,
    required TResult Function(String error) updateProfileFailure,
    required TResult Function(UserModel user) updateProfileSuccess,
    required TResult Function(String error) changePasswordFailure,
    required TResult Function() changePasswordSuccess,
  }) {
    return getProfileInfoFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileLoading,
    TResult? Function(UserModel userModel)? getProfileInfoSuccess,
    TResult? Function(String error)? getProfileInfoFailure,
    TResult? Function()? updateProfileLoading,
    TResult? Function(String error)? updateProfileFailure,
    TResult? Function(UserModel user)? updateProfileSuccess,
    TResult? Function(String error)? changePasswordFailure,
    TResult? Function()? changePasswordSuccess,
  }) {
    return getProfileInfoFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileLoading,
    TResult Function(UserModel userModel)? getProfileInfoSuccess,
    TResult Function(String error)? getProfileInfoFailure,
    TResult Function()? updateProfileLoading,
    TResult Function(String error)? updateProfileFailure,
    TResult Function(UserModel user)? updateProfileSuccess,
    TResult Function(String error)? changePasswordFailure,
    TResult Function()? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (getProfileInfoFailure != null) {
      return getProfileInfoFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProfileLoading value) profileLoading,
    required TResult Function(GetProfileInfoSuccess value)
        getProfileInfoSuccess,
    required TResult Function(GetProfileInfoFailure value)
        getProfileInfoFailure,
    required TResult Function(UpdateProfileloading value) updateProfileLoading,
    required TResult Function(UpdateProfileFailure value) updateProfileFailure,
    required TResult Function(UpdateProfileSuccess value) updateProfileSuccess,
    required TResult Function(ChangePasswordFailure value)
        changePasswordFailure,
    required TResult Function(ChangePasswordSuccess value)
        changePasswordSuccess,
  }) {
    return getProfileInfoFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileLoading,
    TResult? Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult? Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult? Function(UpdateProfileloading value)? updateProfileLoading,
    TResult? Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult? Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult? Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult? Function(ChangePasswordSuccess value)? changePasswordSuccess,
  }) {
    return getProfileInfoFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProfileLoading value)? profileLoading,
    TResult Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult Function(UpdateProfileloading value)? updateProfileLoading,
    TResult Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult Function(ChangePasswordSuccess value)? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (getProfileInfoFailure != null) {
      return getProfileInfoFailure(this);
    }
    return orElse();
  }
}

abstract class GetProfileInfoFailure implements ProfileState {
  const factory GetProfileInfoFailure(final String error) =
      _$GetProfileInfoFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$GetProfileInfoFailureCopyWith<_$GetProfileInfoFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileloadingCopyWith<$Res> {
  factory _$$UpdateProfileloadingCopyWith(_$UpdateProfileloading value,
          $Res Function(_$UpdateProfileloading) then) =
      __$$UpdateProfileloadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateProfileloadingCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$UpdateProfileloading>
    implements _$$UpdateProfileloadingCopyWith<$Res> {
  __$$UpdateProfileloadingCopyWithImpl(_$UpdateProfileloading _value,
      $Res Function(_$UpdateProfileloading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateProfileloading implements UpdateProfileloading {
  const _$UpdateProfileloading();

  @override
  String toString() {
    return 'ProfileState.updateProfileLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateProfileloading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileLoading,
    required TResult Function(UserModel userModel) getProfileInfoSuccess,
    required TResult Function(String error) getProfileInfoFailure,
    required TResult Function() updateProfileLoading,
    required TResult Function(String error) updateProfileFailure,
    required TResult Function(UserModel user) updateProfileSuccess,
    required TResult Function(String error) changePasswordFailure,
    required TResult Function() changePasswordSuccess,
  }) {
    return updateProfileLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileLoading,
    TResult? Function(UserModel userModel)? getProfileInfoSuccess,
    TResult? Function(String error)? getProfileInfoFailure,
    TResult? Function()? updateProfileLoading,
    TResult? Function(String error)? updateProfileFailure,
    TResult? Function(UserModel user)? updateProfileSuccess,
    TResult? Function(String error)? changePasswordFailure,
    TResult? Function()? changePasswordSuccess,
  }) {
    return updateProfileLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileLoading,
    TResult Function(UserModel userModel)? getProfileInfoSuccess,
    TResult Function(String error)? getProfileInfoFailure,
    TResult Function()? updateProfileLoading,
    TResult Function(String error)? updateProfileFailure,
    TResult Function(UserModel user)? updateProfileSuccess,
    TResult Function(String error)? changePasswordFailure,
    TResult Function()? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (updateProfileLoading != null) {
      return updateProfileLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProfileLoading value) profileLoading,
    required TResult Function(GetProfileInfoSuccess value)
        getProfileInfoSuccess,
    required TResult Function(GetProfileInfoFailure value)
        getProfileInfoFailure,
    required TResult Function(UpdateProfileloading value) updateProfileLoading,
    required TResult Function(UpdateProfileFailure value) updateProfileFailure,
    required TResult Function(UpdateProfileSuccess value) updateProfileSuccess,
    required TResult Function(ChangePasswordFailure value)
        changePasswordFailure,
    required TResult Function(ChangePasswordSuccess value)
        changePasswordSuccess,
  }) {
    return updateProfileLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileLoading,
    TResult? Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult? Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult? Function(UpdateProfileloading value)? updateProfileLoading,
    TResult? Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult? Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult? Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult? Function(ChangePasswordSuccess value)? changePasswordSuccess,
  }) {
    return updateProfileLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProfileLoading value)? profileLoading,
    TResult Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult Function(UpdateProfileloading value)? updateProfileLoading,
    TResult Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult Function(ChangePasswordSuccess value)? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (updateProfileLoading != null) {
      return updateProfileLoading(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileloading implements ProfileState {
  const factory UpdateProfileloading() = _$UpdateProfileloading;
}

/// @nodoc
abstract class _$$UpdateProfileFailureCopyWith<$Res> {
  factory _$$UpdateProfileFailureCopyWith(_$UpdateProfileFailure value,
          $Res Function(_$UpdateProfileFailure) then) =
      __$$UpdateProfileFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$UpdateProfileFailureCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$UpdateProfileFailure>
    implements _$$UpdateProfileFailureCopyWith<$Res> {
  __$$UpdateProfileFailureCopyWithImpl(_$UpdateProfileFailure _value,
      $Res Function(_$UpdateProfileFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UpdateProfileFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateProfileFailure implements UpdateProfileFailure {
  const _$UpdateProfileFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ProfileState.updateProfileFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileFailureCopyWith<_$UpdateProfileFailure> get copyWith =>
      __$$UpdateProfileFailureCopyWithImpl<_$UpdateProfileFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileLoading,
    required TResult Function(UserModel userModel) getProfileInfoSuccess,
    required TResult Function(String error) getProfileInfoFailure,
    required TResult Function() updateProfileLoading,
    required TResult Function(String error) updateProfileFailure,
    required TResult Function(UserModel user) updateProfileSuccess,
    required TResult Function(String error) changePasswordFailure,
    required TResult Function() changePasswordSuccess,
  }) {
    return updateProfileFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileLoading,
    TResult? Function(UserModel userModel)? getProfileInfoSuccess,
    TResult? Function(String error)? getProfileInfoFailure,
    TResult? Function()? updateProfileLoading,
    TResult? Function(String error)? updateProfileFailure,
    TResult? Function(UserModel user)? updateProfileSuccess,
    TResult? Function(String error)? changePasswordFailure,
    TResult? Function()? changePasswordSuccess,
  }) {
    return updateProfileFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileLoading,
    TResult Function(UserModel userModel)? getProfileInfoSuccess,
    TResult Function(String error)? getProfileInfoFailure,
    TResult Function()? updateProfileLoading,
    TResult Function(String error)? updateProfileFailure,
    TResult Function(UserModel user)? updateProfileSuccess,
    TResult Function(String error)? changePasswordFailure,
    TResult Function()? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (updateProfileFailure != null) {
      return updateProfileFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProfileLoading value) profileLoading,
    required TResult Function(GetProfileInfoSuccess value)
        getProfileInfoSuccess,
    required TResult Function(GetProfileInfoFailure value)
        getProfileInfoFailure,
    required TResult Function(UpdateProfileloading value) updateProfileLoading,
    required TResult Function(UpdateProfileFailure value) updateProfileFailure,
    required TResult Function(UpdateProfileSuccess value) updateProfileSuccess,
    required TResult Function(ChangePasswordFailure value)
        changePasswordFailure,
    required TResult Function(ChangePasswordSuccess value)
        changePasswordSuccess,
  }) {
    return updateProfileFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileLoading,
    TResult? Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult? Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult? Function(UpdateProfileloading value)? updateProfileLoading,
    TResult? Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult? Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult? Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult? Function(ChangePasswordSuccess value)? changePasswordSuccess,
  }) {
    return updateProfileFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProfileLoading value)? profileLoading,
    TResult Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult Function(UpdateProfileloading value)? updateProfileLoading,
    TResult Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult Function(ChangePasswordSuccess value)? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (updateProfileFailure != null) {
      return updateProfileFailure(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileFailure implements ProfileState {
  const factory UpdateProfileFailure(final String error) =
      _$UpdateProfileFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$UpdateProfileFailureCopyWith<_$UpdateProfileFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileSuccessCopyWith<$Res> {
  factory _$$UpdateProfileSuccessCopyWith(_$UpdateProfileSuccess value,
          $Res Function(_$UpdateProfileSuccess) then) =
      __$$UpdateProfileSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UpdateProfileSuccessCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$UpdateProfileSuccess>
    implements _$$UpdateProfileSuccessCopyWith<$Res> {
  __$$UpdateProfileSuccessCopyWithImpl(_$UpdateProfileSuccess _value,
      $Res Function(_$UpdateProfileSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UpdateProfileSuccess(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UpdateProfileSuccess implements UpdateProfileSuccess {
  const _$UpdateProfileSuccess(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'ProfileState.updateProfileSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileSuccess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileSuccessCopyWith<_$UpdateProfileSuccess> get copyWith =>
      __$$UpdateProfileSuccessCopyWithImpl<_$UpdateProfileSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileLoading,
    required TResult Function(UserModel userModel) getProfileInfoSuccess,
    required TResult Function(String error) getProfileInfoFailure,
    required TResult Function() updateProfileLoading,
    required TResult Function(String error) updateProfileFailure,
    required TResult Function(UserModel user) updateProfileSuccess,
    required TResult Function(String error) changePasswordFailure,
    required TResult Function() changePasswordSuccess,
  }) {
    return updateProfileSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileLoading,
    TResult? Function(UserModel userModel)? getProfileInfoSuccess,
    TResult? Function(String error)? getProfileInfoFailure,
    TResult? Function()? updateProfileLoading,
    TResult? Function(String error)? updateProfileFailure,
    TResult? Function(UserModel user)? updateProfileSuccess,
    TResult? Function(String error)? changePasswordFailure,
    TResult? Function()? changePasswordSuccess,
  }) {
    return updateProfileSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileLoading,
    TResult Function(UserModel userModel)? getProfileInfoSuccess,
    TResult Function(String error)? getProfileInfoFailure,
    TResult Function()? updateProfileLoading,
    TResult Function(String error)? updateProfileFailure,
    TResult Function(UserModel user)? updateProfileSuccess,
    TResult Function(String error)? changePasswordFailure,
    TResult Function()? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (updateProfileSuccess != null) {
      return updateProfileSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProfileLoading value) profileLoading,
    required TResult Function(GetProfileInfoSuccess value)
        getProfileInfoSuccess,
    required TResult Function(GetProfileInfoFailure value)
        getProfileInfoFailure,
    required TResult Function(UpdateProfileloading value) updateProfileLoading,
    required TResult Function(UpdateProfileFailure value) updateProfileFailure,
    required TResult Function(UpdateProfileSuccess value) updateProfileSuccess,
    required TResult Function(ChangePasswordFailure value)
        changePasswordFailure,
    required TResult Function(ChangePasswordSuccess value)
        changePasswordSuccess,
  }) {
    return updateProfileSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileLoading,
    TResult? Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult? Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult? Function(UpdateProfileloading value)? updateProfileLoading,
    TResult? Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult? Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult? Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult? Function(ChangePasswordSuccess value)? changePasswordSuccess,
  }) {
    return updateProfileSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProfileLoading value)? profileLoading,
    TResult Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult Function(UpdateProfileloading value)? updateProfileLoading,
    TResult Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult Function(ChangePasswordSuccess value)? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (updateProfileSuccess != null) {
      return updateProfileSuccess(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileSuccess implements ProfileState {
  const factory UpdateProfileSuccess(final UserModel user) =
      _$UpdateProfileSuccess;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$UpdateProfileSuccessCopyWith<_$UpdateProfileSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordFailureCopyWith<$Res> {
  factory _$$ChangePasswordFailureCopyWith(_$ChangePasswordFailure value,
          $Res Function(_$ChangePasswordFailure) then) =
      __$$ChangePasswordFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ChangePasswordFailureCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ChangePasswordFailure>
    implements _$$ChangePasswordFailureCopyWith<$Res> {
  __$$ChangePasswordFailureCopyWithImpl(_$ChangePasswordFailure _value,
      $Res Function(_$ChangePasswordFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ChangePasswordFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePasswordFailure implements ChangePasswordFailure {
  const _$ChangePasswordFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ProfileState.changePasswordFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordFailureCopyWith<_$ChangePasswordFailure> get copyWith =>
      __$$ChangePasswordFailureCopyWithImpl<_$ChangePasswordFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileLoading,
    required TResult Function(UserModel userModel) getProfileInfoSuccess,
    required TResult Function(String error) getProfileInfoFailure,
    required TResult Function() updateProfileLoading,
    required TResult Function(String error) updateProfileFailure,
    required TResult Function(UserModel user) updateProfileSuccess,
    required TResult Function(String error) changePasswordFailure,
    required TResult Function() changePasswordSuccess,
  }) {
    return changePasswordFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileLoading,
    TResult? Function(UserModel userModel)? getProfileInfoSuccess,
    TResult? Function(String error)? getProfileInfoFailure,
    TResult? Function()? updateProfileLoading,
    TResult? Function(String error)? updateProfileFailure,
    TResult? Function(UserModel user)? updateProfileSuccess,
    TResult? Function(String error)? changePasswordFailure,
    TResult? Function()? changePasswordSuccess,
  }) {
    return changePasswordFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileLoading,
    TResult Function(UserModel userModel)? getProfileInfoSuccess,
    TResult Function(String error)? getProfileInfoFailure,
    TResult Function()? updateProfileLoading,
    TResult Function(String error)? updateProfileFailure,
    TResult Function(UserModel user)? updateProfileSuccess,
    TResult Function(String error)? changePasswordFailure,
    TResult Function()? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (changePasswordFailure != null) {
      return changePasswordFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProfileLoading value) profileLoading,
    required TResult Function(GetProfileInfoSuccess value)
        getProfileInfoSuccess,
    required TResult Function(GetProfileInfoFailure value)
        getProfileInfoFailure,
    required TResult Function(UpdateProfileloading value) updateProfileLoading,
    required TResult Function(UpdateProfileFailure value) updateProfileFailure,
    required TResult Function(UpdateProfileSuccess value) updateProfileSuccess,
    required TResult Function(ChangePasswordFailure value)
        changePasswordFailure,
    required TResult Function(ChangePasswordSuccess value)
        changePasswordSuccess,
  }) {
    return changePasswordFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileLoading,
    TResult? Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult? Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult? Function(UpdateProfileloading value)? updateProfileLoading,
    TResult? Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult? Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult? Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult? Function(ChangePasswordSuccess value)? changePasswordSuccess,
  }) {
    return changePasswordFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProfileLoading value)? profileLoading,
    TResult Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult Function(UpdateProfileloading value)? updateProfileLoading,
    TResult Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult Function(ChangePasswordSuccess value)? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (changePasswordFailure != null) {
      return changePasswordFailure(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordFailure implements ProfileState {
  const factory ChangePasswordFailure(final String error) =
      _$ChangePasswordFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$ChangePasswordFailureCopyWith<_$ChangePasswordFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordSuccessCopyWith<$Res> {
  factory _$$ChangePasswordSuccessCopyWith(_$ChangePasswordSuccess value,
          $Res Function(_$ChangePasswordSuccess) then) =
      __$$ChangePasswordSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangePasswordSuccessCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ChangePasswordSuccess>
    implements _$$ChangePasswordSuccessCopyWith<$Res> {
  __$$ChangePasswordSuccessCopyWithImpl(_$ChangePasswordSuccess _value,
      $Res Function(_$ChangePasswordSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangePasswordSuccess implements ChangePasswordSuccess {
  const _$ChangePasswordSuccess();

  @override
  String toString() {
    return 'ProfileState.changePasswordSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangePasswordSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileLoading,
    required TResult Function(UserModel userModel) getProfileInfoSuccess,
    required TResult Function(String error) getProfileInfoFailure,
    required TResult Function() updateProfileLoading,
    required TResult Function(String error) updateProfileFailure,
    required TResult Function(UserModel user) updateProfileSuccess,
    required TResult Function(String error) changePasswordFailure,
    required TResult Function() changePasswordSuccess,
  }) {
    return changePasswordSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileLoading,
    TResult? Function(UserModel userModel)? getProfileInfoSuccess,
    TResult? Function(String error)? getProfileInfoFailure,
    TResult? Function()? updateProfileLoading,
    TResult? Function(String error)? updateProfileFailure,
    TResult? Function(UserModel user)? updateProfileSuccess,
    TResult? Function(String error)? changePasswordFailure,
    TResult? Function()? changePasswordSuccess,
  }) {
    return changePasswordSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileLoading,
    TResult Function(UserModel userModel)? getProfileInfoSuccess,
    TResult Function(String error)? getProfileInfoFailure,
    TResult Function()? updateProfileLoading,
    TResult Function(String error)? updateProfileFailure,
    TResult Function(UserModel user)? updateProfileSuccess,
    TResult Function(String error)? changePasswordFailure,
    TResult Function()? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (changePasswordSuccess != null) {
      return changePasswordSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ProfileLoading value) profileLoading,
    required TResult Function(GetProfileInfoSuccess value)
        getProfileInfoSuccess,
    required TResult Function(GetProfileInfoFailure value)
        getProfileInfoFailure,
    required TResult Function(UpdateProfileloading value) updateProfileLoading,
    required TResult Function(UpdateProfileFailure value) updateProfileFailure,
    required TResult Function(UpdateProfileSuccess value) updateProfileSuccess,
    required TResult Function(ChangePasswordFailure value)
        changePasswordFailure,
    required TResult Function(ChangePasswordSuccess value)
        changePasswordSuccess,
  }) {
    return changePasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ProfileLoading value)? profileLoading,
    TResult? Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult? Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult? Function(UpdateProfileloading value)? updateProfileLoading,
    TResult? Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult? Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult? Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult? Function(ChangePasswordSuccess value)? changePasswordSuccess,
  }) {
    return changePasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ProfileLoading value)? profileLoading,
    TResult Function(GetProfileInfoSuccess value)? getProfileInfoSuccess,
    TResult Function(GetProfileInfoFailure value)? getProfileInfoFailure,
    TResult Function(UpdateProfileloading value)? updateProfileLoading,
    TResult Function(UpdateProfileFailure value)? updateProfileFailure,
    TResult Function(UpdateProfileSuccess value)? updateProfileSuccess,
    TResult Function(ChangePasswordFailure value)? changePasswordFailure,
    TResult Function(ChangePasswordSuccess value)? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (changePasswordSuccess != null) {
      return changePasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordSuccess implements ProfileState {
  const factory ChangePasswordSuccess() = _$ChangePasswordSuccess;
}
