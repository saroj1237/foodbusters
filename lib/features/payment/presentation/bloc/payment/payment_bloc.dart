import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/payment/domain/entities/payment_entity.dart';
import 'package:foodbusters/features/payment/domain/usecases/cod_pay_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_bloc.freezed.dart';
part 'payment_event.dart';
part 'payment_state.dart';

// const clientId = "JB0BBQ4aD0UqIThFJwAKBgAXEUkEGQUBBAwdOgABHD4DChwUAB0R";
// const clientSecret = "BhwIWQQADhIYSxILExMcAgFXFhcOBwAKBgAXEQ==";

const clientId = "IxwKE0ExHhYNAAFfGRQfBw==";
const clientSecret = "BhwIWQccBAEbEAAREhNdGAES";

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final PaymentUsecase paymentUsecase;
  PaymentBloc({required this.paymentUsecase}) : super(const Initial()) {
    on<PaywithCOD>(_onPaywithCOD);
    on<PaywithEsewa>(_onPaywithEsewa);
  }
  void _onPaywithCOD(PaywithCOD event, Emitter<PaymentState> emit) async {
    emit(const PaymentLoading());
    final failureOrSuccess = await paymentUsecase(event.req);
    failureOrSuccess.fold((failure) {
      if (failure is NetworkFailure) {
        emit(PaymentFailure(NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (success) {
      emit(const PaymentSuccess(true));
    });
  }

  void _onPaywithEsewa(PaywithEsewa event, Emitter<PaymentState> emit) async {
    emit(const PaymentLoading());
    final failureOrSuccess = await paymentUsecase(event.req);
    failureOrSuccess.fold((failure) {
      emit(const PaymentFailure("error"));
    }, (success) {
      emit(const PaymentSuccess(true));
    });
  }
}
