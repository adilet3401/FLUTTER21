import 'package:flutter/material.dart';

class LargeWidget extends StatelessWidget {
  const LargeWidget({
    super.key,
    required this.text,
    required this.cm,
    required this.san,
    required this.widget,
  });

  final String text;
  final int san;
  final String cm;
  final Widget widget;

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
                color: Color(0xffceccd2),
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text(
                  san.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 40,
                  ),
                ),
                const SizedBox(width: 9),
                Text(
                  cm,
                  style: const TextStyle(
                    color: Color(0xffceccd2),
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                  ),
                ),
              ],
            ),
            widget,
          ],
        ),
      ),
    );
  }
}
