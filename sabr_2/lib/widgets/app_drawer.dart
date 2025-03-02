import 'package:flutter/material.dart';
import 'package:sabr_2/widgets/asr_page.dart';
import 'package:sabr_2/widgets/bagymdat_page.dart';
import 'package:sabr_2/widgets/beshim_page.dart';
import 'package:sabr_2/widgets/kuptan_page.dart';
import 'package:sabr_2/widgets/namaz_ubaktysy.dart';
import 'package:sabr_2/widgets/sham_page.dart';
import 'package:sabr_2/widgets/tasbih_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          UbakytTar(
            text: 'Багымдат',
            icon: Icons.looks_one,
            iconSize: 30,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BagymdatPage(),
                ),
              );
            },
          ),
          UbakytTar(
            text: 'Бешим',
            icon: Icons.looks_two,
            iconSize: 30,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BeshimPage(),
                ),
              );
            },
          ),
          UbakytTar(
            text: 'Аср',
            icon: Icons.looks_3,
            iconSize: 30,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AsrPage(),
                ),
              );
            },
          ),
          UbakytTar(
            text: 'Шам',
            icon: Icons.looks_4,
            iconSize: 30,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShamPage(),
                ),
              );
            },
          ),
          UbakytTar(
            text: 'Куптан',
            icon: Icons.looks_5,
            iconSize: 30,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const KuptanPage(),
                ),
              );
            },
          ),
          UbakytTar(
            text: 'Тасбих',
            image: Image.asset(
              "assets/beads.png",
              width: 28,
              height: 28,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TasbihScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
