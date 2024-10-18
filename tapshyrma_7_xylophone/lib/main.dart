import 'package:flutter/material.dart';
import 'package:tapshyrma_7_xylophone/xylophone_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone App',
      home: Xylophone(),
    );
  }
}
