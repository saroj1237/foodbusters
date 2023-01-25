// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bborder_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BborderHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBbOrderHistories,
    required TResult Function(BBOrderHistory orderHistory)
        getBbOrderHistoryDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBbOrderHistories,
    TResult? Function(BBOrderHistory orderHistory)? getBbOrderHistoryDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBbOrderHistories,
    TResult Function(BBOrderHistory orderHistory)? getBbOrderHistoryDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBbOrderHistories value) getBbOrderHistories,
    required TResult Function(GetBbOrderHistoryDetails value)
        getBbOrderHistoryDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBbOrderHistories value)? getBbOrderHistories,
    TResult? Function(GetBbOrderHistoryDetails value)? getBbOrderHistoryDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBbOrderHistories value)? getBbOrderHistories,
    TResult Function(GetBbOrderHistoryDetails value)? getBbOrderHistoryDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BborderHistoryEventCopyWith<$Res> {
  factory $BborderHistoryEventCopyWith(
          BborderHistoryEvent value, $Res Function(BborderHistoryEvent) then) =
      _$BborderHistoryEventCopyWithImpl<$Res, BborderHistoryEvent>;
}

/// @nodoc
class _$BborderHistoryEventCopyWithImpl<$Res, $Val extends BborderHistoryEvent>
    implements $BborderHistoryEventCopyWith<$Res> {
  _$BborderHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetBbOrderHistoriesCopyWith<$Res> {
  factory _$$GetBbOrderHistoriesCopyWith(_$GetBbOrderHistories value,
          $Res Function(_$GetBbOrderHistories) then) =
      __$$GetBbOrderHistoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBbOrderHistoriesCopyWithImpl<$Res>
    extends _$BborderHistoryEventCopyWithImpl<$Res, _$GetBbOrderHistories>
    implements _$$GetBbOrderHistoriesCopyWith<$Res> {
  __$$GetBbOrderHistoriesCopyWithImpl(
      _$GetBbOrderHistories _value, $Res Function(_$GetBbOrderHistories) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBbOrderHistories implements GetBbOrderHistories {
  const _$GetBbOrderHistories();

  @override
  String toString() {
    return 'BborderHistoryEvent.getBbOrderHistories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBbOrderHistories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBbOrderHistories,
    required TResult Function(BBOrderHistory orderHistory)
        getBbOrderHistoryDetails,
  }) {
    return getBbOrderHistories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBbOrderHistories,
    TResult? Function(BBOrderHistory orderHistory)? getBbOrderHistoryDetails,
  }) {
    return getBbOrderHistories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBbOrderHistories,
    TResult Function(BBOrderHistory orderHistory)? getBbOrderHistoryDetails,
    required TResult orElse(),
  }) {
    if (getBbOrderHistories != null) {
      return getBbOrderHistories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBbOrderHistories value) getBbOrderHistories,
    required TResult Function(GetBbOrderHistoryDetails value)
        getBbOrderHistoryDetails,
  }) {
    return getBbOrderHistories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBbOrderHistories value)? getBbOrderHistories,
    TResult? Function(GetBbOrderHistoryDetails value)? getBbOrderHistoryDetails,
  }) {
    return getBbOrderHistories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBbOrderHistories value)? getBbOrderHistories,
    TResult Function(GetBbOrderHistoryDetails value)? getBbOrderHistoryDetails,
    required TResult orElse(),
  }) {
    if (getBbOrderHistories != null) {
      return getBbOrderHistories(this);
    }
    return orElse();
  }
}

abstract class GetBbOrderHistories implements BborderHistoryEvent {
  const factory GetBbOrderHistories() = _$GetBbOrderHistories;
}

/// @nodoc
abstract class _$$GetBbOrderHistoryDetailsCopyWith<$Res> {
  factory _$$GetBbOrderHistoryDetailsCopyWith(_$GetBbOrderHistoryDetails value,
          $Res Function(_$GetBbOrderHistoryDetails) then) =
      __$$GetBbOrderHistoryDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({BBOrderHistory orderHistory});

  $BBOrderHistoryCopyWith<$Res> get orderHistory;
}

/// @nodoc
class __$$GetBbOrderHistoryDetailsCopyWithImpl<$Res>
    extends _$BborderHistoryEventCopyWithImpl<$Res, _$GetBbOrderHistoryDetails>
    implements _$$GetBbOrderHistoryDetailsCopyWith<$Res> {
  __$$GetBbOrderHistoryDetailsCopyWithImpl(_$GetBbOrderHistoryDetails _value,
      $Res Function(_$GetBbOrderHistoryDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderHistory = null,
  }) {
    return _then(_$GetBbOrderHistoryDetails(
      null == orderHistory
          ? _value.orderHistory
          : orderHistory // ignore: cast_nullable_to_non_nullable
              as BBOrderHistory,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BBOrderHistoryCopyWith<$Res> get orderHistory {
    return $BBOrderHistoryCopyWith<$Res>(_value.orderHistory, (value) {
      return _then(_value.copyWith(orderHistory: value));
    });
  }
}

/// @nodoc

class _$GetBbOrderHistoryDetails implements GetBbOrderHistoryDetails {
  const _$GetBbOrderHistoryDetails(this.orderHistory);

  @override
  final BBOrderHistory orderHistory;

  @override
  String toString() {
    return 'BborderHistoryEvent.getBbOrderHistoryDetails(orderHistory: $orderHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBbOrderHistoryDetails &&
            (identical(other.orderHistory, orderHistory) ||
                other.orderHistory == orderHistory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderHistory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBbOrderHistoryDetailsCopyWith<_$GetBbOrderHistoryDetails>
      get copyWith =>
          __$$GetBbOrderHistoryDetailsCopyWithImpl<_$GetBbOrderHistoryDetails>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBbOrderHistories,
    required TResult Function(BBOrderHistory orderHistory)
        getBbOrderHistoryDetails,
  }) {
    return getBbOrderHistoryDetails(orderHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBbOrderHistories,
    TResult? Function(BBOrderHistory orderHistory)? getBbOrderHistoryDetails,
  }) {
    return getBbOrderHistoryDetails?.call(orderHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBbOrderHistories,
    TResult Function(BBOrderHistory orderHistory)? getBbOrderHistoryDetails,
    required TResult orElse(),
  }) {
    if (getBbOrderHistoryDetails != null) {
      return getBbOrderHistoryDetails(orderHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBbOrderHistories value) getBbOrderHistories,
    required TResult Function(GetBbOrderHistoryDetails value)
        getBbOrderHistoryDetails,
  }) {
    return getBbOrderHistoryDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBbOrderHistories value)? getBbOrderHistories,
    TResult? Function(GetBbOrderHistoryDetails value)? getBbOrderHistoryDetails,
  }) {
    return getBbOrderHistoryDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBbOrderHistories value)? getBbOrderHistories,
    TResult Function(GetBbOrderHistoryDetails value)? getBbOrderHistoryDetails,
    required TResult orElse(),
  }) {
    if (getBbOrderHistoryDetails != null) {
      return getBbOrderHistoryDetails(this);
    }
    return orElse();
  }
}

abstract class GetBbOrderHistoryDetails implements BborderHistoryEvent {
  const factory GetBbOrderHistoryDetails(final BBOrderHistory orderHistory) =
      _$GetBbOrderHistoryDetails;

  BBOrderHistory get orderHistory;
  @JsonKey(ignore: true)
  _$$GetBbOrderHistoryDetailsCopyWith<_$GetBbOrderHistoryDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BborderHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bbOrderHistoryLoading,
    required TResult Function(String error) bbOrderHistoryError,
    required TResult Function(List<BBOrderHistory>? histories,
            BBOrderHistoryDetail? histroyDetail)
        bbOrderHistoryLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bbOrderHistoryLoading,
    TResult? Function(String error)? bbOrderHistoryError,
    TResult? Function(List<BBOrderHistory>? histories,
            BBOrderHistoryDetail? histroyDetail)?
        bbOrderHistoryLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bbOrderHistoryLoading,
    TResult Function(String error)? bbOrderHistoryError,
    TResult Function(List<BBOrderHistory>? histories,
            BBOrderHistoryDetail? histroyDetail)?
        bbOrderHistoryLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BbOrderHistoryLoading value)
        bbOrderHistoryLoading,
    required TResult Function(BbOrderHistoryError value) bbOrderHistoryError,
    required TResult Function(BbOrderHistoryLoaded value) bbOrderHistoryLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BbOrderHistoryLoading value)? bbOrderHistoryLoading,
    TResult? Function(BbOrderHistoryError value)? bbOrderHistoryError,
    TResult? Function(BbOrderHistoryLoaded value)? bbOrderHistoryLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BbOrderHistoryLoading value)? bbOrderHistoryLoading,
    TResult Function(BbOrderHistoryError value)? bbOrderHistoryError,
    TResult Function(BbOrderHistoryLoaded value)? bbOrderHistoryLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BborderHistoryStateCopyWith<$Res> {
  factory $BborderHistoryStateCopyWith(
          BborderHistoryState value, $Res Function(BborderHistoryState) then) =
      _$BborderHistoryStateCopyWithImpl<$Res, BborderHistoryState>;
}

/// @nodoc
class _$BborderHistoryStateCopyWithImpl<$Res, $Val extends BborderHistoryState>
    implements $BborderHistoryStateCopyWith<$Res> {
  _$BborderHistoryStateCopyWithImpl(this._value, this._then);

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
    extends _$BborderHistoryStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'BborderHistoryState.initial()';
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
    required TResult Function() bbOrderHistoryLoading,
    required TResult Function(String error) bbOrderHistoryError,
    required TResult Function(List<BBOrderHistory>? histories,
            BBOrderHistoryDetail? histroyDetail)
        bbOrderHistoryLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bbOrderHistoryLoading,
    TResult? Function(String error)? bbOrderHistoryError,
    TResult? Function(List<BBOrderHistory>? histories,
            BBOrderHistoryDetail? histroyDetail)?
        bbOrderHistoryLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bbOrderHistoryLoading,
    TResult Function(String error)? bbOrderHistoryError,
    TResult Function(List<BBOrderHistory>? histories,
            BBOrderHistoryDetail? histroyDetail)?
        bbOrderHistoryLoaded,
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
    required TResult Function(BbOrderHistoryLoading value)
        bbOrderHistoryLoading,
    required TResult Function(BbOrderHistoryError value) bbOrderHistoryError,
    required TResult Function(BbOrderHistoryLoaded value) bbOrderHistoryLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BbOrderHistoryLoading value)? bbOrderHistoryLoading,
    TResult? Function(BbOrderHistoryError value)? bbOrderHistoryError,
    TResult? Function(BbOrderHistoryLoaded value)? bbOrderHistoryLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BbOrderHistoryLoading value)? bbOrderHistoryLoading,
    TResult Function(BbOrderHistoryError value)? bbOrderHistoryError,
    TResult Function(BbOrderHistoryLoaded value)? bbOrderHistoryLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BborderHistoryState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$BbOrderHistoryLoadingCopyWith<$Res> {
  factory _$$BbOrderHistoryLoadingCopyWith(_$BbOrderHistoryLoading value,
          $Res Function(_$BbOrderHistoryLoading) then) =
      __$$BbOrderHistoryLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BbOrderHistoryLoadingCopyWithImpl<$Res>
    extends _$BborderHistoryStateCopyWithImpl<$Res, _$BbOrderHistoryLoading>
    implements _$$BbOrderHistoryLoadingCopyWith<$Res> {
  __$$BbOrderHistoryLoadingCopyWithImpl(_$BbOrderHistoryLoading _value,
      $Res Function(_$BbOrderHistoryLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BbOrderHistoryLoading implements BbOrderHistoryLoading {
  const _$BbOrderHistoryLoading();

  @override
  String toString() {
    return 'BborderHistoryState.bbOrderHistoryLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BbOrderHistoryLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bbOrderHistoryLoading,
    required TResult Function(String error) bbOrderHistoryError,
    required TResult Function(List<BBOrderHistory>? histories,
            BBOrderHistoryDetail? histroyDetail)
        bbOrderHistoryLoaded,
  }) {
    return bbOrderHistoryLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bbOrderHistoryLoading,
    TResult? Function(String error)? bbOrderHistoryError,
    TResult? Function(List<BBOrderHistory>? histories,
            BBOrderHistoryDetail? histroyDetail)?
        bbOrderHistoryLoaded,
  }) {
    return bbOrderHistoryLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bbOrderHistoryLoading,
    TResult Function(String error)? bbOrderHistoryError,
    TResult Function(List<BBOrderHistory>? histories,
            BBOrderHistoryDetail? histroyDetail)?
        bbOrderHistoryLoaded,
    required TResult orElse(),
  }) {
    if (bbOrderHistoryLoading != null) {
      return bbOrderHistoryLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BbOrderHistoryLoading value)
        bbOrderHistoryLoading,
    required TResult Function(BbOrderHistoryError value) bbOrderHistoryError,
    required TResult Function(BbOrderHistoryLoaded value) bbOrderHistoryLoaded,
  }) {
    return bbOrderHistoryLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BbOrderHistoryLoading value)? bbOrderHistoryLoading,
    TResult? Function(BbOrderHistoryError value)? bbOrderHistoryError,
    TResult? Function(BbOrderHistoryLoaded value)? bbOrderHistoryLoaded,
  }) {
    return bbOrderHistoryLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BbOrderHistoryLoading value)? bbOrderHistoryLoading,
    TResult Function(BbOrderHistoryError value)? bbOrderHistoryError,
    TResult Function(BbOrderHistoryLoaded value)? bbOrderHistoryLoaded,
    required TResult orElse(),
  }) {
    if (bbOrderHistoryLoading != null) {
      return bbOrderHistoryLoading(this);
    }
    return orElse();
  }
}

abstract class BbOrderHistoryLoading implements BborderHistoryState {
  const factory BbOrderHistoryLoading() = _$BbOrderHistoryLoading;
}

/// @nodoc
abstract class _$$BbOrderHistoryErrorCopyWith<$Res> {
  factory _$$BbOrderHistoryErrorCopyWith(_$BbOrderHistoryError value,
          $Res Function(_$BbOrderHistoryError) then) =
      __$$BbOrderHistoryErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BbOrderHistoryErrorCopyWithImpl<$Res>
    extends _$BborderHistoryStateCopyWithImpl<$Res, _$BbOrderHistoryError>
    implements _$$BbOrderHistoryErrorCopyWith<$Res> {
  __$$BbOrderHistoryErrorCopyWithImpl(
      _$BbOrderHistoryError _value, $Res Function(_$BbOrderHistoryError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BbOrderHistoryError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BbOrderHistoryError implements BbOrderHistoryError {
  const _$BbOrderHistoryError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'BborderHistoryState.bbOrderHistoryError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BbOrderHistoryError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BbOrderHistoryErrorCopyWith<_$BbOrderHistoryError> get copyWith =>
      __$$BbOrderHistoryErrorCopyWithImpl<_$BbOrderHistoryError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bbOrderHistoryLoading,
    required TResult Function(String error) bbOrderHistoryError,
    required TResult Function(List<BBOrderHistory>? histories,
            BBOrderHistoryDetail? histroyDetail)
        bbOrderHistoryLoaded,
  }) {
    return bbOrderHistoryError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bbOrderHistoryLoading,
    TResult? Function(String error)? bbOrderHistoryError,
    TResult? Function(List<BBOrderHistory>? histories,
            BBOrderHistoryDetail? histroyDetail)?
        bbOrderHistoryLoaded,
  }) {
    return bbOrderHistoryError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bbOrderHistoryLoading,
    TResult Function(String error)? bbOrderHistoryError,
    TResult Function(List<BBOrderHistory>? histories,
            BBOrderHistoryDetail? histroyDetail)?
        bbOrderHistoryLoaded,
    required TResult orElse(),
  }) {
    if (bbOrderHistoryError != null) {
      return bbOrderHistoryError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BbOrderHistoryLoading value)
        bbOrderHistoryLoading,
    required TResult Function(BbOrderHistoryError value) bbOrderHistoryError,
    required TResult Function(BbOrderHistoryLoaded value) bbOrderHistoryLoaded,
  }) {
    return bbOrderHistoryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BbOrderHistoryLoading value)? bbOrderHistoryLoading,
    TResult? Function(BbOrderHistoryError value)? bbOrderHistoryError,
    TResult? Function(BbOrderHistoryLoaded value)? bbOrderHistoryLoaded,
  }) {
    return bbOrderHistoryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BbOrderHistoryLoading value)? bbOrderHistoryLoading,
    TResult Function(BbOrderHistoryError value)? bbOrderHistoryError,
    TResult Function(BbOrderHistoryLoaded value)? bbOrderHistoryLoaded,
    required TResult orElse(),
  }) {
    if (bbOrderHistoryError != null) {
      return bbOrderHistoryError(this);
    }
    return orElse();
  }
}

abstract class BbOrderHistoryError implements BborderHistoryState {
  const factory BbOrderHistoryError(final String error) = _$BbOrderHistoryError;

  String get error;
  @JsonKey(ignore: true)
  _$$BbOrderHistoryErrorCopyWith<_$BbOrderHistoryError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BbOrderHistoryLoadedCopyWith<$Res> {
  factory _$$BbOrderHistoryLoadedCopyWith(_$BbOrderHistoryLoaded value,
          $Res Function(_$BbOrderHistoryLoaded) then) =
      __$$BbOrderHistoryLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<BBOrderHistory>? histories, BBOrderHistoryDetail? histroyDetail});

  $BBOrderHistoryDetailCopyWith<$Res>? get histroyDetail;
}

/// @nodoc
class __$$BbOrderHistoryLoadedCopyWithImpl<$Res>
    extends _$BborderHistoryStateCopyWithImpl<$Res, _$BbOrderHistoryLoaded>
    implements _$$BbOrderHistoryLoadedCopyWith<$Res> {
  __$$BbOrderHistoryLoadedCopyWithImpl(_$BbOrderHistoryLoaded _value,
      $Res Function(_$BbOrderHistoryLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? histories = freezed,
    Object? histroyDetail = freezed,
  }) {
    return _then(_$BbOrderHistoryLoaded(
      histories: freezed == histories
          ? _value._histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<BBOrderHistory>?,
      histroyDetail: freezed == histroyDetail
          ? _value.histroyDetail
          : histroyDetail // ignore: cast_nullable_to_non_nullable
              as BBOrderHistoryDetail?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BBOrderHistoryDetailCopyWith<$Res>? get histroyDetail {
    if (_value.histroyDetail == null) {
      return null;
    }

    return $BBOrderHistoryDetailCopyWith<$Res>(_value.histroyDetail!, (value) {
      return _then(_value.copyWith(histroyDetail: value));
    });
  }
}

/// @nodoc

class _$BbOrderHistoryLoaded implements BbOrderHistoryLoaded {
  const _$BbOrderHistoryLoaded(
      {final List<BBOrderHistory>? histories, this.histroyDetail})
      : _histories = histories;

  final List<BBOrderHistory>? _histories;
  @override
  List<BBOrderHistory>? get histories {
    final value = _histories;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BBOrderHistoryDetail? histroyDetail;

  @override
  String toString() {
    return 'BborderHistoryState.bbOrderHistoryLoaded(histories: $histories, histroyDetail: $histroyDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BbOrderHistoryLoaded &&
            const DeepCollectionEquality()
                .equals(other._histories, _histories) &&
            (identical(other.histroyDetail, histroyDetail) ||
                other.histroyDetail == histroyDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_histories), histroyDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BbOrderHistoryLoadedCopyWith<_$BbOrderHistoryLoaded> get copyWith =>
      __$$BbOrderHistoryLoadedCopyWithImpl<_$BbOrderHistoryLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bbOrderHistoryLoading,
    required TResult Function(String error) bbOrderHistoryError,
    required TResult Function(List<BBOrderHistory>? histories,
            BBOrderHistoryDetail? histroyDetail)
        bbOrderHistoryLoaded,
  }) {
    return bbOrderHistoryLoaded(histories, histroyDetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bbOrderHistoryLoading,
    TResult? Function(String error)? bbOrderHistoryError,
    TResult? Function(List<BBOrderHistory>? histories,
            BBOrderHistoryDetail? histroyDetail)?
        bbOrderHistoryLoaded,
  }) {
    return bbOrderHistoryLoaded?.call(histories, histroyDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bbOrderHistoryLoading,
    TResult Function(String error)? bbOrderHistoryError,
    TResult Function(List<BBOrderHistory>? histories,
            BBOrderHistoryDetail? histroyDetail)?
        bbOrderHistoryLoaded,
    required TResult orElse(),
  }) {
    if (bbOrderHistoryLoaded != null) {
      return bbOrderHistoryLoaded(histories, histroyDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BbOrderHistoryLoading value)
        bbOrderHistoryLoading,
    required TResult Function(BbOrderHistoryError value) bbOrderHistoryError,
    required TResult Function(BbOrderHistoryLoaded value) bbOrderHistoryLoaded,
  }) {
    return bbOrderHistoryLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BbOrderHistoryLoading value)? bbOrderHistoryLoading,
    TResult? Function(BbOrderHistoryError value)? bbOrderHistoryError,
    TResult? Function(BbOrderHistoryLoaded value)? bbOrderHistoryLoaded,
  }) {
    return bbOrderHistoryLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BbOrderHistoryLoading value)? bbOrderHistoryLoading,
    TResult Function(BbOrderHistoryError value)? bbOrderHistoryError,
    TResult Function(BbOrderHistoryLoaded value)? bbOrderHistoryLoaded,
    required TResult orElse(),
  }) {
    if (bbOrderHistoryLoaded != null) {
      return bbOrderHistoryLoaded(this);
    }
    return orElse();
  }
}

abstract class BbOrderHistoryLoaded implements BborderHistoryState {
  const factory BbOrderHistoryLoaded(
      {final List<BBOrderHistory>? histories,
      final BBOrderHistoryDetail? histroyDetail}) = _$BbOrderHistoryLoaded;

  List<BBOrderHistory>? get histories;
  BBOrderHistoryDetail? get histroyDetail;
  @JsonKey(ignore: true)
  _$$BbOrderHistoryLoadedCopyWith<_$BbOrderHistoryLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
