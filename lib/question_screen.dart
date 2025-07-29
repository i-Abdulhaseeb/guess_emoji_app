import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:emoji_game/demo_data.dart';
import 'package:emoji_game/model/data_structure.dart';
import 'package:emoji_game/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.function1, {super.key});
  final void Function(String answer) function1;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentIndex = 0;
  void changeQuestionAndAnswer(String answer) {
    widget.function1(answer);
    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQA = EmojiQA[currentIndex];
    return Center(
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Guess the Emoji",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 30),
            Text(
              currentQA.emojiQ,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(color: Colors.white, fontSize: 30),
            ),
            SizedBox(height: 30),
            ...currentQA.shuffleemojiA().map((answers) {
              return AnswerButton(answers, () {
                changeQuestionAndAnswer(answers);
              });
            }),
          ],
        ),
      ),
    );
  }
}
