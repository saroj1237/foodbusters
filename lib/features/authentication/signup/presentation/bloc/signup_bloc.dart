import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/authentication/signup/domain/entities/signup_entities.dart';
import 'package:foodbusters/features/authentication/signup/domain/usecases/sign_up_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final SignUpUseCase signupUseCase;
  SignupBloc({required this.signupUseCase})
      : super(const SignupState.initial()) {
    on<GetSignupOtp>(_onGetSignupOtp);
    on<VerifySignupOtp>(_onVerifySignupOtp);
  }
  void _onGetSignupOtp(GetSignupOtp event, Emitter<SignupState> emit) async {
    emit(const SignupState.getOtpLoading());

    final failureOrbool = await signupUseCase(event.sighnupRequest);
    failureOrbool.fold((failure) {
      if (failure is NetworkFailure) {
        emit(GetOtpFailure(NetworkExceptions.getErrorMessage(failure.error)));
      } else {
        emit(const GetOtpFailure("error"));
      }
    }, (trueOrFalse) {
      if (trueOrFalse == true) {
        // otp is send
        emit(const SignupState.getOtpSuccess());
        // api call for verify otp
      } else {
        // user already exist but otp not verified
        emit(const SignupState.alreadyExistButOtpNotVerified());
      }
    });
  }

  void _onVerifySignupOtp(
      VerifySignupOtp event, Emitter<SignupState> emit) async {
    emit(const SignupState.verifyOtpLoading());

    final failureOrToken =
        await signupUseCase.verifySignupOtp(event.sighnupRequest);
    failureOrToken.fold((failure) {
      if (failure is NetworkFailure) {
        emit(
            VerifyOtpFailure(NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (token) {
      // save token to locally
      emit(const VerifyOtpSuccess());
    });
  }
}
