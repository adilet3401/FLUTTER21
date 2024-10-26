import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:xylophone_my_pianoapp/widgets/black_pianokey.dart';
import 'package:xylophone_my_pianoapp/widgets/white_piano_key.dart';
// import 'package:xylophone_my_pianoapp/widgets/pianokey_.dart';
// import 'package:xylophone_my_pianoapp/widgets/pianokey_.dart';

class PianoPage extends StatefulWidget {
  const PianoPage({super.key});

  @override
  State<PianoPage> createState() => _PianoPageState();
}

class _PianoPageState extends State<PianoPage> {
  AudioPlayer audio = AudioPlayer();

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
                  WhitePianoKey(
                    label: 'f1',
                    onTap: () async {
                      await audio.play(AssetSource('do3.mp3'));
                    },
                  ),
                  WhitePianoKey(
                    label: 'f2',
                    onTap: () async {
                      await audio.play(AssetSource('re2.mp3'));
                    },
                  ),
                  WhitePianoKey(
                    label: 'f3',
                    onTap: () async {
                      await audio.play(AssetSource('mi2.mp3'));
                    },
                  ),
                  WhitePianoKey(
                    label: 'f4',
                    onTap: () async {
                      await audio.play(AssetSource('fa2.mp3'));
                    },
                  ),
                  WhitePianoKey(
                    label: 'f5',
                    onTap: () async {
                      await audio.play(AssetSource('so2.mp3'));
                    },
                  ),
                  WhitePianoKey(
                    label: 'f6',
                    onTap: () async {
                      await audio.play(AssetSource('la2.mp3'));
                    },
                  ),
                  WhitePianoKey(
                    label: 'f7',
                    onTap: () async {
                      await audio.play(AssetSource('si2.mp3'));
                    },
                  ),
                  WhitePianoKey(
                    label: 'f1',
                    onTap: () async {
                      await audio.play(AssetSource('do4.mp3'));
                    },
                  ),
                  WhitePianoKey(
                    label: 'f2',
                    onTap: () async {
                      await audio.play(AssetSource('do3.mp3'));
                    },
                  ),
                  WhitePianoKey(
                    label: 'f3',
                    onTap: () async {
                      await audio.play(AssetSource('re2.mp3'));
                    },
                  ),
                  WhitePianoKey(
                    label: 'f4',
                    onTap: () async {
                      await audio.play(AssetSource('mi2.mp3'));
                    },
                  ),
                  WhitePianoKey(
                    label: 'f5',
                    onTap: () async {
                      await audio.play(AssetSource('fa2.mp3'));
                    },
                  ),
                  WhitePianoKey(
                    label: 'f6',
                    onTap: () async {
                      await audio.play(AssetSource('so2.mp3'));
                    },
                  ),
                ],
              ),
              BlackPianoKey(
                left: 30,
                label: 'f1',
                onTap: () async {
                  await audio.play(
                    AssetSource('do.mp3'),
                  );
                },
              ),
              BlackPianoKey(
                left: 89.50,
                label: 'f2',
                onTap: () async {
                  await audio.play(
                    AssetSource('re.mp3'),
                  );
                },
              ),
              BlackPianoKey(
                left: 200,
                label: 'f4',
                onTap: () async {
                  await audio.play(
                    AssetSource('mi.mp3'),
                  );
                },
              ),
              BlackPianoKey(
                left: 256,
                label: 'f5',
                onTap: () async {
                  await audio.play(
                    AssetSource('fa.mp3'),
                  );
                },
              ),
              BlackPianoKey(
                left: 312,
                label: 'f6',
                onTap: () async {
                  await audio.play(
                    AssetSource('so.mp3'),
                  );
                },
              ),
              BlackPianoKey(
                left: 420,
                label: 'f1',
                onTap: () async {
                  await audio.play(
                    AssetSource('la.mp3'),
                  );
                },
              ),
              BlackPianoKey(
                left: 475,
                label: 'f2',
                onTap: () async {
                  await audio.play(
                    AssetSource('si.mp3'),
                  );
                },
              ),
              BlackPianoKey(
                left: 585,
                label: 'f4',
                onTap: () async {
                  await audio.play(
                    AssetSource('do2.mp3'),
                  );
                },
              ),
              BlackPianoKey(
                left: 640,
                label: 'f5',
                onTap: () async {
                  await audio.play(
                    AssetSource('do.mp3'),
                  );
                },
              ),
              BlackPianoKey(
                left: 707,
                label: 'f6',
                onTap: () async {
                  await audio.play(
                    AssetSource('re.mp3'),
                  );
                },
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
