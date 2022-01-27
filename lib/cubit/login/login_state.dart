part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginFormValidationState extends LoginState {
  final LoginModel loginForm;
  LoginFormValidationState(this.loginForm);
}

class OnSuccessValidation extends LoginState {
  final LoginModel loginForm;
  OnSuccessValidation(this.loginForm);
}
