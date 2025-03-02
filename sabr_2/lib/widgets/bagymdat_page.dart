import 'package:flutter/material.dart';
import 'package:sabr_2/widgets/app_drawer.dart';

class BagymdatPage extends StatelessWidget {
  const BagymdatPage({super.key});

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
      drawer: const AppDrawer(),
    );
  }
}
