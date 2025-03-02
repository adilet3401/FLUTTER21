import 'package:flutter/material.dart';
import 'package:sabr_2/widgets/app_drawer.dart';

class AsrPage extends StatelessWidget {
  const AsrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Аср',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff16423C),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      drawer: const AppDrawer(),
    );
  }
}
