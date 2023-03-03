import 'package:flutter/material.dart';
import 'package:ObjectCoder/components/custom_surffix_icon.dart';
import 'package:ObjectCoder/components/default_button.dart';
import 'package:ObjectCoder/constants.dart';
import 'package:ObjectCoder/screens/complete_profile/complete_profile_screen.dart';
import 'package:ObjectCoder/size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key
  }) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {

  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conform_password;
  bool remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if(!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if(errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          builderPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildConformPassFormField(),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continuar",
            press: () {
              if(_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(
                    context,
                    CompleteProfileScreen.routeName
                );
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if(value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if(emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if(value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if(!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Ingresa tu Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        )
      ),
    );
  }

  TextFormField builderPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValues) => password = newValues,
      onChanged: (value) {
        if(value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if(value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if(value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if(value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Contraseña",
        hintText: "Ingresa tu Contraseña",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        )
      ),
    );
  }

  TextFormField buildConformPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValues) => conform_password = newValues,
      onChanged: (value) {
        if(password == conform_password) {
          removeError(error: kMatchPassError);
        }
        return null;
      },
      validator: (value) {
        if(value!.isEmpty) {
          return "";
        } else if(password != conform_password) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Confirma tu Contraseña",
        hintText: "Re-Ingresa tu Contraseña",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Lock.svg",
        )
      ),
    );
  }

}