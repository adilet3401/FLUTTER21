import 'package:flutter/material.dart';
// import 'package:sabr_2/my_home_page.dart';
import 'package:sabr_2/widgets/bagymdat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sabr',
      home: BagymDat(),
    );
  }
}
