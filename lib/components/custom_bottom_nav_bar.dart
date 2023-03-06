import 'package:ObjectCoder/constants.dart';
import 'package:ObjectCoder/enum.dart';
import 'package:ObjectCoder/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectMenu,
  }) : super(key: key);

  final MenuState selectMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Colors.grey;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow:[
          BoxShadow(
            offset:const Offset(0, -10),
            blurRadius: 10,
            color: const Color(0xFFDADADA).withOpacity(1),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: MenuState.home == selectMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
              ),
              onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
            ),
            IconButton(
              icon: Icon(
                Icons.assignment,
                color: MenuState.person == selectMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.favorite,
                color: MenuState.person == selectMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: MenuState.person == selectMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
              ),
              onPressed: () {}, //=> Navigator.pushNamed(context, routeName),
            )
          ],
        ),
      ),
    );
  }
}