import 'package:flutter/material.dart';
import 'package:sabr_2/widgets/namaz_ubaktysy.dart';

class BagymDat extends StatelessWidget {
  const BagymDat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff16423C),
        title: const Text(
          "Багымдат",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff16423C),
              ),
              child: Text(
                "الإسلام هو الحقيقة",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const UbakytTar(
              text: 'Багымдат',
              icon: Icons.looks_one,
              iconSize: 30,
            ),
            const UbakytTar(
              text: 'Бешим',
              icon: Icons.looks_two,
              iconSize: 30,
            ),
            const UbakytTar(
              text: 'Аср',
              icon: Icons.looks_3,
              iconSize: 30,
            ),
            const UbakytTar(
              text: 'Шам',
              icon: Icons.looks_4,
              iconSize: 30,
            ),
            const UbakytTar(
              text: 'Куптан',
              icon: Icons.looks_5,
              iconSize: 30,
            ),
            UbakytTar(
              text: 'Тасбих',
              image: Image.asset(
                "assets/beads.png",
                width: 28,
                height: 28,
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "Главный экран",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
