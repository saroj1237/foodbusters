// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_position_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrentPositionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Position currentPosition, String currentAddress)
        currentPositionLoaded,
    required TResult Function() currentPositionNotLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Position currentPosition, String currentAddress)?
        currentPositionLoaded,
    TResult? Function()? currentPositionNotLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position currentPosition, String currentAddress)?
        currentPositionLoaded,
    TResult Function()? currentPositionNotLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CurrentPositionLoaded value)
        currentPositionLoaded,
    required TResult Function(CurrentPositionNotLoaded value)
        currentPositionNotLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CurrentPositionLoaded value)? currentPositionLoaded,
    TResult? Function(CurrentPositionNotLoaded value)? currentPositionNotLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CurrentPositionLoaded value)? currentPositionLoaded,
    TResult Function(CurrentPositionNotLoaded value)? currentPositionNotLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentPositionStateCopyWith<$Res> {
  factory $CurrentPositionStateCopyWith(CurrentPositionState value,
          $Res Function(CurrentPositionState) then) =
      _$CurrentPositionStateCopyWithImpl<$Res, CurrentPositionState>;
}

/// @nodoc
class _$CurrentPositionStateCopyWithImpl<$Res,
        $Val extends CurrentPositionState>
    implements $CurrentPositionStateCopyWith<$Res> {
  _$CurrentPositionStateCopyWithImpl(this._value, this._then);

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
    extends _$CurrentPositionStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'CurrentPositionState.initial()';
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
    required TResult Function(Position currentPosition, String currentAddress)
        currentPositionLoaded,
    required TResult Function() currentPositionNotLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Position currentPosition, String currentAddress)?
        currentPositionLoaded,
    TResult? Function()? currentPositionNotLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position currentPosition, String currentAddress)?
        currentPositionLoaded,
    TResult Function()? currentPositionNotLoaded,
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
    required TResult Function(CurrentPositionLoaded value)
        currentPositionLoaded,
    required TResult Function(CurrentPositionNotLoaded value)
        currentPositionNotLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CurrentPositionLoaded value)? currentPositionLoaded,
    TResult? Function(CurrentPositionNotLoaded value)? currentPositionNotLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CurrentPositionLoaded value)? currentPositionLoaded,
    TResult Function(CurrentPositionNotLoaded value)? currentPositionNotLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CurrentPositionState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$CurrentPositionLoadedCopyWith<$Res> {
  factory _$$CurrentPositionLoadedCopyWith(_$CurrentPositionLoaded value,
          $Res Function(_$CurrentPositionLoaded) then) =
      __$$CurrentPositionLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Position currentPosition, String currentAddress});
}

/// @nodoc
class __$$CurrentPositionLoadedCopyWithImpl<$Res>
    extends _$CurrentPositionStateCopyWithImpl<$Res, _$CurrentPositionLoaded>
    implements _$$CurrentPositionLoadedCopyWith<$Res> {
  __$$CurrentPositionLoadedCopyWithImpl(_$CurrentPositionLoaded _value,
      $Res Function(_$CurrentPositionLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPosition = null,
    Object? currentAddress = null,
  }) {
    return _then(_$CurrentPositionLoaded(
      null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Position,
      null == currentAddress
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrentPositionLoaded implements CurrentPositionLoaded {
  const _$CurrentPositionLoaded(this.currentPosition, this.currentAddress);

  @override
  final Position currentPosition;
  @override
  final String currentAddress;

  @override
  String toString() {
    return 'CurrentPositionState.currentPositionLoaded(currentPosition: $currentPosition, currentAddress: $currentAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentPositionLoaded &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.currentAddress, currentAddress) ||
                other.currentAddress == currentAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPosition, currentAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentPositionLoadedCopyWith<_$CurrentPositionLoaded> get copyWith =>
      __$$CurrentPositionLoadedCopyWithImpl<_$CurrentPositionLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Position currentPosition, String currentAddress)
        currentPositionLoaded,
    required TResult Function() currentPositionNotLoaded,
  }) {
    return currentPositionLoaded(currentPosition, currentAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Position currentPosition, String currentAddress)?
        currentPositionLoaded,
    TResult? Function()? currentPositionNotLoaded,
  }) {
    return currentPositionLoaded?.call(currentPosition, currentAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position currentPosition, String currentAddress)?
        currentPositionLoaded,
    TResult Function()? currentPositionNotLoaded,
    required TResult orElse(),
  }) {
    if (currentPositionLoaded != null) {
      return currentPositionLoaded(currentPosition, currentAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CurrentPositionLoaded value)
        currentPositionLoaded,
    required TResult Function(CurrentPositionNotLoaded value)
        currentPositionNotLoaded,
  }) {
    return currentPositionLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CurrentPositionLoaded value)? currentPositionLoaded,
    TResult? Function(CurrentPositionNotLoaded value)? currentPositionNotLoaded,
  }) {
    return currentPositionLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CurrentPositionLoaded value)? currentPositionLoaded,
    TResult Function(CurrentPositionNotLoaded value)? currentPositionNotLoaded,
    required TResult orElse(),
  }) {
    if (currentPositionLoaded != null) {
      return currentPositionLoaded(this);
    }
    return orElse();
  }
}

abstract class CurrentPositionLoaded implements CurrentPositionState {
  const factory CurrentPositionLoaded(
          final Position currentPosition, final String currentAddress) =
      _$CurrentPositionLoaded;

  Position get currentPosition;
  String get currentAddress;
  @JsonKey(ignore: true)
  _$$CurrentPositionLoadedCopyWith<_$CurrentPositionLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrentPositionNotLoadedCopyWith<$Res> {
  factory _$$CurrentPositionNotLoadedCopyWith(_$CurrentPositionNotLoaded value,
          $Res Function(_$CurrentPositionNotLoaded) then) =
      __$$CurrentPositionNotLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrentPositionNotLoadedCopyWithImpl<$Res>
    extends _$CurrentPositionStateCopyWithImpl<$Res, _$CurrentPositionNotLoaded>
    implements _$$CurrentPositionNotLoadedCopyWith<$Res> {
  __$$CurrentPositionNotLoadedCopyWithImpl(_$CurrentPositionNotLoaded _value,
      $Res Function(_$CurrentPositionNotLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrentPositionNotLoaded implements CurrentPositionNotLoaded {
  const _$CurrentPositionNotLoaded();

  @override
  String toString() {
    return 'CurrentPositionState.currentPositionNotLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentPositionNotLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Position currentPosition, String currentAddress)
        currentPositionLoaded,
    required TResult Function() currentPositionNotLoaded,
  }) {
    return currentPositionNotLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Position currentPosition, String currentAddress)?
        currentPositionLoaded,
    TResult? Function()? currentPositionNotLoaded,
  }) {
    return currentPositionNotLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position currentPosition, String currentAddress)?
        currentPositionLoaded,
    TResult Function()? currentPositionNotLoaded,
    required TResult orElse(),
  }) {
    if (currentPositionNotLoaded != null) {
      return currentPositionNotLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CurrentPositionLoaded value)
        currentPositionLoaded,
    required TResult Function(CurrentPositionNotLoaded value)
        currentPositionNotLoaded,
  }) {
    return currentPositionNotLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CurrentPositionLoaded value)? currentPositionLoaded,
    TResult? Function(CurrentPositionNotLoaded value)? currentPositionNotLoaded,
  }) {
    return currentPositionNotLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CurrentPositionLoaded value)? currentPositionLoaded,
    TResult Function(CurrentPositionNotLoaded value)? currentPositionNotLoaded,
    required TResult orElse(),
  }) {
    if (currentPositionNotLoaded != null) {
      return currentPositionNotLoaded(this);
    }
    return orElse();
  }
}

abstract class CurrentPositionNotLoaded implements CurrentPositionState {
  const factory CurrentPositionNotLoaded() = _$CurrentPositionNotLoaded;
}
