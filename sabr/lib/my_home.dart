import 'package:flutter/material.dart';

class GlaPage extends StatefulWidget {
  const GlaPage({super.key});

  @override
  State<GlaPage> createState() => _GlaPageState();
}

class _GlaPageState extends State<GlaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1A1A1D),
        title: const Text(
          'Sabr',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Color(0xff2A3335),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff1A1A1D),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // activeIcon: Icon(Icons.add),
            icon: Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
            label: "Главная",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
            label: "Тасбих",
          ),
        ],
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}
