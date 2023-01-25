import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/faq_feedback/data/datasources/faq_feedback_remote_datasource.dart';
import 'package:foodbusters/features/faq_feedback/domain/entities/entity.dart';
import 'package:foodbusters/features/faq_feedback/domain/repositories/faq_feedback_repository.dart';

class FAQFeedbakRepositoryImpl implements FAQFeedbackRepository {
  final FAQFeedbackRemoteDataSource remoteDataSource;

  FAQFeedbakRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<FAQ>>> getFaq() async {
    try {
      final result = await remoteDataSource.getFaq();
      return Right(result);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, String>> addFeedback(String feedback) async {
    try {
      final result = await remoteDataSource.addFeedback(feedback);
      return Right(result);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
