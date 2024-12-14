import 'package:flutter/material.dart';
import 'package:sabak_9_bmi_calculator/methods/alert_dialog.dart';

class Calculator extends StatelessWidget {
  const Calculator({
    super.key,
    required this.weight,
    required this.height,
  });

  final int weight;
  final int height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final result = (weight / ((height / 100) * (height / 100)));
        if (result > 0 && result <= 18.5) {
          AlertClass().showMyDialog(
            context,
            text: 'вы худой',
          );
        } else if (result > 18.5 && result <= 25) {
          AlertClass().showMyDialog(
            context,
            text: 'нормальное телосложение',
          );
        } else if (result > 25 && result <= 30) {
          AlertClass().showMyDialog(
            context,
            text: 'у вас лишний вес',
          );
        } else if (result > 30 && result <= 35) {
          AlertClass().showMyDialog(
            context,
            text: 'вы толстый',
          );
        } else if (result > 35 && result <= 40) {
          AlertClass().showMyDialog(
            context,
            text: 'вам надо худеть',
          );
        }
      },
      child: Container(
        height: 73,
        width: 370,
        color: const Color(0xffFF0F65),
        child: const Center(
          child: Text(
            'CALCULATOR',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
