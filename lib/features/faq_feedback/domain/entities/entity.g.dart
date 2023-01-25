// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FAQ _$$_FAQFromJson(Map<String, dynamic> json) => _$_FAQ(
      answer: json['answer'] as String,
      category: json['category'] as String?,
      createdDate: json['createdDate'] as String,
      id: json['id'] as String,
      question: json['question'] as String,
    );

Map<String, dynamic> _$$_FAQToJson(_$_FAQ instance) => <String, dynamic>{
      'answer': instance.answer,
      'category': instance.category,
      'createdDate': instance.createdDate,
      'id': instance.id,
      'question': instance.question,
    };
