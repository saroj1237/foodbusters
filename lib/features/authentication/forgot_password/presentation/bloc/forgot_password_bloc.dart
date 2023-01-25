import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/authentication/forgot_password/domain/entities/forgot_password_entity.dart';
import 'package:foodbusters/features/authentication/forgot_password/domain/usecases/forgot_password_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_bloc.freezed.dart';
part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final ForgotPasswordUsecase usecase;
  ForgotPasswordBloc(this.usecase)
      : super(const ForgotPasswordState.initial()) {
    on<GetForgotPasswordOtp>(_onGetForgotPasswordOtp);
    on<ResetPassword>(_onResetPassword);
  }
  void _onGetForgotPasswordOtp(
      GetForgotPasswordOtp event, Emitter<ForgotPasswordState> emit) async {
    emit(const ForgotPasswordState.loading());
    final ForgotPasswordRequest model =
        ForgotPasswordRequest(mobileNumber: event.mobileNumber);
    final failureOrSuccess = await usecase.call(model);
    failureOrSuccess.fold((failure) {
      if (failure is NetworkFailure) {
        emit(GetForgotPasswordOtpFailure(
            NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (trueOrFalse) {
      emit(const ForgotPasswordState.getForgotPasswordOtpSuccess());
    });
  }

  void _onResetPassword(
      ResetPassword event, Emitter<ForgotPasswordState> emit) async {
    emit(const Loading());
    final failureOrSuccess = await usecase.resetPassword(event.requestModel);
    failureOrSuccess.fold((failure) {
      if (failure is NetworkFailure) {
        emit(ResetPasswordFailure(
            NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (success) {
      emit(const ResetPasswordSuccess());
    });
  }
}
