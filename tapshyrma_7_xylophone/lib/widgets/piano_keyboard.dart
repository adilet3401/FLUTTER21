import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoKeyboard extends StatelessWidget {
  final Color colors;
  final String soundName;

  const PianoKeyboard(
      {super.key, required this.colors, required this.soundName});

  @override
  Widget build(BuildContext context) {
    final AudioPlayer player = AudioPlayer();
    // final AudioCache cache = AudioCache(prefix: 'assets/sounds/');

    return Expanded(
      child: GestureDetector(
        onTap: () async {
          await player.setSource(AssetSource('assets/sounds/$soundName.wav'));
          player.resume();
        },
        child: Container(
          width: double.infinity,
          height: 91,
          decoration: BoxDecoration(
            color: colors,
          ),
        ),
      ),
    );
  }
}
