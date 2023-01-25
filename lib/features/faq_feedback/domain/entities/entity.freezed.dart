// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FAQ _$FAQFromJson(Map<String, dynamic> json) {
  return _FAQ.fromJson(json);
}

/// @nodoc
mixin _$FAQ {
  String get answer => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String get createdDate => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FAQCopyWith<FAQ> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQCopyWith<$Res> {
  factory $FAQCopyWith(FAQ value, $Res Function(FAQ) then) =
      _$FAQCopyWithImpl<$Res, FAQ>;
  @useResult
  $Res call(
      {String answer,
      String? category,
      String createdDate,
      String id,
      String question});
}

/// @nodoc
class _$FAQCopyWithImpl<$Res, $Val extends FAQ> implements $FAQCopyWith<$Res> {
  _$FAQCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? category = freezed,
    Object? createdDate = null,
    Object? id = null,
    Object? question = null,
  }) {
    return _then(_value.copyWith(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FAQCopyWith<$Res> implements $FAQCopyWith<$Res> {
  factory _$$_FAQCopyWith(_$_FAQ value, $Res Function(_$_FAQ) then) =
      __$$_FAQCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String answer,
      String? category,
      String createdDate,
      String id,
      String question});
}

/// @nodoc
class __$$_FAQCopyWithImpl<$Res> extends _$FAQCopyWithImpl<$Res, _$_FAQ>
    implements _$$_FAQCopyWith<$Res> {
  __$$_FAQCopyWithImpl(_$_FAQ _value, $Res Function(_$_FAQ) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? category = freezed,
    Object? createdDate = null,
    Object? id = null,
    Object? question = null,
  }) {
    return _then(_$_FAQ(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FAQ implements _FAQ {
  const _$_FAQ(
      {required this.answer,
      this.category,
      required this.createdDate,
      required this.id,
      required this.question});

  factory _$_FAQ.fromJson(Map<String, dynamic> json) => _$$_FAQFromJson(json);

  @override
  final String answer;
  @override
  final String? category;
  @override
  final String createdDate;
  @override
  final String id;
  @override
  final String question;

  @override
  String toString() {
    return 'FAQ(answer: $answer, category: $category, createdDate: $createdDate, id: $id, question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FAQ &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, answer, category, createdDate, id, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FAQCopyWith<_$_FAQ> get copyWith =>
      __$$_FAQCopyWithImpl<_$_FAQ>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FAQToJson(
      this,
    );
  }
}

abstract class _FAQ implements FAQ {
  const factory _FAQ(
      {required final String answer,
      final String? category,
      required final String createdDate,
      required final String id,
      required final String question}) = _$_FAQ;

  factory _FAQ.fromJson(Map<String, dynamic> json) = _$_FAQ.fromJson;

  @override
  String get answer;
  @override
  String? get category;
  @override
  String get createdDate;
  @override
  String get id;
  @override
  String get question;
  @override
  @JsonKey(ignore: true)
  _$$_FAQCopyWith<_$_FAQ> get copyWith => throw _privateConstructorUsedError;
}
