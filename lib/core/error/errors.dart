import 'package:foodbusters/core/error/network_exceptions.dart';

abstract class Failure {}

class NetworkFailure extends Failure {
  final NetworkExceptions error;

  NetworkFailure(this.error);
}

class CacheFailure extends Failure {}
