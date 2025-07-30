import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryMaker extends StatelessWidget {
  SummaryMaker(this.summary, {super.key});
  List<Map<String, Object>> summary;
  Widget decideIndex(String cQ, String aQ, String index) {
    if (cQ != aQ) {
      return Container(
        height: 20,
        width: 20,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          index,
          style: GoogleFonts.lato(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    } else {
      return Container(
        height: 20,
        width: 20,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 38, 0, 255),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          index,
          style: GoogleFonts.lato(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }
  }

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map((value) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                decideIndex(
                  value['user_selected'] as String,
                  value['correct_answer'] as String,
                  value['question_index'].toString(),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        value['question'] as String,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text(
                        value['correct_answer'] as String,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 0, 200, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        value['user_selected'] as String,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 0, 200, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
