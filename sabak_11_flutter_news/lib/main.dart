import 'package:flutter/material.dart';
import 'package:sabak_11_flutter_news/features/presentation/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter News',
      home: MyHomePage(),
    );
  }
}
