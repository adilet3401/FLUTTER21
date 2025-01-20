import 'package:flutter/material.dart';

class AppText {
  Widget header(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget title(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

AppText appText = AppText();
