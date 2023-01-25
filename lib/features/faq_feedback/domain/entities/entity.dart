import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity.freezed.dart';
part 'entity.g.dart';

@freezed
class FAQ with _$FAQ {
  const factory FAQ({
    required String answer,
    String? category,
    required String createdDate,
    required String id,
    required String question,
  }) = _FAQ;
  factory FAQ.fromJson(Map<String, dynamic> json) => _$FAQFromJson(json);
}
