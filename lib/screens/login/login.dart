import 'package:cubit_validation/cubit/login/login_cubit.dart';
import 'package:cubit_validation/screens/login/components/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text("Login"),
        ),
        body: BlocProvider(
          create: (context) => LoginCubit(),
          child: const LoginForm(),
        ));
  }
}
