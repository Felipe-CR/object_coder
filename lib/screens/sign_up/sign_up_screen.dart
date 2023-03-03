import 'package:flutter/material.dart';
import 'package:ObjectCoder/screens/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  const SignUpScreen({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registro"),
      ),
      body: Body(),
    );
  }
}