import 'package:flutter/material.dart';
import 'package:xylophone_my_pianoapp/widgets/black_pianokey.dart';
import 'package:xylophone_my_pianoapp/widgets/white_piano_key.dart';
// import 'package:xylophone_my_pianoapp/widgets/pianokey_.dart';
// import 'package:xylophone_my_pianoapp/widgets/pianokey_.dart';

class PianoPage extends StatelessWidget {
  const PianoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          const Spacer(),
          Stack(
            children: [
              Row(
                children: [
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  // WhitePianoKey(),
                ],
              ),
              BlackPianoKey(
                left: 30,
              ),
              BlackPianoKey(
                left: 89.50,
              ),
              BlackPianoKey(
                left: 200,
              ),
              BlackPianoKey(
                left: 256,
              ),
              BlackPianoKey(
                left: 312,
              ),
              BlackPianoKey(
                left: 420,
              ),
              BlackPianoKey(
                left: 475,
              ),
              BlackPianoKey(
                left: 585,
              ),
              BlackPianoKey(
                left: 640,
              ),
              BlackPianoKey(
                left: 695,
              )
            ],
          )
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: const Text(
        'My Piano App',
        style: TextStyle(
          color: Colors.white,
          fontSize: 27,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
