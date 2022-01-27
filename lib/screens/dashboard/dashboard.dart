import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Dashboard"),
      ),
      body: const Center(
        child: Text(
          "Login Success, Thank You!!!",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.blue),
        ),
      ),
    );
  }
}
