part of 'faq_bloc.dart';

@freezed
class FAQEvent with _$FAQEvent {
  const factory FAQEvent.getFaq() = GetFaq;
  const factory FAQEvent.addFeedback(String feedback) = AddFeedback;
}
