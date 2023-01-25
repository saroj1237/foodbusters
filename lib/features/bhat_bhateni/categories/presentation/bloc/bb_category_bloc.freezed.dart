// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bb_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BbCategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBBCategoryList,
    required TResult Function(int page) getBBCategoryNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBBCategoryList,
    TResult? Function(int page)? getBBCategoryNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBBCategoryList,
    TResult Function(int page)? getBBCategoryNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBBCategoryList value) getBBCategoryList,
    required TResult Function(GetBBCategoryNextPage value)
        getBBCategoryNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBBCategoryList value)? getBBCategoryList,
    TResult? Function(GetBBCategoryNextPage value)? getBBCategoryNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBBCategoryList value)? getBBCategoryList,
    TResult Function(GetBBCategoryNextPage value)? getBBCategoryNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BbCategoryEventCopyWith<$Res> {
  factory $BbCategoryEventCopyWith(
          BbCategoryEvent value, $Res Function(BbCategoryEvent) then) =
      _$BbCategoryEventCopyWithImpl<$Res, BbCategoryEvent>;
}

/// @nodoc
class _$BbCategoryEventCopyWithImpl<$Res, $Val extends BbCategoryEvent>
    implements $BbCategoryEventCopyWith<$Res> {
  _$BbCategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetBBCategoryListCopyWith<$Res> {
  factory _$$GetBBCategoryListCopyWith(
          _$GetBBCategoryList value, $Res Function(_$GetBBCategoryList) then) =
      __$$GetBBCategoryListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBBCategoryListCopyWithImpl<$Res>
    extends _$BbCategoryEventCopyWithImpl<$Res, _$GetBBCategoryList>
    implements _$$GetBBCategoryListCopyWith<$Res> {
  __$$GetBBCategoryListCopyWithImpl(
      _$GetBBCategoryList _value, $Res Function(_$GetBBCategoryList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBBCategoryList implements GetBBCategoryList {
  const _$GetBBCategoryList();

  @override
  String toString() {
    return 'BbCategoryEvent.getBBCategoryList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBBCategoryList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBBCategoryList,
    required TResult Function(int page) getBBCategoryNextPage,
  }) {
    return getBBCategoryList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBBCategoryList,
    TResult? Function(int page)? getBBCategoryNextPage,
  }) {
    return getBBCategoryList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBBCategoryList,
    TResult Function(int page)? getBBCategoryNextPage,
    required TResult orElse(),
  }) {
    if (getBBCategoryList != null) {
      return getBBCategoryList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBBCategoryList value) getBBCategoryList,
    required TResult Function(GetBBCategoryNextPage value)
        getBBCategoryNextPage,
  }) {
    return getBBCategoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBBCategoryList value)? getBBCategoryList,
    TResult? Function(GetBBCategoryNextPage value)? getBBCategoryNextPage,
  }) {
    return getBBCategoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBBCategoryList value)? getBBCategoryList,
    TResult Function(GetBBCategoryNextPage value)? getBBCategoryNextPage,
    required TResult orElse(),
  }) {
    if (getBBCategoryList != null) {
      return getBBCategoryList(this);
    }
    return orElse();
  }
}

abstract class GetBBCategoryList implements BbCategoryEvent {
  const factory GetBBCategoryList() = _$GetBBCategoryList;
}

/// @nodoc
abstract class _$$GetBBCategoryNextPageCopyWith<$Res> {
  factory _$$GetBBCategoryNextPageCopyWith(_$GetBBCategoryNextPage value,
          $Res Function(_$GetBBCategoryNextPage) then) =
      __$$GetBBCategoryNextPageCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$GetBBCategoryNextPageCopyWithImpl<$Res>
    extends _$BbCategoryEventCopyWithImpl<$Res, _$GetBBCategoryNextPage>
    implements _$$GetBBCategoryNextPageCopyWith<$Res> {
  __$$GetBBCategoryNextPageCopyWithImpl(_$GetBBCategoryNextPage _value,
      $Res Function(_$GetBBCategoryNextPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$GetBBCategoryNextPage(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetBBCategoryNextPage implements GetBBCategoryNextPage {
  const _$GetBBCategoryNextPage(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'BbCategoryEvent.getBBCategoryNextPage(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBBCategoryNextPage &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBBCategoryNextPageCopyWith<_$GetBBCategoryNextPage> get copyWith =>
      __$$GetBBCategoryNextPageCopyWithImpl<_$GetBBCategoryNextPage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBBCategoryList,
    required TResult Function(int page) getBBCategoryNextPage,
  }) {
    return getBBCategoryNextPage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBBCategoryList,
    TResult? Function(int page)? getBBCategoryNextPage,
  }) {
    return getBBCategoryNextPage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBBCategoryList,
    TResult Function(int page)? getBBCategoryNextPage,
    required TResult orElse(),
  }) {
    if (getBBCategoryNextPage != null) {
      return getBBCategoryNextPage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBBCategoryList value) getBBCategoryList,
    required TResult Function(GetBBCategoryNextPage value)
        getBBCategoryNextPage,
  }) {
    return getBBCategoryNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBBCategoryList value)? getBBCategoryList,
    TResult? Function(GetBBCategoryNextPage value)? getBBCategoryNextPage,
  }) {
    return getBBCategoryNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBBCategoryList value)? getBBCategoryList,
    TResult Function(GetBBCategoryNextPage value)? getBBCategoryNextPage,
    required TResult orElse(),
  }) {
    if (getBBCategoryNextPage != null) {
      return getBBCategoryNextPage(this);
    }
    return orElse();
  }
}

abstract class GetBBCategoryNextPage implements BbCategoryEvent {
  const factory GetBBCategoryNextPage(final int page) = _$GetBBCategoryNextPage;

  int get page;
  @JsonKey(ignore: true)
  _$$GetBBCategoryNextPageCopyWith<_$GetBBCategoryNextPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BbCategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BbCategoryLoaded data) successState,
    required TResult Function() failureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BbCategoryLoaded data)? successState,
    TResult? Function()? failureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BbCategoryLoaded data)? successState,
    TResult Function()? failureState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuccessState value) successState,
    required TResult Function(FailureState value) failureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SuccessState value)? successState,
    TResult? Function(FailureState value)? failureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessState value)? successState,
    TResult Function(FailureState value)? failureState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BbCategoryStateCopyWith<$Res> {
  factory $BbCategoryStateCopyWith(
          BbCategoryState value, $Res Function(BbCategoryState) then) =
      _$BbCategoryStateCopyWithImpl<$Res, BbCategoryState>;
}

/// @nodoc
class _$BbCategoryStateCopyWithImpl<$Res, $Val extends BbCategoryState>
    implements $BbCategoryStateCopyWith<$Res> {
  _$BbCategoryStateCopyWithImpl(this._value, this._then);

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
    extends _$BbCategoryStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'BbCategoryState.initial()';
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
    required TResult Function(BbCategoryLoaded data) successState,
    required TResult Function() failureState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BbCategoryLoaded data)? successState,
    TResult? Function()? failureState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BbCategoryLoaded data)? successState,
    TResult Function()? failureState,
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
    required TResult Function(SuccessState value) successState,
    required TResult Function(FailureState value) failureState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SuccessState value)? successState,
    TResult? Function(FailureState value)? failureState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessState value)? successState,
    TResult Function(FailureState value)? failureState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BbCategoryState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$BbCategoryStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'BbCategoryState.loading()';
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
    required TResult Function(BbCategoryLoaded data) successState,
    required TResult Function() failureState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BbCategoryLoaded data)? successState,
    TResult? Function()? failureState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BbCategoryLoaded data)? successState,
    TResult Function()? failureState,
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
    required TResult Function(SuccessState value) successState,
    required TResult Function(FailureState value) failureState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SuccessState value)? successState,
    TResult? Function(FailureState value)? failureState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessState value)? successState,
    TResult Function(FailureState value)? failureState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements BbCategoryState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$SuccessStateCopyWith<$Res> {
  factory _$$SuccessStateCopyWith(
          _$SuccessState value, $Res Function(_$SuccessState) then) =
      __$$SuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({BbCategoryLoaded data});

  $BbCategoryLoadedCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessStateCopyWithImpl<$Res>
    extends _$BbCategoryStateCopyWithImpl<$Res, _$SuccessState>
    implements _$$SuccessStateCopyWith<$Res> {
  __$$SuccessStateCopyWithImpl(
      _$SuccessState _value, $Res Function(_$SuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessState(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BbCategoryLoaded,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BbCategoryLoadedCopyWith<$Res> get data {
    return $BbCategoryLoadedCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SuccessState implements SuccessState {
  const _$SuccessState({required this.data});

  @override
  final BbCategoryLoaded data;

  @override
  String toString() {
    return 'BbCategoryState.successState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateCopyWith<_$SuccessState> get copyWith =>
      __$$SuccessStateCopyWithImpl<_$SuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BbCategoryLoaded data) successState,
    required TResult Function() failureState,
  }) {
    return successState(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BbCategoryLoaded data)? successState,
    TResult? Function()? failureState,
  }) {
    return successState?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BbCategoryLoaded data)? successState,
    TResult Function()? failureState,
    required TResult orElse(),
  }) {
    if (successState != null) {
      return successState(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuccessState value) successState,
    required TResult Function(FailureState value) failureState,
  }) {
    return successState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SuccessState value)? successState,
    TResult? Function(FailureState value)? failureState,
  }) {
    return successState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessState value)? successState,
    TResult Function(FailureState value)? failureState,
    required TResult orElse(),
  }) {
    if (successState != null) {
      return successState(this);
    }
    return orElse();
  }
}

abstract class SuccessState implements BbCategoryState {
  const factory SuccessState({required final BbCategoryLoaded data}) =
      _$SuccessState;

  BbCategoryLoaded get data;
  @JsonKey(ignore: true)
  _$$SuccessStateCopyWith<_$SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureStateCopyWith<$Res> {
  factory _$$FailureStateCopyWith(
          _$FailureState value, $Res Function(_$FailureState) then) =
      __$$FailureStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureStateCopyWithImpl<$Res>
    extends _$BbCategoryStateCopyWithImpl<$Res, _$FailureState>
    implements _$$FailureStateCopyWith<$Res> {
  __$$FailureStateCopyWithImpl(
      _$FailureState _value, $Res Function(_$FailureState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailureState implements FailureState {
  const _$FailureState();

  @override
  String toString() {
    return 'BbCategoryState.failureState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailureState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BbCategoryLoaded data) successState,
    required TResult Function() failureState,
  }) {
    return failureState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BbCategoryLoaded data)? successState,
    TResult? Function()? failureState,
  }) {
    return failureState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BbCategoryLoaded data)? successState,
    TResult Function()? failureState,
    required TResult orElse(),
  }) {
    if (failureState != null) {
      return failureState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuccessState value) successState,
    required TResult Function(FailureState value) failureState,
  }) {
    return failureState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SuccessState value)? successState,
    TResult? Function(FailureState value)? failureState,
  }) {
    return failureState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuccessState value)? successState,
    TResult Function(FailureState value)? failureState,
    required TResult orElse(),
  }) {
    if (failureState != null) {
      return failureState(this);
    }
    return orElse();
  }
}

abstract class FailureState implements BbCategoryState {
  const factory FailureState() = _$FailureState;
}

/// @nodoc
mixin _$BbCategoryLoaded {
  CategoryPaginationData get categoryPaginationDatacategories =>
      throw _privateConstructorUsedError;
  String? get selectedSubCategoryId => throw _privateConstructorUsedError;
  List<BBSubCategory>? get subcategories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BbCategoryLoadedCopyWith<BbCategoryLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BbCategoryLoadedCopyWith<$Res> {
  factory $BbCategoryLoadedCopyWith(
          BbCategoryLoaded value, $Res Function(BbCategoryLoaded) then) =
      _$BbCategoryLoadedCopyWithImpl<$Res, BbCategoryLoaded>;
  @useResult
  $Res call(
      {CategoryPaginationData categoryPaginationDatacategories,
      String? selectedSubCategoryId,
      List<BBSubCategory>? subcategories});
}

/// @nodoc
class _$BbCategoryLoadedCopyWithImpl<$Res, $Val extends BbCategoryLoaded>
    implements $BbCategoryLoadedCopyWith<$Res> {
  _$BbCategoryLoadedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryPaginationDatacategories = null,
    Object? selectedSubCategoryId = freezed,
    Object? subcategories = freezed,
  }) {
    return _then(_value.copyWith(
      categoryPaginationDatacategories: null == categoryPaginationDatacategories
          ? _value.categoryPaginationDatacategories
          : categoryPaginationDatacategories // ignore: cast_nullable_to_non_nullable
              as CategoryPaginationData,
      selectedSubCategoryId: freezed == selectedSubCategoryId
          ? _value.selectedSubCategoryId
          : selectedSubCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      subcategories: freezed == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<BBSubCategory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BbCategoryLoadedCopyWith<$Res>
    implements $BbCategoryLoadedCopyWith<$Res> {
  factory _$$_BbCategoryLoadedCopyWith(
          _$_BbCategoryLoaded value, $Res Function(_$_BbCategoryLoaded) then) =
      __$$_BbCategoryLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CategoryPaginationData categoryPaginationDatacategories,
      String? selectedSubCategoryId,
      List<BBSubCategory>? subcategories});
}

/// @nodoc
class __$$_BbCategoryLoadedCopyWithImpl<$Res>
    extends _$BbCategoryLoadedCopyWithImpl<$Res, _$_BbCategoryLoaded>
    implements _$$_BbCategoryLoadedCopyWith<$Res> {
  __$$_BbCategoryLoadedCopyWithImpl(
      _$_BbCategoryLoaded _value, $Res Function(_$_BbCategoryLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryPaginationDatacategories = null,
    Object? selectedSubCategoryId = freezed,
    Object? subcategories = freezed,
  }) {
    return _then(_$_BbCategoryLoaded(
      categoryPaginationDatacategories: null == categoryPaginationDatacategories
          ? _value.categoryPaginationDatacategories
          : categoryPaginationDatacategories // ignore: cast_nullable_to_non_nullable
              as CategoryPaginationData,
      selectedSubCategoryId: freezed == selectedSubCategoryId
          ? _value.selectedSubCategoryId
          : selectedSubCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      subcategories: freezed == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<BBSubCategory>?,
    ));
  }
}

/// @nodoc

class _$_BbCategoryLoaded implements _BbCategoryLoaded {
  const _$_BbCategoryLoaded(
      {required this.categoryPaginationDatacategories,
      this.selectedSubCategoryId,
      final List<BBSubCategory>? subcategories})
      : _subcategories = subcategories;

  @override
  final CategoryPaginationData categoryPaginationDatacategories;
  @override
  final String? selectedSubCategoryId;
  final List<BBSubCategory>? _subcategories;
  @override
  List<BBSubCategory>? get subcategories {
    final value = _subcategories;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BbCategoryLoaded(categoryPaginationDatacategories: $categoryPaginationDatacategories, selectedSubCategoryId: $selectedSubCategoryId, subcategories: $subcategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BbCategoryLoaded &&
            (identical(other.categoryPaginationDatacategories,
                    categoryPaginationDatacategories) ||
                other.categoryPaginationDatacategories ==
                    categoryPaginationDatacategories) &&
            (identical(other.selectedSubCategoryId, selectedSubCategoryId) ||
                other.selectedSubCategoryId == selectedSubCategoryId) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryPaginationDatacategories,
      selectedSubCategoryId,
      const DeepCollectionEquality().hash(_subcategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BbCategoryLoadedCopyWith<_$_BbCategoryLoaded> get copyWith =>
      __$$_BbCategoryLoadedCopyWithImpl<_$_BbCategoryLoaded>(this, _$identity);
}

abstract class _BbCategoryLoaded implements BbCategoryLoaded {
  const factory _BbCategoryLoaded(
      {required final CategoryPaginationData categoryPaginationDatacategories,
      final String? selectedSubCategoryId,
      final List<BBSubCategory>? subcategories}) = _$_BbCategoryLoaded;

  @override
  CategoryPaginationData get categoryPaginationDatacategories;
  @override
  String? get selectedSubCategoryId;
  @override
  List<BBSubCategory>? get subcategories;
  @override
  @JsonKey(ignore: true)
  _$$_BbCategoryLoadedCopyWith<_$_BbCategoryLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
