import 'package:emoji_game/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:emoji_game/start_screen.dart';
import 'package:emoji_game/question_screen.dart';
import 'package:emoji_game/demo_data.dart';

class ScreenChanger extends StatefulWidget {
  @override
  State<ScreenChanger> createState() {
    return _ScreenChangerState();
  }
}

class _ScreenChangerState extends State<ScreenChanger> {
  var currentScreen = "Start-screen";
  List<String> choosenAnswers = [];
  void shifttoStart() {
    setState(() {
      choosenAnswers = [];
      currentScreen = "Start-screen";
    });
  }

  void changetoQuestion() {
    setState(() {
      currentScreen = "Question-screen";
    });
  }

  void saveAnswers(String ans) {
    choosenAnswers.add(ans);

    if (choosenAnswers.length == EmojiQA.length) {
      setState(() {
        currentScreen = "Result-screen";
      });
    }
  }

  Widget currentScreenSelector() {
    if (currentScreen == "Start-screen") {
      return StartScreen(changetoQuestion);
    } else if (currentScreen == "Question-screen") {
      return QuestionScreen(saveAnswers);
    } else {
      return ResultScreen(choosenAnswers, shifttoStart);
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 18, 84, 197),
                const Color.fromARGB(255, 193, 29, 29),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: currentScreenSelector(),
        ),
      ),
    );
  }
}
