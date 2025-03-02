import 'package:flutter/material.dart';
import 'package:sabak_10_weather_app/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weather App',
        home: WeatherApp());
  }
}
