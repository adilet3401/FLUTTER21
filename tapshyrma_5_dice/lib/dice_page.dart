import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:tapshyrma_5_dice/widgets/custom_button.dart';
import 'package:tapshyrma_5_dice/widgets/image_widget.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  //Dice привязка к переменным
  int leftDiceNimber = 1;
  int rightDiceNumber = 1;
  // функция для привязки класса рандома, к переменным
  void rollDice() {
    setState(() {
      leftDiceNimber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Dice Project',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Center(
        // child: Container(
        // decoration: BoxDecoration(image: DecorationImage(image: )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: ImageWidget(image: 'assets/d$leftDiceNimber.svg'),
                ),
                Expanded(
                  child: ImageWidget(image: 'assets/d$rightDiceNumber.svg'),
                ),
              ],
            ),
            CustomButton(
              onPressed: rollDice,
            ),
          ],
        ),
        // ),
      ),
    );
  }
}
