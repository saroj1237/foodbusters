// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sub_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubCategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BBCategory category) getBBSubCategoryList,
    required TResult Function(BBSubCategory subCategory)
        changeActiveSubCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BBCategory category)? getBBSubCategoryList,
    TResult? Function(BBSubCategory subCategory)? changeActiveSubCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BBCategory category)? getBBSubCategoryList,
    TResult Function(BBSubCategory subCategory)? changeActiveSubCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBBSubCategoryList value) getBBSubCategoryList,
    required TResult Function(ChangeActiveSubCategory value)
        changeActiveSubCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBBSubCategoryList value)? getBBSubCategoryList,
    TResult? Function(ChangeActiveSubCategory value)? changeActiveSubCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBBSubCategoryList value)? getBBSubCategoryList,
    TResult Function(ChangeActiveSubCategory value)? changeActiveSubCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryEventCopyWith<$Res> {
  factory $SubCategoryEventCopyWith(
          SubCategoryEvent value, $Res Function(SubCategoryEvent) then) =
      _$SubCategoryEventCopyWithImpl<$Res, SubCategoryEvent>;
}

/// @nodoc
class _$SubCategoryEventCopyWithImpl<$Res, $Val extends SubCategoryEvent>
    implements $SubCategoryEventCopyWith<$Res> {
  _$SubCategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetBBSubCategoryListCopyWith<$Res> {
  factory _$$GetBBSubCategoryListCopyWith(_$GetBBSubCategoryList value,
          $Res Function(_$GetBBSubCategoryList) then) =
      __$$GetBBSubCategoryListCopyWithImpl<$Res>;
  @useResult
  $Res call({BBCategory category});

  $BBCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$GetBBSubCategoryListCopyWithImpl<$Res>
    extends _$SubCategoryEventCopyWithImpl<$Res, _$GetBBSubCategoryList>
    implements _$$GetBBSubCategoryListCopyWith<$Res> {
  __$$GetBBSubCategoryListCopyWithImpl(_$GetBBSubCategoryList _value,
      $Res Function(_$GetBBSubCategoryList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$GetBBSubCategoryList(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as BBCategory,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BBCategoryCopyWith<$Res> get category {
    return $BBCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$GetBBSubCategoryList implements GetBBSubCategoryList {
  const _$GetBBSubCategoryList(this.category);

  @override
  final BBCategory category;

  @override
  String toString() {
    return 'SubCategoryEvent.getBBSubCategoryList(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBBSubCategoryList &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBBSubCategoryListCopyWith<_$GetBBSubCategoryList> get copyWith =>
      __$$GetBBSubCategoryListCopyWithImpl<_$GetBBSubCategoryList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BBCategory category) getBBSubCategoryList,
    required TResult Function(BBSubCategory subCategory)
        changeActiveSubCategory,
  }) {
    return getBBSubCategoryList(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BBCategory category)? getBBSubCategoryList,
    TResult? Function(BBSubCategory subCategory)? changeActiveSubCategory,
  }) {
    return getBBSubCategoryList?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BBCategory category)? getBBSubCategoryList,
    TResult Function(BBSubCategory subCategory)? changeActiveSubCategory,
    required TResult orElse(),
  }) {
    if (getBBSubCategoryList != null) {
      return getBBSubCategoryList(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBBSubCategoryList value) getBBSubCategoryList,
    required TResult Function(ChangeActiveSubCategory value)
        changeActiveSubCategory,
  }) {
    return getBBSubCategoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBBSubCategoryList value)? getBBSubCategoryList,
    TResult? Function(ChangeActiveSubCategory value)? changeActiveSubCategory,
  }) {
    return getBBSubCategoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBBSubCategoryList value)? getBBSubCategoryList,
    TResult Function(ChangeActiveSubCategory value)? changeActiveSubCategory,
    required TResult orElse(),
  }) {
    if (getBBSubCategoryList != null) {
      return getBBSubCategoryList(this);
    }
    return orElse();
  }
}

abstract class GetBBSubCategoryList implements SubCategoryEvent {
  const factory GetBBSubCategoryList(final BBCategory category) =
      _$GetBBSubCategoryList;

  BBCategory get category;
  @JsonKey(ignore: true)
  _$$GetBBSubCategoryListCopyWith<_$GetBBSubCategoryList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeActiveSubCategoryCopyWith<$Res> {
  factory _$$ChangeActiveSubCategoryCopyWith(_$ChangeActiveSubCategory value,
          $Res Function(_$ChangeActiveSubCategory) then) =
      __$$ChangeActiveSubCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({BBSubCategory subCategory});

  $BBSubCategoryCopyWith<$Res> get subCategory;
}

/// @nodoc
class __$$ChangeActiveSubCategoryCopyWithImpl<$Res>
    extends _$SubCategoryEventCopyWithImpl<$Res, _$ChangeActiveSubCategory>
    implements _$$ChangeActiveSubCategoryCopyWith<$Res> {
  __$$ChangeActiveSubCategoryCopyWithImpl(_$ChangeActiveSubCategory _value,
      $Res Function(_$ChangeActiveSubCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategory = null,
  }) {
    return _then(_$ChangeActiveSubCategory(
      null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as BBSubCategory,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BBSubCategoryCopyWith<$Res> get subCategory {
    return $BBSubCategoryCopyWith<$Res>(_value.subCategory, (value) {
      return _then(_value.copyWith(subCategory: value));
    });
  }
}

/// @nodoc

class _$ChangeActiveSubCategory implements ChangeActiveSubCategory {
  const _$ChangeActiveSubCategory(this.subCategory);

  @override
  final BBSubCategory subCategory;

  @override
  String toString() {
    return 'SubCategoryEvent.changeActiveSubCategory(subCategory: $subCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeActiveSubCategory &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeActiveSubCategoryCopyWith<_$ChangeActiveSubCategory> get copyWith =>
      __$$ChangeActiveSubCategoryCopyWithImpl<_$ChangeActiveSubCategory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BBCategory category) getBBSubCategoryList,
    required TResult Function(BBSubCategory subCategory)
        changeActiveSubCategory,
  }) {
    return changeActiveSubCategory(subCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BBCategory category)? getBBSubCategoryList,
    TResult? Function(BBSubCategory subCategory)? changeActiveSubCategory,
  }) {
    return changeActiveSubCategory?.call(subCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BBCategory category)? getBBSubCategoryList,
    TResult Function(BBSubCategory subCategory)? changeActiveSubCategory,
    required TResult orElse(),
  }) {
    if (changeActiveSubCategory != null) {
      return changeActiveSubCategory(subCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBBSubCategoryList value) getBBSubCategoryList,
    required TResult Function(ChangeActiveSubCategory value)
        changeActiveSubCategory,
  }) {
    return changeActiveSubCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBBSubCategoryList value)? getBBSubCategoryList,
    TResult? Function(ChangeActiveSubCategory value)? changeActiveSubCategory,
  }) {
    return changeActiveSubCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBBSubCategoryList value)? getBBSubCategoryList,
    TResult Function(ChangeActiveSubCategory value)? changeActiveSubCategory,
    required TResult orElse(),
  }) {
    if (changeActiveSubCategory != null) {
      return changeActiveSubCategory(this);
    }
    return orElse();
  }
}

abstract class ChangeActiveSubCategory implements SubCategoryEvent {
  const factory ChangeActiveSubCategory(final BBSubCategory subCategory) =
      _$ChangeActiveSubCategory;

  BBSubCategory get subCategory;
  @JsonKey(ignore: true)
  _$$ChangeActiveSubCategoryCopyWith<_$ChangeActiveSubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubCategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() subCategoriesLoading,
    required TResult Function(String error) subCategoriesError,
    required TResult Function(List<BBSubCategory> subCategories,
            BBSubCategory? selectedSubCategory)
        subCategoriesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? subCategoriesLoading,
    TResult? Function(String error)? subCategoriesError,
    TResult? Function(List<BBSubCategory> subCategories,
            BBSubCategory? selectedSubCategory)?
        subCategoriesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subCategoriesLoading,
    TResult Function(String error)? subCategoriesError,
    TResult Function(List<BBSubCategory> subCategories,
            BBSubCategory? selectedSubCategory)?
        subCategoriesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SubCategoriesLoading value) subCategoriesLoading,
    required TResult Function(SubCategoriesError value) subCategoriesError,
    required TResult Function(SubCategoriesLoaded value) subCategoriesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SubCategoriesLoading value)? subCategoriesLoading,
    TResult? Function(SubCategoriesError value)? subCategoriesError,
    TResult? Function(SubCategoriesLoaded value)? subCategoriesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SubCategoriesLoading value)? subCategoriesLoading,
    TResult Function(SubCategoriesError value)? subCategoriesError,
    TResult Function(SubCategoriesLoaded value)? subCategoriesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryStateCopyWith<$Res> {
  factory $SubCategoryStateCopyWith(
          SubCategoryState value, $Res Function(SubCategoryState) then) =
      _$SubCategoryStateCopyWithImpl<$Res, SubCategoryState>;
}

/// @nodoc
class _$SubCategoryStateCopyWithImpl<$Res, $Val extends SubCategoryState>
    implements $SubCategoryStateCopyWith<$Res> {
  _$SubCategoryStateCopyWithImpl(this._value, this._then);

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
    extends _$SubCategoryStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SubCategoryState.initial()';
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
    required TResult Function() subCategoriesLoading,
    required TResult Function(String error) subCategoriesError,
    required TResult Function(List<BBSubCategory> subCategories,
            BBSubCategory? selectedSubCategory)
        subCategoriesLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? subCategoriesLoading,
    TResult? Function(String error)? subCategoriesError,
    TResult? Function(List<BBSubCategory> subCategories,
            BBSubCategory? selectedSubCategory)?
        subCategoriesLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subCategoriesLoading,
    TResult Function(String error)? subCategoriesError,
    TResult Function(List<BBSubCategory> subCategories,
            BBSubCategory? selectedSubCategory)?
        subCategoriesLoaded,
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
    required TResult Function(SubCategoriesLoading value) subCategoriesLoading,
    required TResult Function(SubCategoriesError value) subCategoriesError,
    required TResult Function(SubCategoriesLoaded value) subCategoriesLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SubCategoriesLoading value)? subCategoriesLoading,
    TResult? Function(SubCategoriesError value)? subCategoriesError,
    TResult? Function(SubCategoriesLoaded value)? subCategoriesLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SubCategoriesLoading value)? subCategoriesLoading,
    TResult Function(SubCategoriesError value)? subCategoriesError,
    TResult Function(SubCategoriesLoaded value)? subCategoriesLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SubCategoryState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$SubCategoriesLoadingCopyWith<$Res> {
  factory _$$SubCategoriesLoadingCopyWith(_$SubCategoriesLoading value,
          $Res Function(_$SubCategoriesLoading) then) =
      __$$SubCategoriesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubCategoriesLoadingCopyWithImpl<$Res>
    extends _$SubCategoryStateCopyWithImpl<$Res, _$SubCategoriesLoading>
    implements _$$SubCategoriesLoadingCopyWith<$Res> {
  __$$SubCategoriesLoadingCopyWithImpl(_$SubCategoriesLoading _value,
      $Res Function(_$SubCategoriesLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubCategoriesLoading implements SubCategoriesLoading {
  const _$SubCategoriesLoading();

  @override
  String toString() {
    return 'SubCategoryState.subCategoriesLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubCategoriesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() subCategoriesLoading,
    required TResult Function(String error) subCategoriesError,
    required TResult Function(List<BBSubCategory> subCategories,
            BBSubCategory? selectedSubCategory)
        subCategoriesLoaded,
  }) {
    return subCategoriesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? subCategoriesLoading,
    TResult? Function(String error)? subCategoriesError,
    TResult? Function(List<BBSubCategory> subCategories,
            BBSubCategory? selectedSubCategory)?
        subCategoriesLoaded,
  }) {
    return subCategoriesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subCategoriesLoading,
    TResult Function(String error)? subCategoriesError,
    TResult Function(List<BBSubCategory> subCategories,
            BBSubCategory? selectedSubCategory)?
        subCategoriesLoaded,
    required TResult orElse(),
  }) {
    if (subCategoriesLoading != null) {
      return subCategoriesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SubCategoriesLoading value) subCategoriesLoading,
    required TResult Function(SubCategoriesError value) subCategoriesError,
    required TResult Function(SubCategoriesLoaded value) subCategoriesLoaded,
  }) {
    return subCategoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SubCategoriesLoading value)? subCategoriesLoading,
    TResult? Function(SubCategoriesError value)? subCategoriesError,
    TResult? Function(SubCategoriesLoaded value)? subCategoriesLoaded,
  }) {
    return subCategoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SubCategoriesLoading value)? subCategoriesLoading,
    TResult Function(SubCategoriesError value)? subCategoriesError,
    TResult Function(SubCategoriesLoaded value)? subCategoriesLoaded,
    required TResult orElse(),
  }) {
    if (subCategoriesLoading != null) {
      return subCategoriesLoading(this);
    }
    return orElse();
  }
}

abstract class SubCategoriesLoading implements SubCategoryState {
  const factory SubCategoriesLoading() = _$SubCategoriesLoading;
}

/// @nodoc
abstract class _$$SubCategoriesErrorCopyWith<$Res> {
  factory _$$SubCategoriesErrorCopyWith(_$SubCategoriesError value,
          $Res Function(_$SubCategoriesError) then) =
      __$$SubCategoriesErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SubCategoriesErrorCopyWithImpl<$Res>
    extends _$SubCategoryStateCopyWithImpl<$Res, _$SubCategoriesError>
    implements _$$SubCategoriesErrorCopyWith<$Res> {
  __$$SubCategoriesErrorCopyWithImpl(
      _$SubCategoriesError _value, $Res Function(_$SubCategoriesError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SubCategoriesError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubCategoriesError implements SubCategoriesError {
  const _$SubCategoriesError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SubCategoryState.subCategoriesError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoriesError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoriesErrorCopyWith<_$SubCategoriesError> get copyWith =>
      __$$SubCategoriesErrorCopyWithImpl<_$SubCategoriesError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() subCategoriesLoading,
    required TResult Function(String error) subCategoriesError,
    required TResult Function(List<BBSubCategory> subCategories,
            BBSubCategory? selectedSubCategory)
        subCategoriesLoaded,
  }) {
    return subCategoriesError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? subCategoriesLoading,
    TResult? Function(String error)? subCategoriesError,
    TResult? Function(List<BBSubCategory> subCategories,
            BBSubCategory? selectedSubCategory)?
        subCategoriesLoaded,
  }) {
    return subCategoriesError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subCategoriesLoading,
    TResult Function(String error)? subCategoriesError,
    TResult Function(List<BBSubCategory> subCategories,
            BBSubCategory? selectedSubCategory)?
        subCategoriesLoaded,
    required TResult orElse(),
  }) {
    if (subCategoriesError != null) {
      return subCategoriesError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SubCategoriesLoading value) subCategoriesLoading,
    required TResult Function(SubCategoriesError value) subCategoriesError,
    required TResult Function(SubCategoriesLoaded value) subCategoriesLoaded,
  }) {
    return subCategoriesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SubCategoriesLoading value)? subCategoriesLoading,
    TResult? Function(SubCategoriesError value)? subCategoriesError,
    TResult? Function(SubCategoriesLoaded value)? subCategoriesLoaded,
  }) {
    return subCategoriesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SubCategoriesLoading value)? subCategoriesLoading,
    TResult Function(SubCategoriesError value)? subCategoriesError,
    TResult Function(SubCategoriesLoaded value)? subCategoriesLoaded,
    required TResult orElse(),
  }) {
    if (subCategoriesError != null) {
      return subCategoriesError(this);
    }
    return orElse();
  }
}

abstract class SubCategoriesError implements SubCategoryState {
  const factory SubCategoriesError(final String error) = _$SubCategoriesError;

  String get error;
  @JsonKey(ignore: true)
  _$$SubCategoriesErrorCopyWith<_$SubCategoriesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubCategoriesLoadedCopyWith<$Res> {
  factory _$$SubCategoriesLoadedCopyWith(_$SubCategoriesLoaded value,
          $Res Function(_$SubCategoriesLoaded) then) =
      __$$SubCategoriesLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<BBSubCategory> subCategories, BBSubCategory? selectedSubCategory});

  $BBSubCategoryCopyWith<$Res>? get selectedSubCategory;
}

/// @nodoc
class __$$SubCategoriesLoadedCopyWithImpl<$Res>
    extends _$SubCategoryStateCopyWithImpl<$Res, _$SubCategoriesLoaded>
    implements _$$SubCategoriesLoadedCopyWith<$Res> {
  __$$SubCategoriesLoadedCopyWithImpl(
      _$SubCategoriesLoaded _value, $Res Function(_$SubCategoriesLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategories = null,
    Object? selectedSubCategory = freezed,
  }) {
    return _then(_$SubCategoriesLoaded(
      null == subCategories
          ? _value._subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<BBSubCategory>,
      freezed == selectedSubCategory
          ? _value.selectedSubCategory
          : selectedSubCategory // ignore: cast_nullable_to_non_nullable
              as BBSubCategory?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BBSubCategoryCopyWith<$Res>? get selectedSubCategory {
    if (_value.selectedSubCategory == null) {
      return null;
    }

    return $BBSubCategoryCopyWith<$Res>(_value.selectedSubCategory!, (value) {
      return _then(_value.copyWith(selectedSubCategory: value));
    });
  }
}

/// @nodoc

class _$SubCategoriesLoaded implements SubCategoriesLoaded {
  const _$SubCategoriesLoaded(
      final List<BBSubCategory> subCategories, this.selectedSubCategory)
      : _subCategories = subCategories;

  final List<BBSubCategory> _subCategories;
  @override
  List<BBSubCategory> get subCategories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCategories);
  }

  @override
  final BBSubCategory? selectedSubCategory;

  @override
  String toString() {
    return 'SubCategoryState.subCategoriesLoaded(subCategories: $subCategories, selectedSubCategory: $selectedSubCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoriesLoaded &&
            const DeepCollectionEquality()
                .equals(other._subCategories, _subCategories) &&
            (identical(other.selectedSubCategory, selectedSubCategory) ||
                other.selectedSubCategory == selectedSubCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_subCategories), selectedSubCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoriesLoadedCopyWith<_$SubCategoriesLoaded> get copyWith =>
      __$$SubCategoriesLoadedCopyWithImpl<_$SubCategoriesLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() subCategoriesLoading,
    required TResult Function(String error) subCategoriesError,
    required TResult Function(List<BBSubCategory> subCategories,
            BBSubCategory? selectedSubCategory)
        subCategoriesLoaded,
  }) {
    return subCategoriesLoaded(subCategories, selectedSubCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? subCategoriesLoading,
    TResult? Function(String error)? subCategoriesError,
    TResult? Function(List<BBSubCategory> subCategories,
            BBSubCategory? selectedSubCategory)?
        subCategoriesLoaded,
  }) {
    return subCategoriesLoaded?.call(subCategories, selectedSubCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subCategoriesLoading,
    TResult Function(String error)? subCategoriesError,
    TResult Function(List<BBSubCategory> subCategories,
            BBSubCategory? selectedSubCategory)?
        subCategoriesLoaded,
    required TResult orElse(),
  }) {
    if (subCategoriesLoaded != null) {
      return subCategoriesLoaded(subCategories, selectedSubCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SubCategoriesLoading value) subCategoriesLoading,
    required TResult Function(SubCategoriesError value) subCategoriesError,
    required TResult Function(SubCategoriesLoaded value) subCategoriesLoaded,
  }) {
    return subCategoriesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SubCategoriesLoading value)? subCategoriesLoading,
    TResult? Function(SubCategoriesError value)? subCategoriesError,
    TResult? Function(SubCategoriesLoaded value)? subCategoriesLoaded,
  }) {
    return subCategoriesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SubCategoriesLoading value)? subCategoriesLoading,
    TResult Function(SubCategoriesError value)? subCategoriesError,
    TResult Function(SubCategoriesLoaded value)? subCategoriesLoaded,
    required TResult orElse(),
  }) {
    if (subCategoriesLoaded != null) {
      return subCategoriesLoaded(this);
    }
    return orElse();
  }
}

abstract class SubCategoriesLoaded implements SubCategoryState {
  const factory SubCategoriesLoaded(final List<BBSubCategory> subCategories,
      final BBSubCategory? selectedSubCategory) = _$SubCategoriesLoaded;

  List<BBSubCategory> get subCategories;
  BBSubCategory? get selectedSubCategory;
  @JsonKey(ignore: true)
  _$$SubCategoriesLoadedCopyWith<_$SubCategoriesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
