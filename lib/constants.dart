import 'package:flutter/material.dart';
import 'package:ObjectCoder/size_config.dart';

const kPrimaryColor = Color(0xFF674AEF);
const kColorRegister= Color(0xFF89dad0);
const kTextColor = Color(0xff232121);
const qTextColor = Color(0xfff2f2f2);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[uao]+\.[edu]+\.[co]+");

const String kEmailNullError = "Por favor ingrese su Email";
const String kInvalidEmailError = "Por favor ingrese un email valido";
const String kPassNullError = "Por favor ingrese su contraseña";
const String kShortPassError = "la contraseña es muy corta";
const String kMatchPassError = "la contraseña no coinciden";
const String kNameNullError = "Por favor ingrese su nombre";
const String kPhoneNumberNullError = "Por favor ingrese su numero de celular";

final otpInputDecoration = InputDecoration(
  contentPadding:
    EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
    border: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor),
  );
}