import 'package:ObjectCoder/screens/test/components/appbar.dart';
import 'package:ObjectCoder/screens/test/components/finish.dart';
import 'package:ObjectCoder/screens/test/components/quiz.dart';
import 'package:ObjectCoder/screens/test/preguntas/preguntas.dart';
import 'package:flutter/material.dart';

class TestScreenH extends StatefulWidget {

  const TestScreenH({
    Key? key
  }) : super(key: key);

  @override
  State<TestScreenH> createState() => _TestScreenHState();
}

class _TestScreenHState extends State<TestScreenH> {

  int _index = 0;
  int _totalScore = 0;
  bool isFinish = false;
  _questionsAnswer(int score) {
    _totalScore += score;

    setState(() {
      _index++;
    });

    if (_index < questionsH.length) {
      isFinish = false;
    } else {
      isFinish = true;
    }
  }

  void _resetQuiz() {
    setState(() {
      isFinish = false;
      _index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: customAppBar(),
        body: isFinish == false
          ? Quiz(
          index: _index,
          questionsAnswer: _questionsAnswer,
          questions: questionsH,
        ) : FinishScreen (
          onPressed: () {
            _resetQuiz();
          },
          totalScore: _totalScore,
        )
      ),
    );
  }
}