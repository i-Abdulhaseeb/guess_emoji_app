import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.message, this.function1, {super.key});
  final String message;
  final void Function() function1;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: function1,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(15),
        ),
        backgroundColor: const Color.fromARGB(255, 23, 125, 189),
        foregroundColor: Colors.white,
      ),
      child: Text(message),
    );
  }
}
