import 'package:flutter/widgets.dart';
import 'package:object_coder/screens/complete_profile/complete_profile_screen.dart';
import 'package:object_coder/screens/forgot_password/forgot_password_screen.dart';
import 'package:object_coder/screens/home/home_screen.dart';
import 'package:object_coder/screens/sign_in/sign_in_screen.dart';
import 'package:object_coder/screens/sign_up/sign_up_screen.dart';
import 'package:object_coder/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};