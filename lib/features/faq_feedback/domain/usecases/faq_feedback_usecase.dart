import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/faq_feedback/domain/entities/entity.dart';
import 'package:foodbusters/features/faq_feedback/domain/repositories/faq_feedback_repository.dart';

class FAQUsecase implements UseCase<List<FAQ>, NoParams> {
  final FAQFeedbackRepository repository;

  FAQUsecase(this.repository);

  @override
  Future<Either<Failure, List<FAQ>>> call(NoParams params) async {
    return await repository.getFaq();
  }
}

class AddFeedBackUsecase implements UseCase<String, String> {
  final FAQFeedbackRepository repository;

  AddFeedBackUsecase(this.repository);

  @override
  Future<Either<Failure, String>> call(String feedback) async {
    return await repository.addFeedback(feedback);
  }
}
