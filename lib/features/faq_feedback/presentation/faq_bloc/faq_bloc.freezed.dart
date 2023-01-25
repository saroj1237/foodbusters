// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'faq_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FAQEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFaq,
    required TResult Function(String feedback) addFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFaq,
    TResult? Function(String feedback)? addFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFaq,
    TResult Function(String feedback)? addFeedback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFaq value) getFaq,
    required TResult Function(AddFeedback value) addFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFaq value)? getFaq,
    TResult? Function(AddFeedback value)? addFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFaq value)? getFaq,
    TResult Function(AddFeedback value)? addFeedback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQEventCopyWith<$Res> {
  factory $FAQEventCopyWith(FAQEvent value, $Res Function(FAQEvent) then) =
      _$FAQEventCopyWithImpl<$Res, FAQEvent>;
}

/// @nodoc
class _$FAQEventCopyWithImpl<$Res, $Val extends FAQEvent>
    implements $FAQEventCopyWith<$Res> {
  _$FAQEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFaqCopyWith<$Res> {
  factory _$$GetFaqCopyWith(_$GetFaq value, $Res Function(_$GetFaq) then) =
      __$$GetFaqCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFaqCopyWithImpl<$Res>
    extends _$FAQEventCopyWithImpl<$Res, _$GetFaq>
    implements _$$GetFaqCopyWith<$Res> {
  __$$GetFaqCopyWithImpl(_$GetFaq _value, $Res Function(_$GetFaq) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFaq implements GetFaq {
  const _$GetFaq();

  @override
  String toString() {
    return 'FAQEvent.getFaq()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFaq);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFaq,
    required TResult Function(String feedback) addFeedback,
  }) {
    return getFaq();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFaq,
    TResult? Function(String feedback)? addFeedback,
  }) {
    return getFaq?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFaq,
    TResult Function(String feedback)? addFeedback,
    required TResult orElse(),
  }) {
    if (getFaq != null) {
      return getFaq();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFaq value) getFaq,
    required TResult Function(AddFeedback value) addFeedback,
  }) {
    return getFaq(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFaq value)? getFaq,
    TResult? Function(AddFeedback value)? addFeedback,
  }) {
    return getFaq?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFaq value)? getFaq,
    TResult Function(AddFeedback value)? addFeedback,
    required TResult orElse(),
  }) {
    if (getFaq != null) {
      return getFaq(this);
    }
    return orElse();
  }
}

abstract class GetFaq implements FAQEvent {
  const factory GetFaq() = _$GetFaq;
}

/// @nodoc
abstract class _$$AddFeedbackCopyWith<$Res> {
  factory _$$AddFeedbackCopyWith(
          _$AddFeedback value, $Res Function(_$AddFeedback) then) =
      __$$AddFeedbackCopyWithImpl<$Res>;
  @useResult
  $Res call({String feedback});
}

/// @nodoc
class __$$AddFeedbackCopyWithImpl<$Res>
    extends _$FAQEventCopyWithImpl<$Res, _$AddFeedback>
    implements _$$AddFeedbackCopyWith<$Res> {
  __$$AddFeedbackCopyWithImpl(
      _$AddFeedback _value, $Res Function(_$AddFeedback) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedback = null,
  }) {
    return _then(_$AddFeedback(
      null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddFeedback implements AddFeedback {
  const _$AddFeedback(this.feedback);

  @override
  final String feedback;

  @override
  String toString() {
    return 'FAQEvent.addFeedback(feedback: $feedback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFeedback &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFeedbackCopyWith<_$AddFeedback> get copyWith =>
      __$$AddFeedbackCopyWithImpl<_$AddFeedback>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFaq,
    required TResult Function(String feedback) addFeedback,
  }) {
    return addFeedback(feedback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFaq,
    TResult? Function(String feedback)? addFeedback,
  }) {
    return addFeedback?.call(feedback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFaq,
    TResult Function(String feedback)? addFeedback,
    required TResult orElse(),
  }) {
    if (addFeedback != null) {
      return addFeedback(feedback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFaq value) getFaq,
    required TResult Function(AddFeedback value) addFeedback,
  }) {
    return addFeedback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFaq value)? getFaq,
    TResult? Function(AddFeedback value)? addFeedback,
  }) {
    return addFeedback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFaq value)? getFaq,
    TResult Function(AddFeedback value)? addFeedback,
    required TResult orElse(),
  }) {
    if (addFeedback != null) {
      return addFeedback(this);
    }
    return orElse();
  }
}

abstract class AddFeedback implements FAQEvent {
  const factory AddFeedback(final String feedback) = _$AddFeedback;

  String get feedback;
  @JsonKey(ignore: true)
  _$$AddFeedbackCopyWith<_$AddFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FAQState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() faqInitial,
    required TResult Function() faqLoading,
    required TResult Function(String error) faqError,
    required TResult Function(List<FAQ> faq) faqLoaded,
    required TResult Function() feedbackLoading,
    required TResult Function(String successMessage) addFeedbackSuccess,
    required TResult Function(String error) addFeedbackFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? faqInitial,
    TResult? Function()? faqLoading,
    TResult? Function(String error)? faqError,
    TResult? Function(List<FAQ> faq)? faqLoaded,
    TResult? Function()? feedbackLoading,
    TResult? Function(String successMessage)? addFeedbackSuccess,
    TResult? Function(String error)? addFeedbackFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? faqInitial,
    TResult Function()? faqLoading,
    TResult Function(String error)? faqError,
    TResult Function(List<FAQ> faq)? faqLoaded,
    TResult Function()? feedbackLoading,
    TResult Function(String successMessage)? addFeedbackSuccess,
    TResult Function(String error)? addFeedbackFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FaqInitial value) faqInitial,
    required TResult Function(FaqLoading value) faqLoading,
    required TResult Function(FaqError value) faqError,
    required TResult Function(FaqLoaded value) faqLoaded,
    required TResult Function(FeedbackLoading value) feedbackLoading,
    required TResult Function(AddFeedBackSuccess value) addFeedbackSuccess,
    required TResult Function(AddFeedBackFailure value) addFeedbackFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqInitial value)? faqInitial,
    TResult? Function(FaqLoading value)? faqLoading,
    TResult? Function(FaqError value)? faqError,
    TResult? Function(FaqLoaded value)? faqLoaded,
    TResult? Function(FeedbackLoading value)? feedbackLoading,
    TResult? Function(AddFeedBackSuccess value)? addFeedbackSuccess,
    TResult? Function(AddFeedBackFailure value)? addFeedbackFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqInitial value)? faqInitial,
    TResult Function(FaqLoading value)? faqLoading,
    TResult Function(FaqError value)? faqError,
    TResult Function(FaqLoaded value)? faqLoaded,
    TResult Function(FeedbackLoading value)? feedbackLoading,
    TResult Function(AddFeedBackSuccess value)? addFeedbackSuccess,
    TResult Function(AddFeedBackFailure value)? addFeedbackFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQStateCopyWith<$Res> {
  factory $FAQStateCopyWith(FAQState value, $Res Function(FAQState) then) =
      _$FAQStateCopyWithImpl<$Res, FAQState>;
}

/// @nodoc
class _$FAQStateCopyWithImpl<$Res, $Val extends FAQState>
    implements $FAQStateCopyWith<$Res> {
  _$FAQStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FaqInitialCopyWith<$Res> {
  factory _$$FaqInitialCopyWith(
          _$FaqInitial value, $Res Function(_$FaqInitial) then) =
      __$$FaqInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FaqInitialCopyWithImpl<$Res>
    extends _$FAQStateCopyWithImpl<$Res, _$FaqInitial>
    implements _$$FaqInitialCopyWith<$Res> {
  __$$FaqInitialCopyWithImpl(
      _$FaqInitial _value, $Res Function(_$FaqInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FaqInitial implements FaqInitial {
  const _$FaqInitial();

  @override
  String toString() {
    return 'FAQState.faqInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FaqInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() faqInitial,
    required TResult Function() faqLoading,
    required TResult Function(String error) faqError,
    required TResult Function(List<FAQ> faq) faqLoaded,
    required TResult Function() feedbackLoading,
    required TResult Function(String successMessage) addFeedbackSuccess,
    required TResult Function(String error) addFeedbackFailure,
  }) {
    return faqInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? faqInitial,
    TResult? Function()? faqLoading,
    TResult? Function(String error)? faqError,
    TResult? Function(List<FAQ> faq)? faqLoaded,
    TResult? Function()? feedbackLoading,
    TResult? Function(String successMessage)? addFeedbackSuccess,
    TResult? Function(String error)? addFeedbackFailure,
  }) {
    return faqInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? faqInitial,
    TResult Function()? faqLoading,
    TResult Function(String error)? faqError,
    TResult Function(List<FAQ> faq)? faqLoaded,
    TResult Function()? feedbackLoading,
    TResult Function(String successMessage)? addFeedbackSuccess,
    TResult Function(String error)? addFeedbackFailure,
    required TResult orElse(),
  }) {
    if (faqInitial != null) {
      return faqInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FaqInitial value) faqInitial,
    required TResult Function(FaqLoading value) faqLoading,
    required TResult Function(FaqError value) faqError,
    required TResult Function(FaqLoaded value) faqLoaded,
    required TResult Function(FeedbackLoading value) feedbackLoading,
    required TResult Function(AddFeedBackSuccess value) addFeedbackSuccess,
    required TResult Function(AddFeedBackFailure value) addFeedbackFailure,
  }) {
    return faqInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqInitial value)? faqInitial,
    TResult? Function(FaqLoading value)? faqLoading,
    TResult? Function(FaqError value)? faqError,
    TResult? Function(FaqLoaded value)? faqLoaded,
    TResult? Function(FeedbackLoading value)? feedbackLoading,
    TResult? Function(AddFeedBackSuccess value)? addFeedbackSuccess,
    TResult? Function(AddFeedBackFailure value)? addFeedbackFailure,
  }) {
    return faqInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqInitial value)? faqInitial,
    TResult Function(FaqLoading value)? faqLoading,
    TResult Function(FaqError value)? faqError,
    TResult Function(FaqLoaded value)? faqLoaded,
    TResult Function(FeedbackLoading value)? feedbackLoading,
    TResult Function(AddFeedBackSuccess value)? addFeedbackSuccess,
    TResult Function(AddFeedBackFailure value)? addFeedbackFailure,
    required TResult orElse(),
  }) {
    if (faqInitial != null) {
      return faqInitial(this);
    }
    return orElse();
  }
}

abstract class FaqInitial implements FAQState {
  const factory FaqInitial() = _$FaqInitial;
}

/// @nodoc
abstract class _$$FaqLoadingCopyWith<$Res> {
  factory _$$FaqLoadingCopyWith(
          _$FaqLoading value, $Res Function(_$FaqLoading) then) =
      __$$FaqLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FaqLoadingCopyWithImpl<$Res>
    extends _$FAQStateCopyWithImpl<$Res, _$FaqLoading>
    implements _$$FaqLoadingCopyWith<$Res> {
  __$$FaqLoadingCopyWithImpl(
      _$FaqLoading _value, $Res Function(_$FaqLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FaqLoading implements FaqLoading {
  const _$FaqLoading();

  @override
  String toString() {
    return 'FAQState.faqLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FaqLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() faqInitial,
    required TResult Function() faqLoading,
    required TResult Function(String error) faqError,
    required TResult Function(List<FAQ> faq) faqLoaded,
    required TResult Function() feedbackLoading,
    required TResult Function(String successMessage) addFeedbackSuccess,
    required TResult Function(String error) addFeedbackFailure,
  }) {
    return faqLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? faqInitial,
    TResult? Function()? faqLoading,
    TResult? Function(String error)? faqError,
    TResult? Function(List<FAQ> faq)? faqLoaded,
    TResult? Function()? feedbackLoading,
    TResult? Function(String successMessage)? addFeedbackSuccess,
    TResult? Function(String error)? addFeedbackFailure,
  }) {
    return faqLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? faqInitial,
    TResult Function()? faqLoading,
    TResult Function(String error)? faqError,
    TResult Function(List<FAQ> faq)? faqLoaded,
    TResult Function()? feedbackLoading,
    TResult Function(String successMessage)? addFeedbackSuccess,
    TResult Function(String error)? addFeedbackFailure,
    required TResult orElse(),
  }) {
    if (faqLoading != null) {
      return faqLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FaqInitial value) faqInitial,
    required TResult Function(FaqLoading value) faqLoading,
    required TResult Function(FaqError value) faqError,
    required TResult Function(FaqLoaded value) faqLoaded,
    required TResult Function(FeedbackLoading value) feedbackLoading,
    required TResult Function(AddFeedBackSuccess value) addFeedbackSuccess,
    required TResult Function(AddFeedBackFailure value) addFeedbackFailure,
  }) {
    return faqLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqInitial value)? faqInitial,
    TResult? Function(FaqLoading value)? faqLoading,
    TResult? Function(FaqError value)? faqError,
    TResult? Function(FaqLoaded value)? faqLoaded,
    TResult? Function(FeedbackLoading value)? feedbackLoading,
    TResult? Function(AddFeedBackSuccess value)? addFeedbackSuccess,
    TResult? Function(AddFeedBackFailure value)? addFeedbackFailure,
  }) {
    return faqLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqInitial value)? faqInitial,
    TResult Function(FaqLoading value)? faqLoading,
    TResult Function(FaqError value)? faqError,
    TResult Function(FaqLoaded value)? faqLoaded,
    TResult Function(FeedbackLoading value)? feedbackLoading,
    TResult Function(AddFeedBackSuccess value)? addFeedbackSuccess,
    TResult Function(AddFeedBackFailure value)? addFeedbackFailure,
    required TResult orElse(),
  }) {
    if (faqLoading != null) {
      return faqLoading(this);
    }
    return orElse();
  }
}

abstract class FaqLoading implements FAQState {
  const factory FaqLoading() = _$FaqLoading;
}

/// @nodoc
abstract class _$$FaqErrorCopyWith<$Res> {
  factory _$$FaqErrorCopyWith(
          _$FaqError value, $Res Function(_$FaqError) then) =
      __$$FaqErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FaqErrorCopyWithImpl<$Res>
    extends _$FAQStateCopyWithImpl<$Res, _$FaqError>
    implements _$$FaqErrorCopyWith<$Res> {
  __$$FaqErrorCopyWithImpl(_$FaqError _value, $Res Function(_$FaqError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FaqError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FaqError implements FaqError {
  const _$FaqError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FAQState.faqError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqErrorCopyWith<_$FaqError> get copyWith =>
      __$$FaqErrorCopyWithImpl<_$FaqError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() faqInitial,
    required TResult Function() faqLoading,
    required TResult Function(String error) faqError,
    required TResult Function(List<FAQ> faq) faqLoaded,
    required TResult Function() feedbackLoading,
    required TResult Function(String successMessage) addFeedbackSuccess,
    required TResult Function(String error) addFeedbackFailure,
  }) {
    return faqError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? faqInitial,
    TResult? Function()? faqLoading,
    TResult? Function(String error)? faqError,
    TResult? Function(List<FAQ> faq)? faqLoaded,
    TResult? Function()? feedbackLoading,
    TResult? Function(String successMessage)? addFeedbackSuccess,
    TResult? Function(String error)? addFeedbackFailure,
  }) {
    return faqError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? faqInitial,
    TResult Function()? faqLoading,
    TResult Function(String error)? faqError,
    TResult Function(List<FAQ> faq)? faqLoaded,
    TResult Function()? feedbackLoading,
    TResult Function(String successMessage)? addFeedbackSuccess,
    TResult Function(String error)? addFeedbackFailure,
    required TResult orElse(),
  }) {
    if (faqError != null) {
      return faqError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FaqInitial value) faqInitial,
    required TResult Function(FaqLoading value) faqLoading,
    required TResult Function(FaqError value) faqError,
    required TResult Function(FaqLoaded value) faqLoaded,
    required TResult Function(FeedbackLoading value) feedbackLoading,
    required TResult Function(AddFeedBackSuccess value) addFeedbackSuccess,
    required TResult Function(AddFeedBackFailure value) addFeedbackFailure,
  }) {
    return faqError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqInitial value)? faqInitial,
    TResult? Function(FaqLoading value)? faqLoading,
    TResult? Function(FaqError value)? faqError,
    TResult? Function(FaqLoaded value)? faqLoaded,
    TResult? Function(FeedbackLoading value)? feedbackLoading,
    TResult? Function(AddFeedBackSuccess value)? addFeedbackSuccess,
    TResult? Function(AddFeedBackFailure value)? addFeedbackFailure,
  }) {
    return faqError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqInitial value)? faqInitial,
    TResult Function(FaqLoading value)? faqLoading,
    TResult Function(FaqError value)? faqError,
    TResult Function(FaqLoaded value)? faqLoaded,
    TResult Function(FeedbackLoading value)? feedbackLoading,
    TResult Function(AddFeedBackSuccess value)? addFeedbackSuccess,
    TResult Function(AddFeedBackFailure value)? addFeedbackFailure,
    required TResult orElse(),
  }) {
    if (faqError != null) {
      return faqError(this);
    }
    return orElse();
  }
}

abstract class FaqError implements FAQState {
  const factory FaqError(final String error) = _$FaqError;

  String get error;
  @JsonKey(ignore: true)
  _$$FaqErrorCopyWith<_$FaqError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FaqLoadedCopyWith<$Res> {
  factory _$$FaqLoadedCopyWith(
          _$FaqLoaded value, $Res Function(_$FaqLoaded) then) =
      __$$FaqLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FAQ> faq});
}

/// @nodoc
class __$$FaqLoadedCopyWithImpl<$Res>
    extends _$FAQStateCopyWithImpl<$Res, _$FaqLoaded>
    implements _$$FaqLoadedCopyWith<$Res> {
  __$$FaqLoadedCopyWithImpl(
      _$FaqLoaded _value, $Res Function(_$FaqLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faq = null,
  }) {
    return _then(_$FaqLoaded(
      null == faq
          ? _value._faq
          : faq // ignore: cast_nullable_to_non_nullable
              as List<FAQ>,
    ));
  }
}

/// @nodoc

class _$FaqLoaded implements FaqLoaded {
  const _$FaqLoaded(final List<FAQ> faq) : _faq = faq;

  final List<FAQ> _faq;
  @override
  List<FAQ> get faq {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_faq);
  }

  @override
  String toString() {
    return 'FAQState.faqLoaded(faq: $faq)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqLoaded &&
            const DeepCollectionEquality().equals(other._faq, _faq));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_faq));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqLoadedCopyWith<_$FaqLoaded> get copyWith =>
      __$$FaqLoadedCopyWithImpl<_$FaqLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() faqInitial,
    required TResult Function() faqLoading,
    required TResult Function(String error) faqError,
    required TResult Function(List<FAQ> faq) faqLoaded,
    required TResult Function() feedbackLoading,
    required TResult Function(String successMessage) addFeedbackSuccess,
    required TResult Function(String error) addFeedbackFailure,
  }) {
    return faqLoaded(faq);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? faqInitial,
    TResult? Function()? faqLoading,
    TResult? Function(String error)? faqError,
    TResult? Function(List<FAQ> faq)? faqLoaded,
    TResult? Function()? feedbackLoading,
    TResult? Function(String successMessage)? addFeedbackSuccess,
    TResult? Function(String error)? addFeedbackFailure,
  }) {
    return faqLoaded?.call(faq);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? faqInitial,
    TResult Function()? faqLoading,
    TResult Function(String error)? faqError,
    TResult Function(List<FAQ> faq)? faqLoaded,
    TResult Function()? feedbackLoading,
    TResult Function(String successMessage)? addFeedbackSuccess,
    TResult Function(String error)? addFeedbackFailure,
    required TResult orElse(),
  }) {
    if (faqLoaded != null) {
      return faqLoaded(faq);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FaqInitial value) faqInitial,
    required TResult Function(FaqLoading value) faqLoading,
    required TResult Function(FaqError value) faqError,
    required TResult Function(FaqLoaded value) faqLoaded,
    required TResult Function(FeedbackLoading value) feedbackLoading,
    required TResult Function(AddFeedBackSuccess value) addFeedbackSuccess,
    required TResult Function(AddFeedBackFailure value) addFeedbackFailure,
  }) {
    return faqLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqInitial value)? faqInitial,
    TResult? Function(FaqLoading value)? faqLoading,
    TResult? Function(FaqError value)? faqError,
    TResult? Function(FaqLoaded value)? faqLoaded,
    TResult? Function(FeedbackLoading value)? feedbackLoading,
    TResult? Function(AddFeedBackSuccess value)? addFeedbackSuccess,
    TResult? Function(AddFeedBackFailure value)? addFeedbackFailure,
  }) {
    return faqLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqInitial value)? faqInitial,
    TResult Function(FaqLoading value)? faqLoading,
    TResult Function(FaqError value)? faqError,
    TResult Function(FaqLoaded value)? faqLoaded,
    TResult Function(FeedbackLoading value)? feedbackLoading,
    TResult Function(AddFeedBackSuccess value)? addFeedbackSuccess,
    TResult Function(AddFeedBackFailure value)? addFeedbackFailure,
    required TResult orElse(),
  }) {
    if (faqLoaded != null) {
      return faqLoaded(this);
    }
    return orElse();
  }
}

abstract class FaqLoaded implements FAQState {
  const factory FaqLoaded(final List<FAQ> faq) = _$FaqLoaded;

  List<FAQ> get faq;
  @JsonKey(ignore: true)
  _$$FaqLoadedCopyWith<_$FaqLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeedbackLoadingCopyWith<$Res> {
  factory _$$FeedbackLoadingCopyWith(
          _$FeedbackLoading value, $Res Function(_$FeedbackLoading) then) =
      __$$FeedbackLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedbackLoadingCopyWithImpl<$Res>
    extends _$FAQStateCopyWithImpl<$Res, _$FeedbackLoading>
    implements _$$FeedbackLoadingCopyWith<$Res> {
  __$$FeedbackLoadingCopyWithImpl(
      _$FeedbackLoading _value, $Res Function(_$FeedbackLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FeedbackLoading implements FeedbackLoading {
  const _$FeedbackLoading();

  @override
  String toString() {
    return 'FAQState.feedbackLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FeedbackLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() faqInitial,
    required TResult Function() faqLoading,
    required TResult Function(String error) faqError,
    required TResult Function(List<FAQ> faq) faqLoaded,
    required TResult Function() feedbackLoading,
    required TResult Function(String successMessage) addFeedbackSuccess,
    required TResult Function(String error) addFeedbackFailure,
  }) {
    return feedbackLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? faqInitial,
    TResult? Function()? faqLoading,
    TResult? Function(String error)? faqError,
    TResult? Function(List<FAQ> faq)? faqLoaded,
    TResult? Function()? feedbackLoading,
    TResult? Function(String successMessage)? addFeedbackSuccess,
    TResult? Function(String error)? addFeedbackFailure,
  }) {
    return feedbackLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? faqInitial,
    TResult Function()? faqLoading,
    TResult Function(String error)? faqError,
    TResult Function(List<FAQ> faq)? faqLoaded,
    TResult Function()? feedbackLoading,
    TResult Function(String successMessage)? addFeedbackSuccess,
    TResult Function(String error)? addFeedbackFailure,
    required TResult orElse(),
  }) {
    if (feedbackLoading != null) {
      return feedbackLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FaqInitial value) faqInitial,
    required TResult Function(FaqLoading value) faqLoading,
    required TResult Function(FaqError value) faqError,
    required TResult Function(FaqLoaded value) faqLoaded,
    required TResult Function(FeedbackLoading value) feedbackLoading,
    required TResult Function(AddFeedBackSuccess value) addFeedbackSuccess,
    required TResult Function(AddFeedBackFailure value) addFeedbackFailure,
  }) {
    return feedbackLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqInitial value)? faqInitial,
    TResult? Function(FaqLoading value)? faqLoading,
    TResult? Function(FaqError value)? faqError,
    TResult? Function(FaqLoaded value)? faqLoaded,
    TResult? Function(FeedbackLoading value)? feedbackLoading,
    TResult? Function(AddFeedBackSuccess value)? addFeedbackSuccess,
    TResult? Function(AddFeedBackFailure value)? addFeedbackFailure,
  }) {
    return feedbackLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqInitial value)? faqInitial,
    TResult Function(FaqLoading value)? faqLoading,
    TResult Function(FaqError value)? faqError,
    TResult Function(FaqLoaded value)? faqLoaded,
    TResult Function(FeedbackLoading value)? feedbackLoading,
    TResult Function(AddFeedBackSuccess value)? addFeedbackSuccess,
    TResult Function(AddFeedBackFailure value)? addFeedbackFailure,
    required TResult orElse(),
  }) {
    if (feedbackLoading != null) {
      return feedbackLoading(this);
    }
    return orElse();
  }
}

abstract class FeedbackLoading implements FAQState {
  const factory FeedbackLoading() = _$FeedbackLoading;
}

/// @nodoc
abstract class _$$AddFeedBackSuccessCopyWith<$Res> {
  factory _$$AddFeedBackSuccessCopyWith(_$AddFeedBackSuccess value,
          $Res Function(_$AddFeedBackSuccess) then) =
      __$$AddFeedBackSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String successMessage});
}

/// @nodoc
class __$$AddFeedBackSuccessCopyWithImpl<$Res>
    extends _$FAQStateCopyWithImpl<$Res, _$AddFeedBackSuccess>
    implements _$$AddFeedBackSuccessCopyWith<$Res> {
  __$$AddFeedBackSuccessCopyWithImpl(
      _$AddFeedBackSuccess _value, $Res Function(_$AddFeedBackSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMessage = null,
  }) {
    return _then(_$AddFeedBackSuccess(
      null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddFeedBackSuccess implements AddFeedBackSuccess {
  const _$AddFeedBackSuccess(this.successMessage);

  @override
  final String successMessage;

  @override
  String toString() {
    return 'FAQState.addFeedbackSuccess(successMessage: $successMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFeedBackSuccess &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFeedBackSuccessCopyWith<_$AddFeedBackSuccess> get copyWith =>
      __$$AddFeedBackSuccessCopyWithImpl<_$AddFeedBackSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() faqInitial,
    required TResult Function() faqLoading,
    required TResult Function(String error) faqError,
    required TResult Function(List<FAQ> faq) faqLoaded,
    required TResult Function() feedbackLoading,
    required TResult Function(String successMessage) addFeedbackSuccess,
    required TResult Function(String error) addFeedbackFailure,
  }) {
    return addFeedbackSuccess(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? faqInitial,
    TResult? Function()? faqLoading,
    TResult? Function(String error)? faqError,
    TResult? Function(List<FAQ> faq)? faqLoaded,
    TResult? Function()? feedbackLoading,
    TResult? Function(String successMessage)? addFeedbackSuccess,
    TResult? Function(String error)? addFeedbackFailure,
  }) {
    return addFeedbackSuccess?.call(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? faqInitial,
    TResult Function()? faqLoading,
    TResult Function(String error)? faqError,
    TResult Function(List<FAQ> faq)? faqLoaded,
    TResult Function()? feedbackLoading,
    TResult Function(String successMessage)? addFeedbackSuccess,
    TResult Function(String error)? addFeedbackFailure,
    required TResult orElse(),
  }) {
    if (addFeedbackSuccess != null) {
      return addFeedbackSuccess(successMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FaqInitial value) faqInitial,
    required TResult Function(FaqLoading value) faqLoading,
    required TResult Function(FaqError value) faqError,
    required TResult Function(FaqLoaded value) faqLoaded,
    required TResult Function(FeedbackLoading value) feedbackLoading,
    required TResult Function(AddFeedBackSuccess value) addFeedbackSuccess,
    required TResult Function(AddFeedBackFailure value) addFeedbackFailure,
  }) {
    return addFeedbackSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqInitial value)? faqInitial,
    TResult? Function(FaqLoading value)? faqLoading,
    TResult? Function(FaqError value)? faqError,
    TResult? Function(FaqLoaded value)? faqLoaded,
    TResult? Function(FeedbackLoading value)? feedbackLoading,
    TResult? Function(AddFeedBackSuccess value)? addFeedbackSuccess,
    TResult? Function(AddFeedBackFailure value)? addFeedbackFailure,
  }) {
    return addFeedbackSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqInitial value)? faqInitial,
    TResult Function(FaqLoading value)? faqLoading,
    TResult Function(FaqError value)? faqError,
    TResult Function(FaqLoaded value)? faqLoaded,
    TResult Function(FeedbackLoading value)? feedbackLoading,
    TResult Function(AddFeedBackSuccess value)? addFeedbackSuccess,
    TResult Function(AddFeedBackFailure value)? addFeedbackFailure,
    required TResult orElse(),
  }) {
    if (addFeedbackSuccess != null) {
      return addFeedbackSuccess(this);
    }
    return orElse();
  }
}

abstract class AddFeedBackSuccess implements FAQState {
  const factory AddFeedBackSuccess(final String successMessage) =
      _$AddFeedBackSuccess;

  String get successMessage;
  @JsonKey(ignore: true)
  _$$AddFeedBackSuccessCopyWith<_$AddFeedBackSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFeedBackFailureCopyWith<$Res> {
  factory _$$AddFeedBackFailureCopyWith(_$AddFeedBackFailure value,
          $Res Function(_$AddFeedBackFailure) then) =
      __$$AddFeedBackFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AddFeedBackFailureCopyWithImpl<$Res>
    extends _$FAQStateCopyWithImpl<$Res, _$AddFeedBackFailure>
    implements _$$AddFeedBackFailureCopyWith<$Res> {
  __$$AddFeedBackFailureCopyWithImpl(
      _$AddFeedBackFailure _value, $Res Function(_$AddFeedBackFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AddFeedBackFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddFeedBackFailure implements AddFeedBackFailure {
  const _$AddFeedBackFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FAQState.addFeedbackFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFeedBackFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFeedBackFailureCopyWith<_$AddFeedBackFailure> get copyWith =>
      __$$AddFeedBackFailureCopyWithImpl<_$AddFeedBackFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() faqInitial,
    required TResult Function() faqLoading,
    required TResult Function(String error) faqError,
    required TResult Function(List<FAQ> faq) faqLoaded,
    required TResult Function() feedbackLoading,
    required TResult Function(String successMessage) addFeedbackSuccess,
    required TResult Function(String error) addFeedbackFailure,
  }) {
    return addFeedbackFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? faqInitial,
    TResult? Function()? faqLoading,
    TResult? Function(String error)? faqError,
    TResult? Function(List<FAQ> faq)? faqLoaded,
    TResult? Function()? feedbackLoading,
    TResult? Function(String successMessage)? addFeedbackSuccess,
    TResult? Function(String error)? addFeedbackFailure,
  }) {
    return addFeedbackFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? faqInitial,
    TResult Function()? faqLoading,
    TResult Function(String error)? faqError,
    TResult Function(List<FAQ> faq)? faqLoaded,
    TResult Function()? feedbackLoading,
    TResult Function(String successMessage)? addFeedbackSuccess,
    TResult Function(String error)? addFeedbackFailure,
    required TResult orElse(),
  }) {
    if (addFeedbackFailure != null) {
      return addFeedbackFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FaqInitial value) faqInitial,
    required TResult Function(FaqLoading value) faqLoading,
    required TResult Function(FaqError value) faqError,
    required TResult Function(FaqLoaded value) faqLoaded,
    required TResult Function(FeedbackLoading value) feedbackLoading,
    required TResult Function(AddFeedBackSuccess value) addFeedbackSuccess,
    required TResult Function(AddFeedBackFailure value) addFeedbackFailure,
  }) {
    return addFeedbackFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FaqInitial value)? faqInitial,
    TResult? Function(FaqLoading value)? faqLoading,
    TResult? Function(FaqError value)? faqError,
    TResult? Function(FaqLoaded value)? faqLoaded,
    TResult? Function(FeedbackLoading value)? feedbackLoading,
    TResult? Function(AddFeedBackSuccess value)? addFeedbackSuccess,
    TResult? Function(AddFeedBackFailure value)? addFeedbackFailure,
  }) {
    return addFeedbackFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FaqInitial value)? faqInitial,
    TResult Function(FaqLoading value)? faqLoading,
    TResult Function(FaqError value)? faqError,
    TResult Function(FaqLoaded value)? faqLoaded,
    TResult Function(FeedbackLoading value)? feedbackLoading,
    TResult Function(AddFeedBackSuccess value)? addFeedbackSuccess,
    TResult Function(AddFeedBackFailure value)? addFeedbackFailure,
    required TResult orElse(),
  }) {
    if (addFeedbackFailure != null) {
      return addFeedbackFailure(this);
    }
    return orElse();
  }
}

abstract class AddFeedBackFailure implements FAQState {
  const factory AddFeedBackFailure(final String error) = _$AddFeedBackFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$AddFeedBackFailureCopyWith<_$AddFeedBackFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
