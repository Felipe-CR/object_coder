import 'package:flutter/material.dart';
import 'package:ObjectCoder/components/custom_surffix_icon.dart';
import 'package:ObjectCoder/components/default_button.dart';
import 'package:ObjectCoder/components/form_error.dart';
import 'package:ObjectCoder/constants.dart';
import 'package:ObjectCoder/screens/home/home_screen.dart';
import 'package:ObjectCoder/size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({
    Key? key
  }) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String?> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;

  void addError({String? error}) {
    if(!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if(errors.contains(error)){
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
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continuar",
            press: () {
              if(_formKey.currentState!.validate()) {
                Navigator.pushNamed(
                    context,
                    HomeScreen.routeName
                );
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if(value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
        return null;
      },
      validator: (value) {
        if(value!.isEmpty) {
          addError(error: kNameNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Nombres",
        hintText: "Ingrese sus Nombres",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
        )
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      decoration: const InputDecoration(
        labelText: "Apellidos",
        hintText: "Ingrese sus Apellidos",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
        )
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if(value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if(value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Número Celular",
        hintText: "Ingresa tu Número Celular",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Phone.svg"
        )
      ),
    );
  }

}