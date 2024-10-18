import 'package:flutter/material.dart';
import 'package:tapshyrma_7_xylophone/widgets/piano_keyboard.dart';
// import 'package:flutter/widgets.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          const PianoKeyboard(colors: Color(0xffef443a), soundName: 'note1'),
          const PianoKeyboard(colors: Color(0xffF99700), soundName: 'note2'),
          const PianoKeyboard(colors: Color(0xffFFE93B), soundName: 'note3'),
          const PianoKeyboard(colors: Color(0xff4CB050), soundName: 'note4'),
          const PianoKeyboard(colors: Color(0xff2E968C), soundName: 'note5'),
          const PianoKeyboard(colors: Color(0xff2996F5), soundName: 'note6'),
          const PianoKeyboard(colors: Color(0xff9B28B1), soundName: 'note7'),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: const BoxDecoration(
                color: Color(0xff363636),
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        'Flutter Xylophone',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 24,
        ),
      ),
      backgroundColor: const Color(0xff363636),
    );
  }
}
