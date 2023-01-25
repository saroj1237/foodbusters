part of 'faq_bloc.dart';

@freezed
class FAQState with _$FAQState {
  // Faq states
  const factory FAQState.faqInitial() = FaqInitial;
  const factory FAQState.faqLoading() = FaqLoading;
  const factory FAQState.faqError(String error) = FaqError;
  const factory FAQState.faqLoaded(List<FAQ> faq) = FaqLoaded;
  // add feedback states
  const factory FAQState.feedbackLoading() = FeedbackLoading;
  const factory FAQState.addFeedbackSuccess(String successMessage) =
      AddFeedBackSuccess;
  const factory FAQState.addFeedbackFailure(String error) = AddFeedBackFailure;
}
