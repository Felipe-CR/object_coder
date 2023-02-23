import 'package:flutter/material.dart';
import 'package:object_coder/constants.dart';
import 'package:object_coder/screens/sign_up/sign_up_screen.dart';
import 'package:object_coder/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "¿No tienes cuenta?",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16)
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(
              context,
              SignUpScreen.routeName
          ),
          child: Text(
            " Registro",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: kColorRegister,
            ),
          ),
        )
      ],
    );
  }
}