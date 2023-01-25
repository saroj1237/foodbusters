import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/authentication/login/domain/entities/login_entity.dart';
import 'package:foodbusters/features/authentication/login/domain/usecases/login_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase useCase;

  LoginBloc(this.useCase) : super(const LoginState.initial()) {
    on<InitLogin>((event, emit) async {
      emit(const LoginState.loading());
      final failureOrbool = await useCase.call(event.loginRequest);
      failureOrbool.fold((failure) {
        if (failure is NetworkFailure) {
          emit(InitLoginFailure(
              NetworkExceptions.getErrorMessage(failure.error)));
        } else {
          emit(const InitLoginFailure("Login failure"));
        }
      }, (success) {
        emit(const LoginState.initLoginSuccess());
      });
    });
  }
}
