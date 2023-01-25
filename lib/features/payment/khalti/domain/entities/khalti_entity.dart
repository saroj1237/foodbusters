import 'package:foodbusters/features/payment/khalti/presentation/bloc/khalti_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'khalti_entity.g.dart';

@JsonSerializable()
class KhaltiRequestModel {
  @JsonKey(name: "reference_id")
  final String referenceId;
  @JsonKey(name: "order_id")
  final String orderId;
  const KhaltiRequestModel({required this.referenceId, required this.orderId});

  factory KhaltiRequestModel.fromJson(Map<String, dynamic> json) =>
      _$KhaltiRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$KhaltiRequestModelToJson(this);
}

class KhaltiOtpPageModel {
  final InitiatePaySuccess initPaySuccess;
  final String orderId;

  KhaltiOtpPageModel({required this.initPaySuccess, required this.orderId});
}
