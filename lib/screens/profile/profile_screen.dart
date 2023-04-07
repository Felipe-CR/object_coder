import 'package:ObjectCoder/components/custom_bottom_nav_bar.dart';
import 'package:ObjectCoder/enum.dart';
import 'package:flutter/material.dart';
import 'package:ObjectCoder/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
      ),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNavBar(selectMenu: MenuState.person),
    );
  }
}