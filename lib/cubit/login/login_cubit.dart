import 'package:bloc/bloc.dart';
import 'package:cubit_validation/common/utility.dart';
import 'package:cubit_validation/models/login_model.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginFormValidationState(LoginModel.empty()));

  void onChangeOfEmail(String email) {
    final _loginState = state as LoginFormValidationState;
    LoginModel _loginModel = _loginState.loginForm.copyFrom();
    if (Utility.isEmailValid(email)) {
      _loginModel.email.isValid = false;
      _loginModel.email.errorMsg = "Enter valid email address";
    } else {
      _loginModel.email.isValid = true;
    }
    emit(LoginFormValidationState(_loginModel));
  }

  void onChanngeOfPassword(String pass) {
    final _loginState = state as LoginFormValidationState;
    LoginModel _loginModel = _loginState.loginForm.copyFrom();
    if (!Utility.checkPasswordValidation(pass)) {
      _loginModel.password.isValid = false;
      _loginModel.password.errorMsg =
          "Password shouldn't be blank & Password must contain at least eight characters, at least one number and both lower and uppercase letters and special characters";
    } else {
      _loginModel.password.isValid = true;
    }
    emit(LoginFormValidationState(_loginModel));
  }

  void verifyUser() {
    final _loginState = state as LoginFormValidationState;
    LoginModel _loginModel = _loginState.loginForm.copyFrom();
    emit(OnSuccessValidation(_loginModel));
  }
}
