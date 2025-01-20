import 'package:flutter/material.dart';
import 'package:sabak_12_countries_app_game/continents_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Countries Game',
      home: MyHomePage(),
    );
  }
}
