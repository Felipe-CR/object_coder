import 'package:ObjectCoder/constants.dart';
import 'package:ObjectCoder/screens/home/home_screen.dart';
import 'package:ObjectCoder/screens/test/components/animations.dart';
import 'package:flutter/material.dart';

class FinishScreen extends StatelessWidget {

  VoidCallback onPressed;
  int totalScore;

  FinishScreen({
    Key? key,
    required this.onPressed,
    required this.totalScore,
  }) : super(key: key);

  ///Revisar los textos de SALIDA
  String get resultPhrase {
    String resultText;
    if (totalScore <= 10) {
      resultText = "You are awesome!";
    } else if (totalScore <= 15) {
      resultText = "Pretty Likeable!";
    } else if (totalScore <= 20) {
      resultText = "You are so ... Strange?!";
    } else {
      resultText = "You are so ...!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomAnimation(
            1,
            20,
            child: Text(
              resultPhrase,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: qTextColor,
              ),
            ),
          ),
          BottomAnimation(
            1,
            20,
            child: Text(
              "Your final score is: $totalScore/25",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: qTextColor,
              ),
            ),
          ),
          BottomAnimation(
            1,
            30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: width / 3,
                  height: height / 16,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
                    ),
                    child: const Text("de Nuevo"),
                  ),
                ),
                SizedBox(
                  width: width / 3,
                  height: height / 16,
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) =>
                               const HomeScreen(),
                         )
                       );
                    },
                    ///Revisar con el maestro por que efectua el cambio
                    child: const Text("Salir"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}