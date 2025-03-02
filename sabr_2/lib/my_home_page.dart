import 'package:flutter/material.dart';
import 'package:sabr_2/widgets/namaz_ubaktysy.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Меню в Flutter")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xffAB886D)),
              child: Text(
                "الإسلام هو الحقيقة",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            UbakytTar(
              text: 'Багымдат',
              icon: Icons.looks_one,
            ),
            UbakytTar(
              text: 'Бешим',
              icon: Icons.looks_two,
            ),
            UbakytTar(
              text: 'Аср',
              icon: Icons.looks_3,
            ),
            UbakytTar(
              text: 'Шам',
              icon: Icons.looks_4,
            ),
            UbakytTar(
              text: 'Куптан',
              icon: Icons.looks_5,
            ),
            UbakytTar(
              text: 'Тасбих',
              icon: Icons.looks_6,
            ),
          ],
        ),
      ),
      body: const Center(child: Text("Главный экран")),
    );
  }
}
