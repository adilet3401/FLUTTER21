import 'package:flutter/material.dart';
import 'package:tapshyrma_8_game/oop_for_questions.dart';
import 'package:tapshyrma_8_game/widgets/custom_button.dart';
import 'package:tapshyrma_8_game/widgets/questions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int questionNumber = 0;
  int tuuraJoop = 0;
  int tuuraEmes = 0;

  questionAnswer() {
    if (quizeList[questionNumber].answer == true ||
        quizeList[questionNumber].answer == false) {
      tuuraJoop++;
      tuuraEmes++;

      questionNumber++;
      print('туура ${tuuraJoop.toInt()}');
    } else if (quizeList[questionNumber].answer == true ||
        quizeList[questionNumber].answer == false) {
      tuuraEmes++;
      tuuraJoop++;

      questionNumber++;
      print('туура эмес${tuuraEmes.toInt()}');
    }
    if (questionNumber >= quizeList.length) {
      questionNumber = 4;
      showTestDialog(context);
      // questionNumber = 0;
      // tuuraJoop = 0;
      // tuuraEmes = 0;
    }
    setState(() {});
  }

  Future<void> showTestDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'начать заново?',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                tuuraJoop = 0;
                tuuraEmes = 0;
                questionNumber = 0;
                Navigator.pop(context);
                setState(() {});
              },
              child: const Text(
                'да',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

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
              text: quizeList[questionNumber].question,
            ),
            const SizedBox(height: 190),
            CustomButton(
              text: 'Туура',
              color: Colors.green,
              onPressed: () {
                questionAnswer();
              },
            ),
            const SizedBox(height: 30),
            CustomButton(
                color: Colors.red,
                text: 'Туура эмес',
                onPressed: () {
                  questionAnswer();
                }),
          ],
        ),
      ),
    );
  }
//

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
