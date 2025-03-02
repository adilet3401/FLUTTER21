import 'package:flutter/material.dart';
import 'package:sabr_2/widgets/app_drawer.dart';

class ShamPage extends StatelessWidget {
  const ShamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Шам',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xff16423C),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const AppDrawer(),
    );
  }
}
