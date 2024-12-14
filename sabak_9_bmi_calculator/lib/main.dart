import 'package:flutter/material.dart';
import 'package:sabak_9_bmi_calculator/my_home_page.dart';
// import 'package:project_one/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bmi Calculator',
      home: MyHomePage(),
    );
  }
}
