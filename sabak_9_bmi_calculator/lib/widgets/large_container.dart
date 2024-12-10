import 'package:flutter/material.dart';

class LargeWidget extends StatelessWidget {
  const LargeWidget({
    super.key,
    required this.text,
    required this.textSm,
  });

  final String text;
  final String textSm;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 176,
      decoration: BoxDecoration(
        color: const Color(0xff0a001f),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            Text(
              textSm,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 40,
              ),
            ),
            Slider.adaptive(
              thumbColor: const Color(0xffff0f65),
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
              max: 230,
              min: 100,
              value: 180,
              onChanged: (v) {},
            )
          ],
        ),
      ),
    );
  }
}
