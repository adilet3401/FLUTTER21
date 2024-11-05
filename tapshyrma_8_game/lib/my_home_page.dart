import 'package:flutter/material.dart';
import 'package:tapshyrma_8_game/oop_for_questions.dart';
import 'package:tapshyrma_8_game/widgets/custom_button.dart';
import 'package:tapshyrma_8_game/widgets/questions.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff363636),
      appBar: myAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Questions(
              text: quizeList[0].question,
            ),
            const SizedBox(height: 190),
            CustomButton(
              text: quizeList[0].answer.toString(),
              color: Colors.green,
            ),
            const SizedBox(height: 30),
            CustomButton(
              color: Colors.red,
              text: quizeList[0].answer.toString(),
            ),
          ],
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text(
        'Тапшырма 7',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }
}
