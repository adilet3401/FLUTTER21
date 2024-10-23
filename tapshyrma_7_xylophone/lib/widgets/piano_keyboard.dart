// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoKeyboard extends StatelessWidget {
  final Color colors;
  // final String soundName;
  final void Function()? onTap;

  const PianoKeyboard({
    super.key,
    required this.colors,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 104,
        decoration: BoxDecoration(
          color: colors,
        ),
      ),
    );
  }
}
