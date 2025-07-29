import 'package:flutter/material.dart';

class SummaryMaker extends StatelessWidget {
  SummaryMaker(this.summary, {super.key});
  List<Map<String, Object>> summary;
  @override
  Widget build(context) {
    return Column(
      children: summary.map((value) {
        return Row(
          children: [
            Text(
              ((value['question_index'] as int).toString()),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    value['question'] as String,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    value['correct_answer'] as String,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    value['user_selected'] as String,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
