import 'package:flutter/material.dart';
import 'package:ObjectCoder/components/no_account_text.dart';
import 'package:ObjectCoder/components/social_card.dart';
import 'package:ObjectCoder/screens/sign_in/components/sign_form.dart';
import 'package:ObjectCoder/size_config.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Bienvenido de Nuevo!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(25),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Inicie sesión con su correo electrónico \ny contraseña o continúe con las redes sociales",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(12),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {}
                    ),
                    SocialCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
