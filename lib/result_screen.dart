import 'package:flutter/material.dart';
import 'package:emoji_game/demo_data.dart';
import 'package:emoji_game/summary_maker.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.answers, this.function1, {super.key});
  final void Function() function1;
  final List<String> answers;
  List<Map<String, Object>> summaryofResult() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < answers.length; i++) {
      summary.add({
        'question_index': i + 1,
        'question': EmojiQA[i].emojiQ,
        'correct_answer': EmojiQA[i].emojiA[0],
        'user_selected': answers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Final Result",
              style: GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 30),
            SummaryMaker(summaryofResult()),
            SizedBox(height: 20),
            ElevatedButton(onPressed: function1, child: Text("Restart Quiz")),
          ],
        ),
      ),
    );
  }
}
