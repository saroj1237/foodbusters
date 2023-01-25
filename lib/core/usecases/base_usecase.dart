import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_usecase.g.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {}

@JsonSerializable()
class Meta {
  final bool? hasNext;
  final bool? hasPrevious;
  final int? page;
  final int? pages;
  final int? total;

  Meta({this.hasNext, this.hasPrevious, this.page, this.pages, this.total});
  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
