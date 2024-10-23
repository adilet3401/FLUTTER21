import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tapshyrma_7_xylophone/widgets/piano_keyboard.dart';
// import 'package:flutter/widgets.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  // AudioPlayer audio = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  AudioPlayer audio = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          PianoKeyboard(
            colors: const Color(0xffEF443A),
            onTap: () async {
              await audio.play(
                AssetSource('do.wav'),
              );
            },
          ),
          PianoKeyboard(
            colors: const Color(0xffF99700),
            onTap: () {},
          ),
          PianoKeyboard(
            colors: const Color(0xffFFE93B),
            onTap: () {},
          ),
          PianoKeyboard(
            colors: const Color(0xff4CB050),
            onTap: () {},
          ),
          PianoKeyboard(
            colors: const Color(0xff2E968C),
            onTap: () {},
          ),
          PianoKeyboard(
            colors: const Color(0xff2996F5),
            onTap: () {},
          ),
          PianoKeyboard(
            colors: const Color(0xff9B28B1),
            onTap: () {},
          ),
          // Expanded(
          // child: Container(
          //   width: double.infinity,
          //   height: 70,
          //   decoration: const BoxDecoration(
          //     color: Color(0xff363636),
          //   ),
          // ),
          // ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff363636),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color(0xff363636),
            icon: Icon(
              Icons.home,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'home',
          ),
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
