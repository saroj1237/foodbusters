// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategorySearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categorySearchLoading,
    required TResult Function(String error) categorySearchError,
    required TResult Function(List<BBCategory> categories) categorySearchLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categorySearchLoading,
    TResult? Function(String error)? categorySearchError,
    TResult? Function(List<BBCategory> categories)? categorySearchLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categorySearchLoading,
    TResult Function(String error)? categorySearchError,
    TResult Function(List<BBCategory> categories)? categorySearchLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CategorySearchLoading value)
        categorySearchLoading,
    required TResult Function(CategorySearchError value) categorySearchError,
    required TResult Function(CategorySearchLoaded value) categorySearchLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategorySearchLoading value)? categorySearchLoading,
    TResult? Function(CategorySearchError value)? categorySearchError,
    TResult? Function(CategorySearchLoaded value)? categorySearchLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategorySearchLoading value)? categorySearchLoading,
    TResult Function(CategorySearchError value)? categorySearchError,
    TResult Function(CategorySearchLoaded value)? categorySearchLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorySearchStateCopyWith<$Res> {
  factory $CategorySearchStateCopyWith(
          CategorySearchState value, $Res Function(CategorySearchState) then) =
      _$CategorySearchStateCopyWithImpl<$Res, CategorySearchState>;
}

/// @nodoc
class _$CategorySearchStateCopyWithImpl<$Res, $Val extends CategorySearchState>
    implements $CategorySearchStateCopyWith<$Res> {
  _$CategorySearchStateCopyWithImpl(this._value, this._then);

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
    extends _$CategorySearchStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'CategorySearchState.initial()';
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
    required TResult Function() categorySearchLoading,
    required TResult Function(String error) categorySearchError,
    required TResult Function(List<BBCategory> categories) categorySearchLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categorySearchLoading,
    TResult? Function(String error)? categorySearchError,
    TResult? Function(List<BBCategory> categories)? categorySearchLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categorySearchLoading,
    TResult Function(String error)? categorySearchError,
    TResult Function(List<BBCategory> categories)? categorySearchLoaded,
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
    required TResult Function(CategorySearchLoading value)
        categorySearchLoading,
    required TResult Function(CategorySearchError value) categorySearchError,
    required TResult Function(CategorySearchLoaded value) categorySearchLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategorySearchLoading value)? categorySearchLoading,
    TResult? Function(CategorySearchError value)? categorySearchError,
    TResult? Function(CategorySearchLoaded value)? categorySearchLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategorySearchLoading value)? categorySearchLoading,
    TResult Function(CategorySearchError value)? categorySearchError,
    TResult Function(CategorySearchLoaded value)? categorySearchLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CategorySearchState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$CategorySearchLoadingCopyWith<$Res> {
  factory _$$CategorySearchLoadingCopyWith(_$CategorySearchLoading value,
          $Res Function(_$CategorySearchLoading) then) =
      __$$CategorySearchLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategorySearchLoadingCopyWithImpl<$Res>
    extends _$CategorySearchStateCopyWithImpl<$Res, _$CategorySearchLoading>
    implements _$$CategorySearchLoadingCopyWith<$Res> {
  __$$CategorySearchLoadingCopyWithImpl(_$CategorySearchLoading _value,
      $Res Function(_$CategorySearchLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategorySearchLoading implements CategorySearchLoading {
  const _$CategorySearchLoading();

  @override
  String toString() {
    return 'CategorySearchState.categorySearchLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategorySearchLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categorySearchLoading,
    required TResult Function(String error) categorySearchError,
    required TResult Function(List<BBCategory> categories) categorySearchLoaded,
  }) {
    return categorySearchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categorySearchLoading,
    TResult? Function(String error)? categorySearchError,
    TResult? Function(List<BBCategory> categories)? categorySearchLoaded,
  }) {
    return categorySearchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categorySearchLoading,
    TResult Function(String error)? categorySearchError,
    TResult Function(List<BBCategory> categories)? categorySearchLoaded,
    required TResult orElse(),
  }) {
    if (categorySearchLoading != null) {
      return categorySearchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CategorySearchLoading value)
        categorySearchLoading,
    required TResult Function(CategorySearchError value) categorySearchError,
    required TResult Function(CategorySearchLoaded value) categorySearchLoaded,
  }) {
    return categorySearchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategorySearchLoading value)? categorySearchLoading,
    TResult? Function(CategorySearchError value)? categorySearchError,
    TResult? Function(CategorySearchLoaded value)? categorySearchLoaded,
  }) {
    return categorySearchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategorySearchLoading value)? categorySearchLoading,
    TResult Function(CategorySearchError value)? categorySearchError,
    TResult Function(CategorySearchLoaded value)? categorySearchLoaded,
    required TResult orElse(),
  }) {
    if (categorySearchLoading != null) {
      return categorySearchLoading(this);
    }
    return orElse();
  }
}

abstract class CategorySearchLoading implements CategorySearchState {
  const factory CategorySearchLoading() = _$CategorySearchLoading;
}

/// @nodoc
abstract class _$$CategorySearchErrorCopyWith<$Res> {
  factory _$$CategorySearchErrorCopyWith(_$CategorySearchError value,
          $Res Function(_$CategorySearchError) then) =
      __$$CategorySearchErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CategorySearchErrorCopyWithImpl<$Res>
    extends _$CategorySearchStateCopyWithImpl<$Res, _$CategorySearchError>
    implements _$$CategorySearchErrorCopyWith<$Res> {
  __$$CategorySearchErrorCopyWithImpl(
      _$CategorySearchError _value, $Res Function(_$CategorySearchError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CategorySearchError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategorySearchError implements CategorySearchError {
  const _$CategorySearchError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CategorySearchState.categorySearchError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorySearchError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorySearchErrorCopyWith<_$CategorySearchError> get copyWith =>
      __$$CategorySearchErrorCopyWithImpl<_$CategorySearchError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categorySearchLoading,
    required TResult Function(String error) categorySearchError,
    required TResult Function(List<BBCategory> categories) categorySearchLoaded,
  }) {
    return categorySearchError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categorySearchLoading,
    TResult? Function(String error)? categorySearchError,
    TResult? Function(List<BBCategory> categories)? categorySearchLoaded,
  }) {
    return categorySearchError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categorySearchLoading,
    TResult Function(String error)? categorySearchError,
    TResult Function(List<BBCategory> categories)? categorySearchLoaded,
    required TResult orElse(),
  }) {
    if (categorySearchError != null) {
      return categorySearchError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CategorySearchLoading value)
        categorySearchLoading,
    required TResult Function(CategorySearchError value) categorySearchError,
    required TResult Function(CategorySearchLoaded value) categorySearchLoaded,
  }) {
    return categorySearchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategorySearchLoading value)? categorySearchLoading,
    TResult? Function(CategorySearchError value)? categorySearchError,
    TResult? Function(CategorySearchLoaded value)? categorySearchLoaded,
  }) {
    return categorySearchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategorySearchLoading value)? categorySearchLoading,
    TResult Function(CategorySearchError value)? categorySearchError,
    TResult Function(CategorySearchLoaded value)? categorySearchLoaded,
    required TResult orElse(),
  }) {
    if (categorySearchError != null) {
      return categorySearchError(this);
    }
    return orElse();
  }
}

abstract class CategorySearchError implements CategorySearchState {
  const factory CategorySearchError(final String error) = _$CategorySearchError;

  String get error;
  @JsonKey(ignore: true)
  _$$CategorySearchErrorCopyWith<_$CategorySearchError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategorySearchLoadedCopyWith<$Res> {
  factory _$$CategorySearchLoadedCopyWith(_$CategorySearchLoaded value,
          $Res Function(_$CategorySearchLoaded) then) =
      __$$CategorySearchLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BBCategory> categories});
}

/// @nodoc
class __$$CategorySearchLoadedCopyWithImpl<$Res>
    extends _$CategorySearchStateCopyWithImpl<$Res, _$CategorySearchLoaded>
    implements _$$CategorySearchLoadedCopyWith<$Res> {
  __$$CategorySearchLoadedCopyWithImpl(_$CategorySearchLoaded _value,
      $Res Function(_$CategorySearchLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategorySearchLoaded(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<BBCategory>,
    ));
  }
}

/// @nodoc

class _$CategorySearchLoaded implements CategorySearchLoaded {
  const _$CategorySearchLoaded(final List<BBCategory> categories)
      : _categories = categories;

  final List<BBCategory> _categories;
  @override
  List<BBCategory> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategorySearchState.categorySearchLoaded(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorySearchLoaded &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorySearchLoadedCopyWith<_$CategorySearchLoaded> get copyWith =>
      __$$CategorySearchLoadedCopyWithImpl<_$CategorySearchLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categorySearchLoading,
    required TResult Function(String error) categorySearchError,
    required TResult Function(List<BBCategory> categories) categorySearchLoaded,
  }) {
    return categorySearchLoaded(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categorySearchLoading,
    TResult? Function(String error)? categorySearchError,
    TResult? Function(List<BBCategory> categories)? categorySearchLoaded,
  }) {
    return categorySearchLoaded?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categorySearchLoading,
    TResult Function(String error)? categorySearchError,
    TResult Function(List<BBCategory> categories)? categorySearchLoaded,
    required TResult orElse(),
  }) {
    if (categorySearchLoaded != null) {
      return categorySearchLoaded(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CategorySearchLoading value)
        categorySearchLoading,
    required TResult Function(CategorySearchError value) categorySearchError,
    required TResult Function(CategorySearchLoaded value) categorySearchLoaded,
  }) {
    return categorySearchLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategorySearchLoading value)? categorySearchLoading,
    TResult? Function(CategorySearchError value)? categorySearchError,
    TResult? Function(CategorySearchLoaded value)? categorySearchLoaded,
  }) {
    return categorySearchLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategorySearchLoading value)? categorySearchLoading,
    TResult Function(CategorySearchError value)? categorySearchError,
    TResult Function(CategorySearchLoaded value)? categorySearchLoaded,
    required TResult orElse(),
  }) {
    if (categorySearchLoaded != null) {
      return categorySearchLoaded(this);
    }
    return orElse();
  }
}

abstract class CategorySearchLoaded implements CategorySearchState {
  const factory CategorySearchLoaded(final List<BBCategory> categories) =
      _$CategorySearchLoaded;

  List<BBCategory> get categories;
  @JsonKey(ignore: true)
  _$$CategorySearchLoadedCopyWith<_$CategorySearchLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
