// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrendingSearches _$TrendingSearchesFromJson(Map<String, dynamic> json) {
  return _TrendingSearches.fromJson(json);
}

/// @nodoc
mixin _$TrendingSearches {
  List<String>? get trendingSearch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingSearchesCopyWith<TrendingSearches> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingSearchesCopyWith<$Res> {
  factory $TrendingSearchesCopyWith(
          TrendingSearches value, $Res Function(TrendingSearches) then) =
      _$TrendingSearchesCopyWithImpl<$Res, TrendingSearches>;
  @useResult
  $Res call({List<String>? trendingSearch});
}

/// @nodoc
class _$TrendingSearchesCopyWithImpl<$Res, $Val extends TrendingSearches>
    implements $TrendingSearchesCopyWith<$Res> {
  _$TrendingSearchesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trendingSearch = freezed,
  }) {
    return _then(_value.copyWith(
      trendingSearch: freezed == trendingSearch
          ? _value.trendingSearch
          : trendingSearch // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrendingSearchesCopyWith<$Res>
    implements $TrendingSearchesCopyWith<$Res> {
  factory _$$_TrendingSearchesCopyWith(
          _$_TrendingSearches value, $Res Function(_$_TrendingSearches) then) =
      __$$_TrendingSearchesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? trendingSearch});
}

/// @nodoc
class __$$_TrendingSearchesCopyWithImpl<$Res>
    extends _$TrendingSearchesCopyWithImpl<$Res, _$_TrendingSearches>
    implements _$$_TrendingSearchesCopyWith<$Res> {
  __$$_TrendingSearchesCopyWithImpl(
      _$_TrendingSearches _value, $Res Function(_$_TrendingSearches) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trendingSearch = freezed,
  }) {
    return _then(_$_TrendingSearches(
      trendingSearch: freezed == trendingSearch
          ? _value._trendingSearch
          : trendingSearch // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrendingSearches implements _TrendingSearches {
  const _$_TrendingSearches({final List<String>? trendingSearch})
      : _trendingSearch = trendingSearch;

  factory _$_TrendingSearches.fromJson(Map<String, dynamic> json) =>
      _$$_TrendingSearchesFromJson(json);

  final List<String>? _trendingSearch;
  @override
  List<String>? get trendingSearch {
    final value = _trendingSearch;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrendingSearches(trendingSearch: $trendingSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrendingSearches &&
            const DeepCollectionEquality()
                .equals(other._trendingSearch, _trendingSearch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_trendingSearch));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrendingSearchesCopyWith<_$_TrendingSearches> get copyWith =>
      __$$_TrendingSearchesCopyWithImpl<_$_TrendingSearches>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrendingSearchesToJson(
      this,
    );
  }
}

abstract class _TrendingSearches implements TrendingSearches {
  const factory _TrendingSearches({final List<String>? trendingSearch}) =
      _$_TrendingSearches;

  factory _TrendingSearches.fromJson(Map<String, dynamic> json) =
      _$_TrendingSearches.fromJson;

  @override
  List<String>? get trendingSearch;
  @override
  @JsonKey(ignore: true)
  _$$_TrendingSearchesCopyWith<_$_TrendingSearches> get copyWith =>
      throw _privateConstructorUsedError;
}

RecentSearches _$RecentSearchesFromJson(Map<String, dynamic> json) {
  return _RecentSearches.fromJson(json);
}

/// @nodoc
mixin _$RecentSearches {
  List<String>? get recentSearch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentSearchesCopyWith<RecentSearches> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentSearchesCopyWith<$Res> {
  factory $RecentSearchesCopyWith(
          RecentSearches value, $Res Function(RecentSearches) then) =
      _$RecentSearchesCopyWithImpl<$Res, RecentSearches>;
  @useResult
  $Res call({List<String>? recentSearch});
}

/// @nodoc
class _$RecentSearchesCopyWithImpl<$Res, $Val extends RecentSearches>
    implements $RecentSearchesCopyWith<$Res> {
  _$RecentSearchesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentSearch = freezed,
  }) {
    return _then(_value.copyWith(
      recentSearch: freezed == recentSearch
          ? _value.recentSearch
          : recentSearch // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecentSearchesCopyWith<$Res>
    implements $RecentSearchesCopyWith<$Res> {
  factory _$$_RecentSearchesCopyWith(
          _$_RecentSearches value, $Res Function(_$_RecentSearches) then) =
      __$$_RecentSearchesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? recentSearch});
}

/// @nodoc
class __$$_RecentSearchesCopyWithImpl<$Res>
    extends _$RecentSearchesCopyWithImpl<$Res, _$_RecentSearches>
    implements _$$_RecentSearchesCopyWith<$Res> {
  __$$_RecentSearchesCopyWithImpl(
      _$_RecentSearches _value, $Res Function(_$_RecentSearches) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentSearch = freezed,
  }) {
    return _then(_$_RecentSearches(
      recentSearch: freezed == recentSearch
          ? _value._recentSearch
          : recentSearch // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecentSearches implements _RecentSearches {
  const _$_RecentSearches({final List<String>? recentSearch})
      : _recentSearch = recentSearch;

  factory _$_RecentSearches.fromJson(Map<String, dynamic> json) =>
      _$$_RecentSearchesFromJson(json);

  final List<String>? _recentSearch;
  @override
  List<String>? get recentSearch {
    final value = _recentSearch;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RecentSearches(recentSearch: $recentSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecentSearches &&
            const DeepCollectionEquality()
                .equals(other._recentSearch, _recentSearch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recentSearch));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecentSearchesCopyWith<_$_RecentSearches> get copyWith =>
      __$$_RecentSearchesCopyWithImpl<_$_RecentSearches>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecentSearchesToJson(
      this,
    );
  }
}

abstract class _RecentSearches implements RecentSearches {
  const factory _RecentSearches({final List<String>? recentSearch}) =
      _$_RecentSearches;

  factory _RecentSearches.fromJson(Map<String, dynamic> json) =
      _$_RecentSearches.fromJson;

  @override
  List<String>? get recentSearch;
  @override
  @JsonKey(ignore: true)
  _$$_RecentSearchesCopyWith<_$_RecentSearches> get copyWith =>
      throw _privateConstructorUsedError;
}
