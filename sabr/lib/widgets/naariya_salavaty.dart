import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabr/text_styles/title_colors.dart';
import 'package:sabr/widgets/app_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vibration/vibration.dart';

class NaariyaSalavat extends StatefulWidget {
  const NaariyaSalavat({super.key});

  @override
  _NaariyaSalavatState createState() => _NaariyaSalavatState();
}

class _NaariyaSalavatState extends State<NaariyaSalavat> {
  int _counter = 0;
  late SharedPreferences _prefs;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _loadCounter() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = _prefs.getInt('counter') ?? 0;
    });
  }

  Future<void> _incrementCounter() async {
    setState(() {
      _counter++;
    });
    await _prefs.setInt('counter', _counter);
  }

  Future<void> _resetCounter() async {
    setState(() {
      _counter = 0;
    });
    await _prefs.setInt('counter', _counter);
    if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
    }
  }

  void _onTap() {
    _incrementCounter();
  }

  void _onLongPress() {
    _resetCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2EFE7),
      appBar: AppBar(
        backgroundColor: const Color(0xff16423C),
        title: Text(
          "Наария Салаваты",
          style: GoogleFonts.nunito(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: AppDrawer(),
      body: InkWell(
        onTap: _onTap,
        onLongPress: _onLongPress,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
              ), // Уменьшение расстояния
              child: Center(
                child: Text(
                  'Бисмиллаахир Рахмаанир Рахиим.',
                  textAlign: TextAlign.center,
                  style: TextStyles.largeTitle,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(right: 15, left: 15),
              child: Center(
                child: Text(
                  "«Аллахумма салли салятан камилятан васаллим саляман тамман ‘аля сайидина Мухамадини-ллязи танхалю бихиль-‘укаду ватанфариджу бихиль-курабу ватукза бихиль-хаваиджу ватуналю бихи-рагаибу вахуснуль-хаватим. Ваюстаскаль-гамаму биваджхихиль-кярими ва‘аля алихи ва сахбихи фи кули лямхатин ванафасин би'адади кули ма‘люммин ляк».",
                  style: TextStyles.salavatTitle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  ' $_counter',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
