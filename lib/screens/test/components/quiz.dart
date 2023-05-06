import 'package:ObjectCoder/constants.dart';
import 'package:ObjectCoder/screens/test/components/answers_card.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {

  dynamic questions;
  int index;
  dynamic questionsAnswer;

  Quiz({
    Key? key,
    required this.questions,
    required this.index,
    required this.questionsAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      margin:  const EdgeInsets.all(14),
      child: Column(
        children: [
          Container(
            height: height / 2.7,
            width: width,
            /// Revisar recomendaciones con el maestro
            child: Center(
              child: Text(
                questions[index]['questionText'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,    ///REVISAR DIMENSIONES DE LA LETRA
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Column(
              children: [
                ...(questions[index]['answers'] as List<Map<String,Object>>).map((answer) =>
                AnswersCards(ontap: () => questionsAnswer(answer['score']), answertext: answer['text'] as String))
              ],
            ),
          ),
        ],
      ),
    );
  }
}