import 'package:ObjectCoder/constants.dart';
import 'package:flutter/material.dart';

class AnswersCards extends StatelessWidget {

  dynamic ontap;
  String answertext;

  AnswersCards({
    super.key,
    required this.ontap,
    required this.answertext,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.all(5),
        width: width,
        height: height / 11,
        ///Revisar con el maestro
        child: Center(
          child: Text(
            answertext,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: qTextColor, borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }
}