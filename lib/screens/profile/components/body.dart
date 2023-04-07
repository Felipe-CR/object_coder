import 'package:ObjectCoder/screens/profile/components/profile_menu.dart';
import 'package:ObjectCoder/screens/profile/components/profile_pic.dart';
import 'package:ObjectCoder/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(height: 20),
          ProfileMenu(
            text: "Mi cuenta",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Ajustes",
            icon: "assets/icons/Settings.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Centro de Ayuda",
            icon: "assets/icons/Question mark.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Cerrar Sesión",
            icon: "assets/icons/Log out.svg",
            press: () => {
              Navigator.pushNamed(context, SplashScreen.routeName),
            },
          ),
        ],
      ),
    );
  }
}