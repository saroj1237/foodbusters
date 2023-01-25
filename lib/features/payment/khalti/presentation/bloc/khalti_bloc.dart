import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/payment/khalti/domain/entities/khalti_entity.dart';
import 'package:foodbusters/features/payment/khalti/domain/usecases/khalti_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:khalti/khalti.dart';

part 'khalti_bloc.freezed.dart';
part 'khalti_event.dart';
part 'khalti_state.dart';

class KhaltiBloc extends Bloc<KhaltiEvent, KhaltiState> {
  final KhaltiUsecase usecase;
  KhaltiBloc(this.usecase) : super(const Initial()) {
    on<InitiatePayment>(_onInitiatePayment);
    on<ConfirmPayment>(_onConfirmPaymet);
  }
  _onInitiatePayment(InitiatePayment event, Emitter<KhaltiState> emit) async {
    emit(const KhaltiPayLoading());
    try {
      final initiationModel = await Khalti.service
          .initiatePayment(request: event.initiationRequestModel);
      emit(InitiatePaySuccess(
        paymentInitiationResponseModel: initiationModel,
        mpin: event.initiationRequestModel.transactionPin,
      ));
    } catch (e) {
      emit(InitiatePayFailure(e.toString()));
    }
  }

  _onConfirmPaymet(ConfirmPayment event, Emitter<KhaltiState> emit) async {
    emit(const KhaltiPayLoading());
    try {
      final confirmRequestModel = PaymentConfirmationRequestModel(
          confirmationCode: event.otp,
          token: event.khaltiOtpPageModel.initPaySuccess
              .paymentInitiationResponseModel.token,
          transactionPin: event.khaltiOtpPageModel.initPaySuccess.mpin);
      final paymentSuccessModel =
          await Khalti.service.confirmPayment(request: confirmRequestModel);
      // emit(ConfirmPaySuccess(paymentSuccessModel: paymentSuccessModel));
      // TODO: confirm with our backent by providing idx(given by khalti) and order id
      final failureOrSucces = await usecase(KhaltiRequestModel(
        orderId: event.khaltiOtpPageModel.orderId,
        referenceId: paymentSuccessModel.idx,
      ));
      failureOrSucces.fold((failure) {
        if (failure is NetworkFailure) {
          emit(ConfirmPayFailure(
              NetworkExceptions.getErrorMessage(failure.error)));
        }
      }, (success) {
        emit(ConfirmPaySuccess(paymentSuccessModel: paymentSuccessModel));
      });
    } catch (e) {
      emit(ConfirmPayFailure(e.toString()));
    }
  }
}
