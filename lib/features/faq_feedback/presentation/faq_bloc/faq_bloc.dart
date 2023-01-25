import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/faq_feedback/domain/entities/entity.dart';
import 'package:foodbusters/features/faq_feedback/domain/usecases/faq_feedback_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_bloc.freezed.dart';
part 'faq_event.dart';
part 'faq_state.dart';

class FAQBloc extends Bloc<FAQEvent, FAQState> {
  final FAQUsecase faqUsecase;
  final AddFeedBackUsecase addFeedBackUsecase;
  FAQBloc({required this.faqUsecase, required this.addFeedBackUsecase})
      : super(const FaqInitial()) {
    on<GetFaq>(_getFaq);
    on<AddFeedback>(_onAddFeedback);
  }

  _getFaq(GetFaq event, Emitter<FAQState> emit) async {
    emit(const FaqLoading());
    final failureOrSuccess = await faqUsecase(NoParams());
    failureOrSuccess.fold((failure) {
      if (failure is NetworkFailure) {
        emit(FaqError(NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (result) {
      emit(FaqLoaded(result));
    });
  }

  _onAddFeedback(AddFeedback event, Emitter<FAQState> emit) async {
    emit(const FeedbackLoading());
    final failureOrSuccess = await addFeedBackUsecase(event.feedback);
    failureOrSuccess.fold((failure) {
      if (failure is NetworkFailure) {
        emit(AddFeedBackFailure(
            NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (message) {
      emit(AddFeedBackSuccess(message));
    });
  }
}
