import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/faq_feedback/domain/entities/entity.dart';

abstract class FAQFeedbackRepository {
  Future<Either<Failure, List<FAQ>>> getFaq();
  Future<Either<Failure, String>> addFeedback(String feedback);
}
