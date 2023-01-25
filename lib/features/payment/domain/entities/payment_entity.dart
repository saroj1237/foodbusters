import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_entity.freezed.dart';

@freezed
class PaymentReq with _$PaymentReq {
  // String oid;
  // String paymentOption;
  // String? referenceId;
  // PaymentReq(
  //     {required this.oid, required this.paymentOption, this.referenceId});
  const factory PaymentReq({
    required String oid,
    required String paymentOption,
    String? referenceId,
  }) = _PaymentReq;
}
