import 'package:flutter/material.dart';
import 'package:ObjectCoder/routs.dart';
import 'package:ObjectCoder/screens/splash/splash_screen.dart';
import 'package:ObjectCoder/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ObjectCoder',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
