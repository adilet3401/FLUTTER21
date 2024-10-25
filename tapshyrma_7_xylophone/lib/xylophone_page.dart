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
                AssetSource('do.mp3'),
              );
            },
          ),
          PianoKeyboard(
            colors: const Color(0xffF99700),
            onTap: () async {
              await audio.play(
                AssetSource('re.mp3'),
              );
            },
          ),
          PianoKeyboard(
            colors: const Color(0xffFFE93B),
            onTap: () async {
              await audio.play(
                AssetSource('mi.mp3'),
              );
            },
          ),
          PianoKeyboard(
            colors: const Color(0xff4CB050),
            onTap: () async {
              await audio.play(
                AssetSource('fa.mp3'),
              );
            },
          ),
          PianoKeyboard(
            colors: const Color(0xff2E968C),
            onTap: () async {
              await audio.play(
                AssetSource('so.mp3'),
              );
            },
          ),
          PianoKeyboard(
            colors: const Color(0xff2996F5),
            onTap: () async {
              await audio.play(
                AssetSource('la.mp3'),
              );
            },
          ),
          PianoKeyboard(
            colors: const Color(0xff9B28B1),
            onTap: () async {
              await audio.play(
                AssetSource('si.mp3'),
              );
            },
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
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff363636),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(
          fontSize: 13.5,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 13.5,
          fontWeight: FontWeight.w400,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color(0xff363636),
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff363636),
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            label: 'settings',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff363636),
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff363636),
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'profile',
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
