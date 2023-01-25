part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.initLoginSuccess() = InitLoginSuccess;
  const factory LoginState.initLoginFailure(String error) = InitLoginFailure;
}
