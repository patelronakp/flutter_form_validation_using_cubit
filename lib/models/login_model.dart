import 'package:cubit_validation/models/field.dart';

class LoginModel {
  final Field<String> email;
  final Field<String> password;

  LoginModel(this.email, this.password);

  LoginModel.empty() : this(Field(""), Field(""));

  bool get isFormValid => email.isValid && password.isValid;

  LoginModel copyFrom() {
    return LoginModel(email, password);
  }
}
