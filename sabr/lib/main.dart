import 'package:flutter/material.dart';
import 'package:sabr/widgets/logo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      title: 'Sabr',
      home: SplashScreen(),
    );
  }
}
