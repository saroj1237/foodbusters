// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'khalti_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KhaltiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            PaymentInitiationRequestModel initiationRequestModel)
        initiatePayment,
    required TResult Function(KhaltiOtpPageModel khaltiOtpPageModel, String otp)
        confirmPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PaymentInitiationRequestModel initiationRequestModel)?
        initiatePayment,
    TResult? Function(KhaltiOtpPageModel khaltiOtpPageModel, String otp)?
        confirmPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PaymentInitiationRequestModel initiationRequestModel)?
        initiatePayment,
    TResult Function(KhaltiOtpPageModel khaltiOtpPageModel, String otp)?
        confirmPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(InitiatePayment value) initiatePayment,
    required TResult Function(ConfirmPayment value) confirmPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(InitiatePayment value)? initiatePayment,
    TResult? Function(ConfirmPayment value)? confirmPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InitiatePayment value)? initiatePayment,
    TResult Function(ConfirmPayment value)? confirmPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KhaltiEventCopyWith<$Res> {
  factory $KhaltiEventCopyWith(
          KhaltiEvent value, $Res Function(KhaltiEvent) then) =
      _$KhaltiEventCopyWithImpl<$Res, KhaltiEvent>;
}

/// @nodoc
class _$KhaltiEventCopyWithImpl<$Res, $Val extends KhaltiEvent>
    implements $KhaltiEventCopyWith<$Res> {
  _$KhaltiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$KhaltiEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'KhaltiEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            PaymentInitiationRequestModel initiationRequestModel)
        initiatePayment,
    required TResult Function(KhaltiOtpPageModel khaltiOtpPageModel, String otp)
        confirmPayment,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PaymentInitiationRequestModel initiationRequestModel)?
        initiatePayment,
    TResult? Function(KhaltiOtpPageModel khaltiOtpPageModel, String otp)?
        confirmPayment,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PaymentInitiationRequestModel initiationRequestModel)?
        initiatePayment,
    TResult Function(KhaltiOtpPageModel khaltiOtpPageModel, String otp)?
        confirmPayment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(InitiatePayment value) initiatePayment,
    required TResult Function(ConfirmPayment value) confirmPayment,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(InitiatePayment value)? initiatePayment,
    TResult? Function(ConfirmPayment value)? confirmPayment,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InitiatePayment value)? initiatePayment,
    TResult Function(ConfirmPayment value)? confirmPayment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements KhaltiEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$InitiatePaymentCopyWith<$Res> {
  factory _$$InitiatePaymentCopyWith(
          _$InitiatePayment value, $Res Function(_$InitiatePayment) then) =
      __$$InitiatePaymentCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentInitiationRequestModel initiationRequestModel});
}

/// @nodoc
class __$$InitiatePaymentCopyWithImpl<$Res>
    extends _$KhaltiEventCopyWithImpl<$Res, _$InitiatePayment>
    implements _$$InitiatePaymentCopyWith<$Res> {
  __$$InitiatePaymentCopyWithImpl(
      _$InitiatePayment _value, $Res Function(_$InitiatePayment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initiationRequestModel = null,
  }) {
    return _then(_$InitiatePayment(
      null == initiationRequestModel
          ? _value.initiationRequestModel
          : initiationRequestModel // ignore: cast_nullable_to_non_nullable
              as PaymentInitiationRequestModel,
    ));
  }
}

/// @nodoc

class _$InitiatePayment implements InitiatePayment {
  const _$InitiatePayment(this.initiationRequestModel);

  @override
  final PaymentInitiationRequestModel initiationRequestModel;

  @override
  String toString() {
    return 'KhaltiEvent.initiatePayment(initiationRequestModel: $initiationRequestModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitiatePayment &&
            (identical(other.initiationRequestModel, initiationRequestModel) ||
                other.initiationRequestModel == initiationRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initiationRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitiatePaymentCopyWith<_$InitiatePayment> get copyWith =>
      __$$InitiatePaymentCopyWithImpl<_$InitiatePayment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            PaymentInitiationRequestModel initiationRequestModel)
        initiatePayment,
    required TResult Function(KhaltiOtpPageModel khaltiOtpPageModel, String otp)
        confirmPayment,
  }) {
    return initiatePayment(initiationRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PaymentInitiationRequestModel initiationRequestModel)?
        initiatePayment,
    TResult? Function(KhaltiOtpPageModel khaltiOtpPageModel, String otp)?
        confirmPayment,
  }) {
    return initiatePayment?.call(initiationRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PaymentInitiationRequestModel initiationRequestModel)?
        initiatePayment,
    TResult Function(KhaltiOtpPageModel khaltiOtpPageModel, String otp)?
        confirmPayment,
    required TResult orElse(),
  }) {
    if (initiatePayment != null) {
      return initiatePayment(initiationRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(InitiatePayment value) initiatePayment,
    required TResult Function(ConfirmPayment value) confirmPayment,
  }) {
    return initiatePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(InitiatePayment value)? initiatePayment,
    TResult? Function(ConfirmPayment value)? confirmPayment,
  }) {
    return initiatePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InitiatePayment value)? initiatePayment,
    TResult Function(ConfirmPayment value)? confirmPayment,
    required TResult orElse(),
  }) {
    if (initiatePayment != null) {
      return initiatePayment(this);
    }
    return orElse();
  }
}

abstract class InitiatePayment implements KhaltiEvent {
  const factory InitiatePayment(
          final PaymentInitiationRequestModel initiationRequestModel) =
      _$InitiatePayment;

  PaymentInitiationRequestModel get initiationRequestModel;
  @JsonKey(ignore: true)
  _$$InitiatePaymentCopyWith<_$InitiatePayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPaymentCopyWith<$Res> {
  factory _$$ConfirmPaymentCopyWith(
          _$ConfirmPayment value, $Res Function(_$ConfirmPayment) then) =
      __$$ConfirmPaymentCopyWithImpl<$Res>;
  @useResult
  $Res call({KhaltiOtpPageModel khaltiOtpPageModel, String otp});
}

/// @nodoc
class __$$ConfirmPaymentCopyWithImpl<$Res>
    extends _$KhaltiEventCopyWithImpl<$Res, _$ConfirmPayment>
    implements _$$ConfirmPaymentCopyWith<$Res> {
  __$$ConfirmPaymentCopyWithImpl(
      _$ConfirmPayment _value, $Res Function(_$ConfirmPayment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? khaltiOtpPageModel = null,
    Object? otp = null,
  }) {
    return _then(_$ConfirmPayment(
      null == khaltiOtpPageModel
          ? _value.khaltiOtpPageModel
          : khaltiOtpPageModel // ignore: cast_nullable_to_non_nullable
              as KhaltiOtpPageModel,
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPayment implements ConfirmPayment {
  const _$ConfirmPayment(this.khaltiOtpPageModel, this.otp);

  @override
  final KhaltiOtpPageModel khaltiOtpPageModel;
  @override
  final String otp;

  @override
  String toString() {
    return 'KhaltiEvent.confirmPayment(khaltiOtpPageModel: $khaltiOtpPageModel, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPayment &&
            (identical(other.khaltiOtpPageModel, khaltiOtpPageModel) ||
                other.khaltiOtpPageModel == khaltiOtpPageModel) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, khaltiOtpPageModel, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPaymentCopyWith<_$ConfirmPayment> get copyWith =>
      __$$ConfirmPaymentCopyWithImpl<_$ConfirmPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            PaymentInitiationRequestModel initiationRequestModel)
        initiatePayment,
    required TResult Function(KhaltiOtpPageModel khaltiOtpPageModel, String otp)
        confirmPayment,
  }) {
    return confirmPayment(khaltiOtpPageModel, otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(PaymentInitiationRequestModel initiationRequestModel)?
        initiatePayment,
    TResult? Function(KhaltiOtpPageModel khaltiOtpPageModel, String otp)?
        confirmPayment,
  }) {
    return confirmPayment?.call(khaltiOtpPageModel, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PaymentInitiationRequestModel initiationRequestModel)?
        initiatePayment,
    TResult Function(KhaltiOtpPageModel khaltiOtpPageModel, String otp)?
        confirmPayment,
    required TResult orElse(),
  }) {
    if (confirmPayment != null) {
      return confirmPayment(khaltiOtpPageModel, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(InitiatePayment value) initiatePayment,
    required TResult Function(ConfirmPayment value) confirmPayment,
  }) {
    return confirmPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(InitiatePayment value)? initiatePayment,
    TResult? Function(ConfirmPayment value)? confirmPayment,
  }) {
    return confirmPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InitiatePayment value)? initiatePayment,
    TResult Function(ConfirmPayment value)? confirmPayment,
    required TResult orElse(),
  }) {
    if (confirmPayment != null) {
      return confirmPayment(this);
    }
    return orElse();
  }
}

abstract class ConfirmPayment implements KhaltiEvent {
  const factory ConfirmPayment(
          final KhaltiOtpPageModel khaltiOtpPageModel, final String otp) =
      _$ConfirmPayment;

  KhaltiOtpPageModel get khaltiOtpPageModel;
  String get otp;
  @JsonKey(ignore: true)
  _$$ConfirmPaymentCopyWith<_$ConfirmPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$KhaltiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() khaltiPayLoading,
    required TResult Function(String error) initiatePaymentFailure,
    required TResult Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)
        initiatePaymentSuccess,
    required TResult Function(String error) confirmPaymentFailure,
    required TResult Function(PaymentSuccessModel paymentSuccessModel)
        confirmPaymentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? khaltiPayLoading,
    TResult? Function(String error)? initiatePaymentFailure,
    TResult? Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)?
        initiatePaymentSuccess,
    TResult? Function(String error)? confirmPaymentFailure,
    TResult? Function(PaymentSuccessModel paymentSuccessModel)?
        confirmPaymentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? khaltiPayLoading,
    TResult Function(String error)? initiatePaymentFailure,
    TResult Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)?
        initiatePaymentSuccess,
    TResult Function(String error)? confirmPaymentFailure,
    TResult Function(PaymentSuccessModel paymentSuccessModel)?
        confirmPaymentSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(KhaltiPayLoading value) khaltiPayLoading,
    required TResult Function(InitiatePayFailure value) initiatePaymentFailure,
    required TResult Function(InitiatePaySuccess value) initiatePaymentSuccess,
    required TResult Function(ConfirmPayFailure value) confirmPaymentFailure,
    required TResult Function(ConfirmPaySuccess value) confirmPaymentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(KhaltiPayLoading value)? khaltiPayLoading,
    TResult? Function(InitiatePayFailure value)? initiatePaymentFailure,
    TResult? Function(InitiatePaySuccess value)? initiatePaymentSuccess,
    TResult? Function(ConfirmPayFailure value)? confirmPaymentFailure,
    TResult? Function(ConfirmPaySuccess value)? confirmPaymentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(KhaltiPayLoading value)? khaltiPayLoading,
    TResult Function(InitiatePayFailure value)? initiatePaymentFailure,
    TResult Function(InitiatePaySuccess value)? initiatePaymentSuccess,
    TResult Function(ConfirmPayFailure value)? confirmPaymentFailure,
    TResult Function(ConfirmPaySuccess value)? confirmPaymentSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KhaltiStateCopyWith<$Res> {
  factory $KhaltiStateCopyWith(
          KhaltiState value, $Res Function(KhaltiState) then) =
      _$KhaltiStateCopyWithImpl<$Res, KhaltiState>;
}

/// @nodoc
class _$KhaltiStateCopyWithImpl<$Res, $Val extends KhaltiState>
    implements $KhaltiStateCopyWith<$Res> {
  _$KhaltiStateCopyWithImpl(this._value, this._then);

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
    extends _$KhaltiStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'KhaltiState.initial()';
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
    required TResult Function() khaltiPayLoading,
    required TResult Function(String error) initiatePaymentFailure,
    required TResult Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)
        initiatePaymentSuccess,
    required TResult Function(String error) confirmPaymentFailure,
    required TResult Function(PaymentSuccessModel paymentSuccessModel)
        confirmPaymentSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? khaltiPayLoading,
    TResult? Function(String error)? initiatePaymentFailure,
    TResult? Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)?
        initiatePaymentSuccess,
    TResult? Function(String error)? confirmPaymentFailure,
    TResult? Function(PaymentSuccessModel paymentSuccessModel)?
        confirmPaymentSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? khaltiPayLoading,
    TResult Function(String error)? initiatePaymentFailure,
    TResult Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)?
        initiatePaymentSuccess,
    TResult Function(String error)? confirmPaymentFailure,
    TResult Function(PaymentSuccessModel paymentSuccessModel)?
        confirmPaymentSuccess,
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
    required TResult Function(KhaltiPayLoading value) khaltiPayLoading,
    required TResult Function(InitiatePayFailure value) initiatePaymentFailure,
    required TResult Function(InitiatePaySuccess value) initiatePaymentSuccess,
    required TResult Function(ConfirmPayFailure value) confirmPaymentFailure,
    required TResult Function(ConfirmPaySuccess value) confirmPaymentSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(KhaltiPayLoading value)? khaltiPayLoading,
    TResult? Function(InitiatePayFailure value)? initiatePaymentFailure,
    TResult? Function(InitiatePaySuccess value)? initiatePaymentSuccess,
    TResult? Function(ConfirmPayFailure value)? confirmPaymentFailure,
    TResult? Function(ConfirmPaySuccess value)? confirmPaymentSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(KhaltiPayLoading value)? khaltiPayLoading,
    TResult Function(InitiatePayFailure value)? initiatePaymentFailure,
    TResult Function(InitiatePaySuccess value)? initiatePaymentSuccess,
    TResult Function(ConfirmPayFailure value)? confirmPaymentFailure,
    TResult Function(ConfirmPaySuccess value)? confirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements KhaltiState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$KhaltiPayLoadingCopyWith<$Res> {
  factory _$$KhaltiPayLoadingCopyWith(
          _$KhaltiPayLoading value, $Res Function(_$KhaltiPayLoading) then) =
      __$$KhaltiPayLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KhaltiPayLoadingCopyWithImpl<$Res>
    extends _$KhaltiStateCopyWithImpl<$Res, _$KhaltiPayLoading>
    implements _$$KhaltiPayLoadingCopyWith<$Res> {
  __$$KhaltiPayLoadingCopyWithImpl(
      _$KhaltiPayLoading _value, $Res Function(_$KhaltiPayLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KhaltiPayLoading implements KhaltiPayLoading {
  const _$KhaltiPayLoading();

  @override
  String toString() {
    return 'KhaltiState.khaltiPayLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$KhaltiPayLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() khaltiPayLoading,
    required TResult Function(String error) initiatePaymentFailure,
    required TResult Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)
        initiatePaymentSuccess,
    required TResult Function(String error) confirmPaymentFailure,
    required TResult Function(PaymentSuccessModel paymentSuccessModel)
        confirmPaymentSuccess,
  }) {
    return khaltiPayLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? khaltiPayLoading,
    TResult? Function(String error)? initiatePaymentFailure,
    TResult? Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)?
        initiatePaymentSuccess,
    TResult? Function(String error)? confirmPaymentFailure,
    TResult? Function(PaymentSuccessModel paymentSuccessModel)?
        confirmPaymentSuccess,
  }) {
    return khaltiPayLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? khaltiPayLoading,
    TResult Function(String error)? initiatePaymentFailure,
    TResult Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)?
        initiatePaymentSuccess,
    TResult Function(String error)? confirmPaymentFailure,
    TResult Function(PaymentSuccessModel paymentSuccessModel)?
        confirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (khaltiPayLoading != null) {
      return khaltiPayLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(KhaltiPayLoading value) khaltiPayLoading,
    required TResult Function(InitiatePayFailure value) initiatePaymentFailure,
    required TResult Function(InitiatePaySuccess value) initiatePaymentSuccess,
    required TResult Function(ConfirmPayFailure value) confirmPaymentFailure,
    required TResult Function(ConfirmPaySuccess value) confirmPaymentSuccess,
  }) {
    return khaltiPayLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(KhaltiPayLoading value)? khaltiPayLoading,
    TResult? Function(InitiatePayFailure value)? initiatePaymentFailure,
    TResult? Function(InitiatePaySuccess value)? initiatePaymentSuccess,
    TResult? Function(ConfirmPayFailure value)? confirmPaymentFailure,
    TResult? Function(ConfirmPaySuccess value)? confirmPaymentSuccess,
  }) {
    return khaltiPayLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(KhaltiPayLoading value)? khaltiPayLoading,
    TResult Function(InitiatePayFailure value)? initiatePaymentFailure,
    TResult Function(InitiatePaySuccess value)? initiatePaymentSuccess,
    TResult Function(ConfirmPayFailure value)? confirmPaymentFailure,
    TResult Function(ConfirmPaySuccess value)? confirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (khaltiPayLoading != null) {
      return khaltiPayLoading(this);
    }
    return orElse();
  }
}

abstract class KhaltiPayLoading implements KhaltiState {
  const factory KhaltiPayLoading() = _$KhaltiPayLoading;
}

/// @nodoc
abstract class _$$InitiatePayFailureCopyWith<$Res> {
  factory _$$InitiatePayFailureCopyWith(_$InitiatePayFailure value,
          $Res Function(_$InitiatePayFailure) then) =
      __$$InitiatePayFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$InitiatePayFailureCopyWithImpl<$Res>
    extends _$KhaltiStateCopyWithImpl<$Res, _$InitiatePayFailure>
    implements _$$InitiatePayFailureCopyWith<$Res> {
  __$$InitiatePayFailureCopyWithImpl(
      _$InitiatePayFailure _value, $Res Function(_$InitiatePayFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$InitiatePayFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitiatePayFailure implements InitiatePayFailure {
  const _$InitiatePayFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'KhaltiState.initiatePaymentFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitiatePayFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitiatePayFailureCopyWith<_$InitiatePayFailure> get copyWith =>
      __$$InitiatePayFailureCopyWithImpl<_$InitiatePayFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() khaltiPayLoading,
    required TResult Function(String error) initiatePaymentFailure,
    required TResult Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)
        initiatePaymentSuccess,
    required TResult Function(String error) confirmPaymentFailure,
    required TResult Function(PaymentSuccessModel paymentSuccessModel)
        confirmPaymentSuccess,
  }) {
    return initiatePaymentFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? khaltiPayLoading,
    TResult? Function(String error)? initiatePaymentFailure,
    TResult? Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)?
        initiatePaymentSuccess,
    TResult? Function(String error)? confirmPaymentFailure,
    TResult? Function(PaymentSuccessModel paymentSuccessModel)?
        confirmPaymentSuccess,
  }) {
    return initiatePaymentFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? khaltiPayLoading,
    TResult Function(String error)? initiatePaymentFailure,
    TResult Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)?
        initiatePaymentSuccess,
    TResult Function(String error)? confirmPaymentFailure,
    TResult Function(PaymentSuccessModel paymentSuccessModel)?
        confirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (initiatePaymentFailure != null) {
      return initiatePaymentFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(KhaltiPayLoading value) khaltiPayLoading,
    required TResult Function(InitiatePayFailure value) initiatePaymentFailure,
    required TResult Function(InitiatePaySuccess value) initiatePaymentSuccess,
    required TResult Function(ConfirmPayFailure value) confirmPaymentFailure,
    required TResult Function(ConfirmPaySuccess value) confirmPaymentSuccess,
  }) {
    return initiatePaymentFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(KhaltiPayLoading value)? khaltiPayLoading,
    TResult? Function(InitiatePayFailure value)? initiatePaymentFailure,
    TResult? Function(InitiatePaySuccess value)? initiatePaymentSuccess,
    TResult? Function(ConfirmPayFailure value)? confirmPaymentFailure,
    TResult? Function(ConfirmPaySuccess value)? confirmPaymentSuccess,
  }) {
    return initiatePaymentFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(KhaltiPayLoading value)? khaltiPayLoading,
    TResult Function(InitiatePayFailure value)? initiatePaymentFailure,
    TResult Function(InitiatePaySuccess value)? initiatePaymentSuccess,
    TResult Function(ConfirmPayFailure value)? confirmPaymentFailure,
    TResult Function(ConfirmPaySuccess value)? confirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (initiatePaymentFailure != null) {
      return initiatePaymentFailure(this);
    }
    return orElse();
  }
}

abstract class InitiatePayFailure implements KhaltiState {
  const factory InitiatePayFailure(final String error) = _$InitiatePayFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$InitiatePayFailureCopyWith<_$InitiatePayFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitiatePaySuccessCopyWith<$Res> {
  factory _$$InitiatePaySuccessCopyWith(_$InitiatePaySuccess value,
          $Res Function(_$InitiatePaySuccess) then) =
      __$$InitiatePaySuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PaymentInitiationResponseModel paymentInitiationResponseModel,
      String mpin});
}

/// @nodoc
class __$$InitiatePaySuccessCopyWithImpl<$Res>
    extends _$KhaltiStateCopyWithImpl<$Res, _$InitiatePaySuccess>
    implements _$$InitiatePaySuccessCopyWith<$Res> {
  __$$InitiatePaySuccessCopyWithImpl(
      _$InitiatePaySuccess _value, $Res Function(_$InitiatePaySuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentInitiationResponseModel = null,
    Object? mpin = null,
  }) {
    return _then(_$InitiatePaySuccess(
      paymentInitiationResponseModel: null == paymentInitiationResponseModel
          ? _value.paymentInitiationResponseModel
          : paymentInitiationResponseModel // ignore: cast_nullable_to_non_nullable
              as PaymentInitiationResponseModel,
      mpin: null == mpin
          ? _value.mpin
          : mpin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitiatePaySuccess implements InitiatePaySuccess {
  const _$InitiatePaySuccess(
      {required this.paymentInitiationResponseModel, required this.mpin});

  @override
  final PaymentInitiationResponseModel paymentInitiationResponseModel;
  @override
  final String mpin;

  @override
  String toString() {
    return 'KhaltiState.initiatePaymentSuccess(paymentInitiationResponseModel: $paymentInitiationResponseModel, mpin: $mpin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitiatePaySuccess &&
            (identical(other.paymentInitiationResponseModel,
                    paymentInitiationResponseModel) ||
                other.paymentInitiationResponseModel ==
                    paymentInitiationResponseModel) &&
            (identical(other.mpin, mpin) || other.mpin == mpin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, paymentInitiationResponseModel, mpin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitiatePaySuccessCopyWith<_$InitiatePaySuccess> get copyWith =>
      __$$InitiatePaySuccessCopyWithImpl<_$InitiatePaySuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() khaltiPayLoading,
    required TResult Function(String error) initiatePaymentFailure,
    required TResult Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)
        initiatePaymentSuccess,
    required TResult Function(String error) confirmPaymentFailure,
    required TResult Function(PaymentSuccessModel paymentSuccessModel)
        confirmPaymentSuccess,
  }) {
    return initiatePaymentSuccess(paymentInitiationResponseModel, mpin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? khaltiPayLoading,
    TResult? Function(String error)? initiatePaymentFailure,
    TResult? Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)?
        initiatePaymentSuccess,
    TResult? Function(String error)? confirmPaymentFailure,
    TResult? Function(PaymentSuccessModel paymentSuccessModel)?
        confirmPaymentSuccess,
  }) {
    return initiatePaymentSuccess?.call(paymentInitiationResponseModel, mpin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? khaltiPayLoading,
    TResult Function(String error)? initiatePaymentFailure,
    TResult Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)?
        initiatePaymentSuccess,
    TResult Function(String error)? confirmPaymentFailure,
    TResult Function(PaymentSuccessModel paymentSuccessModel)?
        confirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (initiatePaymentSuccess != null) {
      return initiatePaymentSuccess(paymentInitiationResponseModel, mpin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(KhaltiPayLoading value) khaltiPayLoading,
    required TResult Function(InitiatePayFailure value) initiatePaymentFailure,
    required TResult Function(InitiatePaySuccess value) initiatePaymentSuccess,
    required TResult Function(ConfirmPayFailure value) confirmPaymentFailure,
    required TResult Function(ConfirmPaySuccess value) confirmPaymentSuccess,
  }) {
    return initiatePaymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(KhaltiPayLoading value)? khaltiPayLoading,
    TResult? Function(InitiatePayFailure value)? initiatePaymentFailure,
    TResult? Function(InitiatePaySuccess value)? initiatePaymentSuccess,
    TResult? Function(ConfirmPayFailure value)? confirmPaymentFailure,
    TResult? Function(ConfirmPaySuccess value)? confirmPaymentSuccess,
  }) {
    return initiatePaymentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(KhaltiPayLoading value)? khaltiPayLoading,
    TResult Function(InitiatePayFailure value)? initiatePaymentFailure,
    TResult Function(InitiatePaySuccess value)? initiatePaymentSuccess,
    TResult Function(ConfirmPayFailure value)? confirmPaymentFailure,
    TResult Function(ConfirmPaySuccess value)? confirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (initiatePaymentSuccess != null) {
      return initiatePaymentSuccess(this);
    }
    return orElse();
  }
}

abstract class InitiatePaySuccess implements KhaltiState {
  const factory InitiatePaySuccess(
      {required final PaymentInitiationResponseModel
          paymentInitiationResponseModel,
      required final String mpin}) = _$InitiatePaySuccess;

  PaymentInitiationResponseModel get paymentInitiationResponseModel;
  String get mpin;
  @JsonKey(ignore: true)
  _$$InitiatePaySuccessCopyWith<_$InitiatePaySuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPayFailureCopyWith<$Res> {
  factory _$$ConfirmPayFailureCopyWith(
          _$ConfirmPayFailure value, $Res Function(_$ConfirmPayFailure) then) =
      __$$ConfirmPayFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ConfirmPayFailureCopyWithImpl<$Res>
    extends _$KhaltiStateCopyWithImpl<$Res, _$ConfirmPayFailure>
    implements _$$ConfirmPayFailureCopyWith<$Res> {
  __$$ConfirmPayFailureCopyWithImpl(
      _$ConfirmPayFailure _value, $Res Function(_$ConfirmPayFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ConfirmPayFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPayFailure implements ConfirmPayFailure {
  const _$ConfirmPayFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'KhaltiState.confirmPaymentFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPayFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPayFailureCopyWith<_$ConfirmPayFailure> get copyWith =>
      __$$ConfirmPayFailureCopyWithImpl<_$ConfirmPayFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() khaltiPayLoading,
    required TResult Function(String error) initiatePaymentFailure,
    required TResult Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)
        initiatePaymentSuccess,
    required TResult Function(String error) confirmPaymentFailure,
    required TResult Function(PaymentSuccessModel paymentSuccessModel)
        confirmPaymentSuccess,
  }) {
    return confirmPaymentFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? khaltiPayLoading,
    TResult? Function(String error)? initiatePaymentFailure,
    TResult? Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)?
        initiatePaymentSuccess,
    TResult? Function(String error)? confirmPaymentFailure,
    TResult? Function(PaymentSuccessModel paymentSuccessModel)?
        confirmPaymentSuccess,
  }) {
    return confirmPaymentFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? khaltiPayLoading,
    TResult Function(String error)? initiatePaymentFailure,
    TResult Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)?
        initiatePaymentSuccess,
    TResult Function(String error)? confirmPaymentFailure,
    TResult Function(PaymentSuccessModel paymentSuccessModel)?
        confirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (confirmPaymentFailure != null) {
      return confirmPaymentFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(KhaltiPayLoading value) khaltiPayLoading,
    required TResult Function(InitiatePayFailure value) initiatePaymentFailure,
    required TResult Function(InitiatePaySuccess value) initiatePaymentSuccess,
    required TResult Function(ConfirmPayFailure value) confirmPaymentFailure,
    required TResult Function(ConfirmPaySuccess value) confirmPaymentSuccess,
  }) {
    return confirmPaymentFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(KhaltiPayLoading value)? khaltiPayLoading,
    TResult? Function(InitiatePayFailure value)? initiatePaymentFailure,
    TResult? Function(InitiatePaySuccess value)? initiatePaymentSuccess,
    TResult? Function(ConfirmPayFailure value)? confirmPaymentFailure,
    TResult? Function(ConfirmPaySuccess value)? confirmPaymentSuccess,
  }) {
    return confirmPaymentFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(KhaltiPayLoading value)? khaltiPayLoading,
    TResult Function(InitiatePayFailure value)? initiatePaymentFailure,
    TResult Function(InitiatePaySuccess value)? initiatePaymentSuccess,
    TResult Function(ConfirmPayFailure value)? confirmPaymentFailure,
    TResult Function(ConfirmPaySuccess value)? confirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (confirmPaymentFailure != null) {
      return confirmPaymentFailure(this);
    }
    return orElse();
  }
}

abstract class ConfirmPayFailure implements KhaltiState {
  const factory ConfirmPayFailure(final String error) = _$ConfirmPayFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$ConfirmPayFailureCopyWith<_$ConfirmPayFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPaySuccessCopyWith<$Res> {
  factory _$$ConfirmPaySuccessCopyWith(
          _$ConfirmPaySuccess value, $Res Function(_$ConfirmPaySuccess) then) =
      __$$ConfirmPaySuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentSuccessModel paymentSuccessModel});
}

/// @nodoc
class __$$ConfirmPaySuccessCopyWithImpl<$Res>
    extends _$KhaltiStateCopyWithImpl<$Res, _$ConfirmPaySuccess>
    implements _$$ConfirmPaySuccessCopyWith<$Res> {
  __$$ConfirmPaySuccessCopyWithImpl(
      _$ConfirmPaySuccess _value, $Res Function(_$ConfirmPaySuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentSuccessModel = null,
  }) {
    return _then(_$ConfirmPaySuccess(
      paymentSuccessModel: null == paymentSuccessModel
          ? _value.paymentSuccessModel
          : paymentSuccessModel // ignore: cast_nullable_to_non_nullable
              as PaymentSuccessModel,
    ));
  }
}

/// @nodoc

class _$ConfirmPaySuccess implements ConfirmPaySuccess {
  const _$ConfirmPaySuccess({required this.paymentSuccessModel});

  @override
  final PaymentSuccessModel paymentSuccessModel;

  @override
  String toString() {
    return 'KhaltiState.confirmPaymentSuccess(paymentSuccessModel: $paymentSuccessModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPaySuccess &&
            (identical(other.paymentSuccessModel, paymentSuccessModel) ||
                other.paymentSuccessModel == paymentSuccessModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentSuccessModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPaySuccessCopyWith<_$ConfirmPaySuccess> get copyWith =>
      __$$ConfirmPaySuccessCopyWithImpl<_$ConfirmPaySuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() khaltiPayLoading,
    required TResult Function(String error) initiatePaymentFailure,
    required TResult Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)
        initiatePaymentSuccess,
    required TResult Function(String error) confirmPaymentFailure,
    required TResult Function(PaymentSuccessModel paymentSuccessModel)
        confirmPaymentSuccess,
  }) {
    return confirmPaymentSuccess(paymentSuccessModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? khaltiPayLoading,
    TResult? Function(String error)? initiatePaymentFailure,
    TResult? Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)?
        initiatePaymentSuccess,
    TResult? Function(String error)? confirmPaymentFailure,
    TResult? Function(PaymentSuccessModel paymentSuccessModel)?
        confirmPaymentSuccess,
  }) {
    return confirmPaymentSuccess?.call(paymentSuccessModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? khaltiPayLoading,
    TResult Function(String error)? initiatePaymentFailure,
    TResult Function(
            PaymentInitiationResponseModel paymentInitiationResponseModel,
            String mpin)?
        initiatePaymentSuccess,
    TResult Function(String error)? confirmPaymentFailure,
    TResult Function(PaymentSuccessModel paymentSuccessModel)?
        confirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (confirmPaymentSuccess != null) {
      return confirmPaymentSuccess(paymentSuccessModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(KhaltiPayLoading value) khaltiPayLoading,
    required TResult Function(InitiatePayFailure value) initiatePaymentFailure,
    required TResult Function(InitiatePaySuccess value) initiatePaymentSuccess,
    required TResult Function(ConfirmPayFailure value) confirmPaymentFailure,
    required TResult Function(ConfirmPaySuccess value) confirmPaymentSuccess,
  }) {
    return confirmPaymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(KhaltiPayLoading value)? khaltiPayLoading,
    TResult? Function(InitiatePayFailure value)? initiatePaymentFailure,
    TResult? Function(InitiatePaySuccess value)? initiatePaymentSuccess,
    TResult? Function(ConfirmPayFailure value)? confirmPaymentFailure,
    TResult? Function(ConfirmPaySuccess value)? confirmPaymentSuccess,
  }) {
    return confirmPaymentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(KhaltiPayLoading value)? khaltiPayLoading,
    TResult Function(InitiatePayFailure value)? initiatePaymentFailure,
    TResult Function(InitiatePaySuccess value)? initiatePaymentSuccess,
    TResult Function(ConfirmPayFailure value)? confirmPaymentFailure,
    TResult Function(ConfirmPaySuccess value)? confirmPaymentSuccess,
    required TResult orElse(),
  }) {
    if (confirmPaymentSuccess != null) {
      return confirmPaymentSuccess(this);
    }
    return orElse();
  }
}

abstract class ConfirmPaySuccess implements KhaltiState {
  const factory ConfirmPaySuccess(
          {required final PaymentSuccessModel paymentSuccessModel}) =
      _$ConfirmPaySuccess;

  PaymentSuccessModel get paymentSuccessModel;
  @JsonKey(ignore: true)
  _$$ConfirmPaySuccessCopyWith<_$ConfirmPaySuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
