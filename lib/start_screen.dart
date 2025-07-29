import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.function1, {super.key});
  final void Function() function1;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/pngwing.com.png', width: 300),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: function1,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(140, 62, 38, 101),
              foregroundColor: Colors.white,
            ),
            child: Text("Start the Game"),
          ),
        ],
      ),
    );
  }
}
