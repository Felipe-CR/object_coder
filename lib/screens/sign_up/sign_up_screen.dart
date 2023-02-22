import 'package:flutter/material.dart';
import 'package:object_coder/screens/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: const Body(),
    );
  }
}
