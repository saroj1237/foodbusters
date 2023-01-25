// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'featured_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeaturedItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getFeaturedItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getFeaturedItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getFeaturedItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetFeaturedItems value) getFeaturedItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetFeaturedItems value)? getFeaturedItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetFeaturedItems value)? getFeaturedItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedItemEventCopyWith<$Res> {
  factory $FeaturedItemEventCopyWith(
          FeaturedItemEvent value, $Res Function(FeaturedItemEvent) then) =
      _$FeaturedItemEventCopyWithImpl<$Res, FeaturedItemEvent>;
}

/// @nodoc
class _$FeaturedItemEventCopyWithImpl<$Res, $Val extends FeaturedItemEvent>
    implements $FeaturedItemEventCopyWith<$Res> {
  _$FeaturedItemEventCopyWithImpl(this._value, this._then);

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
    extends _$FeaturedItemEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'FeaturedItemEvent.started()';
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
    required TResult Function() getFeaturedItems,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getFeaturedItems,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getFeaturedItems,
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
    required TResult Function(GetFeaturedItems value) getFeaturedItems,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetFeaturedItems value)? getFeaturedItems,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetFeaturedItems value)? getFeaturedItems,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements FeaturedItemEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$GetFeaturedItemsCopyWith<$Res> {
  factory _$$GetFeaturedItemsCopyWith(
          _$GetFeaturedItems value, $Res Function(_$GetFeaturedItems) then) =
      __$$GetFeaturedItemsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFeaturedItemsCopyWithImpl<$Res>
    extends _$FeaturedItemEventCopyWithImpl<$Res, _$GetFeaturedItems>
    implements _$$GetFeaturedItemsCopyWith<$Res> {
  __$$GetFeaturedItemsCopyWithImpl(
      _$GetFeaturedItems _value, $Res Function(_$GetFeaturedItems) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFeaturedItems implements GetFeaturedItems {
  const _$GetFeaturedItems();

  @override
  String toString() {
    return 'FeaturedItemEvent.getFeaturedItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFeaturedItems);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getFeaturedItems,
  }) {
    return getFeaturedItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getFeaturedItems,
  }) {
    return getFeaturedItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getFeaturedItems,
    required TResult orElse(),
  }) {
    if (getFeaturedItems != null) {
      return getFeaturedItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(GetFeaturedItems value) getFeaturedItems,
  }) {
    return getFeaturedItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(GetFeaturedItems value)? getFeaturedItems,
  }) {
    return getFeaturedItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(GetFeaturedItems value)? getFeaturedItems,
    required TResult orElse(),
  }) {
    if (getFeaturedItems != null) {
      return getFeaturedItems(this);
    }
    return orElse();
  }
}

abstract class GetFeaturedItems implements FeaturedItemEvent {
  const factory GetFeaturedItems() = _$GetFeaturedItems;
}

/// @nodoc
mixin _$FeaturedItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredItemsLoading,
    required TResult Function(String error) featuredItemsFailure,
    required TResult Function(List<FeaturedItem> featuredItems)
        featuredItemsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredItemsLoading,
    TResult? Function(String error)? featuredItemsFailure,
    TResult? Function(List<FeaturedItem> featuredItems)? featuredItemsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredItemsLoading,
    TResult Function(String error)? featuredItemsFailure,
    TResult Function(List<FeaturedItem> featuredItems)? featuredItemsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeaturedItemsLoading value) featuredItemsLoading,
    required TResult Function(FeaturedItemsFailure value) featuredItemsFailure,
    required TResult Function(FeaturedItemsLoaded value) featuredItemsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedItemsLoading value)? featuredItemsLoading,
    TResult? Function(FeaturedItemsFailure value)? featuredItemsFailure,
    TResult? Function(FeaturedItemsLoaded value)? featuredItemsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedItemsLoading value)? featuredItemsLoading,
    TResult Function(FeaturedItemsFailure value)? featuredItemsFailure,
    TResult Function(FeaturedItemsLoaded value)? featuredItemsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedItemStateCopyWith<$Res> {
  factory $FeaturedItemStateCopyWith(
          FeaturedItemState value, $Res Function(FeaturedItemState) then) =
      _$FeaturedItemStateCopyWithImpl<$Res, FeaturedItemState>;
}

/// @nodoc
class _$FeaturedItemStateCopyWithImpl<$Res, $Val extends FeaturedItemState>
    implements $FeaturedItemStateCopyWith<$Res> {
  _$FeaturedItemStateCopyWithImpl(this._value, this._then);

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
    extends _$FeaturedItemStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'FeaturedItemState.initial()';
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
    required TResult Function() featuredItemsLoading,
    required TResult Function(String error) featuredItemsFailure,
    required TResult Function(List<FeaturedItem> featuredItems)
        featuredItemsLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredItemsLoading,
    TResult? Function(String error)? featuredItemsFailure,
    TResult? Function(List<FeaturedItem> featuredItems)? featuredItemsLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredItemsLoading,
    TResult Function(String error)? featuredItemsFailure,
    TResult Function(List<FeaturedItem> featuredItems)? featuredItemsLoaded,
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
    required TResult Function(FeaturedItemsLoading value) featuredItemsLoading,
    required TResult Function(FeaturedItemsFailure value) featuredItemsFailure,
    required TResult Function(FeaturedItemsLoaded value) featuredItemsLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedItemsLoading value)? featuredItemsLoading,
    TResult? Function(FeaturedItemsFailure value)? featuredItemsFailure,
    TResult? Function(FeaturedItemsLoaded value)? featuredItemsLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedItemsLoading value)? featuredItemsLoading,
    TResult Function(FeaturedItemsFailure value)? featuredItemsFailure,
    TResult Function(FeaturedItemsLoaded value)? featuredItemsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FeaturedItemState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$FeaturedItemsLoadingCopyWith<$Res> {
  factory _$$FeaturedItemsLoadingCopyWith(_$FeaturedItemsLoading value,
          $Res Function(_$FeaturedItemsLoading) then) =
      __$$FeaturedItemsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeaturedItemsLoadingCopyWithImpl<$Res>
    extends _$FeaturedItemStateCopyWithImpl<$Res, _$FeaturedItemsLoading>
    implements _$$FeaturedItemsLoadingCopyWith<$Res> {
  __$$FeaturedItemsLoadingCopyWithImpl(_$FeaturedItemsLoading _value,
      $Res Function(_$FeaturedItemsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FeaturedItemsLoading implements FeaturedItemsLoading {
  const _$FeaturedItemsLoading();

  @override
  String toString() {
    return 'FeaturedItemState.featuredItemsLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FeaturedItemsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredItemsLoading,
    required TResult Function(String error) featuredItemsFailure,
    required TResult Function(List<FeaturedItem> featuredItems)
        featuredItemsLoaded,
  }) {
    return featuredItemsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredItemsLoading,
    TResult? Function(String error)? featuredItemsFailure,
    TResult? Function(List<FeaturedItem> featuredItems)? featuredItemsLoaded,
  }) {
    return featuredItemsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredItemsLoading,
    TResult Function(String error)? featuredItemsFailure,
    TResult Function(List<FeaturedItem> featuredItems)? featuredItemsLoaded,
    required TResult orElse(),
  }) {
    if (featuredItemsLoading != null) {
      return featuredItemsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeaturedItemsLoading value) featuredItemsLoading,
    required TResult Function(FeaturedItemsFailure value) featuredItemsFailure,
    required TResult Function(FeaturedItemsLoaded value) featuredItemsLoaded,
  }) {
    return featuredItemsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedItemsLoading value)? featuredItemsLoading,
    TResult? Function(FeaturedItemsFailure value)? featuredItemsFailure,
    TResult? Function(FeaturedItemsLoaded value)? featuredItemsLoaded,
  }) {
    return featuredItemsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedItemsLoading value)? featuredItemsLoading,
    TResult Function(FeaturedItemsFailure value)? featuredItemsFailure,
    TResult Function(FeaturedItemsLoaded value)? featuredItemsLoaded,
    required TResult orElse(),
  }) {
    if (featuredItemsLoading != null) {
      return featuredItemsLoading(this);
    }
    return orElse();
  }
}

abstract class FeaturedItemsLoading implements FeaturedItemState {
  const factory FeaturedItemsLoading() = _$FeaturedItemsLoading;
}

/// @nodoc
abstract class _$$FeaturedItemsFailureCopyWith<$Res> {
  factory _$$FeaturedItemsFailureCopyWith(_$FeaturedItemsFailure value,
          $Res Function(_$FeaturedItemsFailure) then) =
      __$$FeaturedItemsFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FeaturedItemsFailureCopyWithImpl<$Res>
    extends _$FeaturedItemStateCopyWithImpl<$Res, _$FeaturedItemsFailure>
    implements _$$FeaturedItemsFailureCopyWith<$Res> {
  __$$FeaturedItemsFailureCopyWithImpl(_$FeaturedItemsFailure _value,
      $Res Function(_$FeaturedItemsFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FeaturedItemsFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FeaturedItemsFailure implements FeaturedItemsFailure {
  const _$FeaturedItemsFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FeaturedItemState.featuredItemsFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedItemsFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedItemsFailureCopyWith<_$FeaturedItemsFailure> get copyWith =>
      __$$FeaturedItemsFailureCopyWithImpl<_$FeaturedItemsFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredItemsLoading,
    required TResult Function(String error) featuredItemsFailure,
    required TResult Function(List<FeaturedItem> featuredItems)
        featuredItemsLoaded,
  }) {
    return featuredItemsFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredItemsLoading,
    TResult? Function(String error)? featuredItemsFailure,
    TResult? Function(List<FeaturedItem> featuredItems)? featuredItemsLoaded,
  }) {
    return featuredItemsFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredItemsLoading,
    TResult Function(String error)? featuredItemsFailure,
    TResult Function(List<FeaturedItem> featuredItems)? featuredItemsLoaded,
    required TResult orElse(),
  }) {
    if (featuredItemsFailure != null) {
      return featuredItemsFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeaturedItemsLoading value) featuredItemsLoading,
    required TResult Function(FeaturedItemsFailure value) featuredItemsFailure,
    required TResult Function(FeaturedItemsLoaded value) featuredItemsLoaded,
  }) {
    return featuredItemsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedItemsLoading value)? featuredItemsLoading,
    TResult? Function(FeaturedItemsFailure value)? featuredItemsFailure,
    TResult? Function(FeaturedItemsLoaded value)? featuredItemsLoaded,
  }) {
    return featuredItemsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedItemsLoading value)? featuredItemsLoading,
    TResult Function(FeaturedItemsFailure value)? featuredItemsFailure,
    TResult Function(FeaturedItemsLoaded value)? featuredItemsLoaded,
    required TResult orElse(),
  }) {
    if (featuredItemsFailure != null) {
      return featuredItemsFailure(this);
    }
    return orElse();
  }
}

abstract class FeaturedItemsFailure implements FeaturedItemState {
  const factory FeaturedItemsFailure(final String error) =
      _$FeaturedItemsFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$FeaturedItemsFailureCopyWith<_$FeaturedItemsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeaturedItemsLoadedCopyWith<$Res> {
  factory _$$FeaturedItemsLoadedCopyWith(_$FeaturedItemsLoaded value,
          $Res Function(_$FeaturedItemsLoaded) then) =
      __$$FeaturedItemsLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FeaturedItem> featuredItems});
}

/// @nodoc
class __$$FeaturedItemsLoadedCopyWithImpl<$Res>
    extends _$FeaturedItemStateCopyWithImpl<$Res, _$FeaturedItemsLoaded>
    implements _$$FeaturedItemsLoadedCopyWith<$Res> {
  __$$FeaturedItemsLoadedCopyWithImpl(
      _$FeaturedItemsLoaded _value, $Res Function(_$FeaturedItemsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? featuredItems = null,
  }) {
    return _then(_$FeaturedItemsLoaded(
      null == featuredItems
          ? _value._featuredItems
          : featuredItems // ignore: cast_nullable_to_non_nullable
              as List<FeaturedItem>,
    ));
  }
}

/// @nodoc

class _$FeaturedItemsLoaded implements FeaturedItemsLoaded {
  const _$FeaturedItemsLoaded(final List<FeaturedItem> featuredItems)
      : _featuredItems = featuredItems;

  final List<FeaturedItem> _featuredItems;
  @override
  List<FeaturedItem> get featuredItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featuredItems);
  }

  @override
  String toString() {
    return 'FeaturedItemState.featuredItemsLoaded(featuredItems: $featuredItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedItemsLoaded &&
            const DeepCollectionEquality()
                .equals(other._featuredItems, _featuredItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_featuredItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedItemsLoadedCopyWith<_$FeaturedItemsLoaded> get copyWith =>
      __$$FeaturedItemsLoadedCopyWithImpl<_$FeaturedItemsLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() featuredItemsLoading,
    required TResult Function(String error) featuredItemsFailure,
    required TResult Function(List<FeaturedItem> featuredItems)
        featuredItemsLoaded,
  }) {
    return featuredItemsLoaded(featuredItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? featuredItemsLoading,
    TResult? Function(String error)? featuredItemsFailure,
    TResult? Function(List<FeaturedItem> featuredItems)? featuredItemsLoaded,
  }) {
    return featuredItemsLoaded?.call(featuredItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? featuredItemsLoading,
    TResult Function(String error)? featuredItemsFailure,
    TResult Function(List<FeaturedItem> featuredItems)? featuredItemsLoaded,
    required TResult orElse(),
  }) {
    if (featuredItemsLoaded != null) {
      return featuredItemsLoaded(featuredItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(FeaturedItemsLoading value) featuredItemsLoading,
    required TResult Function(FeaturedItemsFailure value) featuredItemsFailure,
    required TResult Function(FeaturedItemsLoaded value) featuredItemsLoaded,
  }) {
    return featuredItemsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(FeaturedItemsLoading value)? featuredItemsLoading,
    TResult? Function(FeaturedItemsFailure value)? featuredItemsFailure,
    TResult? Function(FeaturedItemsLoaded value)? featuredItemsLoaded,
  }) {
    return featuredItemsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(FeaturedItemsLoading value)? featuredItemsLoading,
    TResult Function(FeaturedItemsFailure value)? featuredItemsFailure,
    TResult Function(FeaturedItemsLoaded value)? featuredItemsLoaded,
    required TResult orElse(),
  }) {
    if (featuredItemsLoaded != null) {
      return featuredItemsLoaded(this);
    }
    return orElse();
  }
}

abstract class FeaturedItemsLoaded implements FeaturedItemState {
  const factory FeaturedItemsLoaded(final List<FeaturedItem> featuredItems) =
      _$FeaturedItemsLoaded;

  List<FeaturedItem> get featuredItems;
  @JsonKey(ignore: true)
  _$$FeaturedItemsLoadedCopyWith<_$FeaturedItemsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
