import 'package:flutter/material.dart';
import 'package:sabr/text_styles/theme.dart';
import 'package:sabr/timeeng/asr_page.dart';
import 'package:sabr/timeeng/bagymdat_page.dart';
import 'package:sabr/timeeng/beshim_page.dart';
import 'package:sabr/timeeng/kuptan_page.dart';
import 'package:sabr/widgets/home_page.dart';
import 'package:sabr/widgets/javshann.dart';
import 'package:sabr/widgets/naariya_salavaty.dart';
import 'package:sabr/widgets/namaz_ubaktysy.dart';
import 'package:sabr/timeeng/sham_page.dart';
import 'package:sabr/widgets/sunush_page.dart';
import 'package:sabr/widgets/tasbih_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xff16423C)),
            child: Text(
              " بِسْمِ ٱللَّٰهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          UbakytTar(
            text: 'Башкы бет',
            icon: Icons.home_filled,
            iconSize: 30,
            isActive: ModalRoute.of(context)?.settings.name == '/homepage',
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                  settings: const RouteSettings(name: '/homepage'),
                ),
              );
            },
          ),
          Divider(
            color: themeData.dividerTheme.color, // Нежный серый цвет
            thickness: 1, // Толщина линии
            indent: 17, // Отступ слева
            endIndent: 17, // Отступ справа
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, top: 5, bottom: 5),
            child: Text(
              'Намаз убактысы',
              // textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.shade500, // Светло-серый
                fontSize: 14, // Небольшой размер
                fontWeight: FontWeight.w500, // Средний вес шрифта
              ),
            ),
          ),
          UbakytTar(
            text: 'Багымдат',
            icon: Icons.looks_one,
            iconSize: 30,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BagymdatPage(),
                  settings: const RouteSettings(name: '/bagymdat'),
                ),
              );
            },
            isActive: ModalRoute.of(context)?.settings.name == '/bagymdat',
          ),
          UbakytTar(
            text: 'Бешим',
            icon: Icons.looks_two,
            iconSize: 30,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BeshimPage(),
                  settings: const RouteSettings(name: '/beshim'),
                ),
              );
            },
            isActive: ModalRoute.of(context)?.settings.name == '/beshim',
          ),
          UbakytTar(
            text: 'Аср',
            icon: Icons.looks_3,
            iconSize: 30,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const AsrPage(),
                  settings: const RouteSettings(name: '/asr'),
                ),
              );
            },
            isActive: ModalRoute.of(context)?.settings.name == '/asr',
          ),
          UbakytTar(
            text: 'Шам',
            icon: Icons.looks_4,
            iconSize: 30,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShamPage(),
                  settings: const RouteSettings(name: '/sham'),
                ),
              );
            },
            isActive: ModalRoute.of(context)?.settings.name == '/sham',
          ),
          UbakytTar(
            text: 'Куптан',
            icon: Icons.looks_5,
            iconSize: 30,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const KuptanPage(),
                  settings: const RouteSettings(name: '/kuptan'),
                ),
              );
            },
            isActive: ModalRoute.of(context)?.settings.name == '/kuptan',
          ),
          Divider(
            color: Colors.grey.shade400, // Нежный серый цвет
            thickness: 1, // Толщина линии
            indent: 17, // Отступ слева
            endIndent: 17, // Отступ справа
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, top: 5, bottom: 5),
            child: Text(
              'Жана башка маалыматтар',
              // textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.shade500, // Светло-серый
                fontSize: 14, // Небольшой размер
                fontWeight: FontWeight.w500, // Средний вес шрифта
              ),
            ),
          ),
          UbakytTar(
            text: 'Тасбих',
            image: Image.asset("assets/beads.png", width: 28, height: 28),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const TasbihPage(),
                  settings: const RouteSettings(name: '/tasbih'),
                ),
              );
            },
            isActive: ModalRoute.of(context)?.settings.name == '/tasbih',
          ),
          // UbakytTar(
          //   text: 'Сунуштар',
          //   icon: Icons.help,
          //   onTap: () {
          //     Navigator.pushReplacement(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => const SunushPage(),
          //         settings: const RouteSettings(name: '/sunush'),
          //       ),
          //     );
          //   },
          //   isActive: ModalRoute.of(context)?.settings.name == '/sunush',
          // ),
          UbakytTar(
            text: "Наария салаваты",
            image: Image.asset('assets/pray.png', width: 28, height: 28),
            isActive: ModalRoute.of(context)?.settings.name == '/salavat',
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => NaariyaSalavat(),
                  settings: RouteSettings(name: '/salavat'),
                ),
              );
            },
          ),
          UbakytTar(
            text: 'Жавшан',
            image: Image.asset('assets/javshan.png', width: 28, height: 28),
            isActive: ModalRoute.of(context)?.settings.name == '/javshan',
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => JavshannPage(),
                  settings: RouteSettings(name: '/javshan'),
                ),
              );
            },
          ),
          UbakytTar(
            text: 'Сунуштар',
            icon: Icons.help,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SunushPage(),
                  settings: const RouteSettings(name: '/sunush'),
                ),
              );
            },
            isActive: ModalRoute.of(context)?.settings.name == '/sunush',
          ),
        ],
      ),
    );
  }
}
