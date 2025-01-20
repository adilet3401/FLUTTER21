import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sabak_10_weather_app/constants.dart/app_text_styles.dart';
import 'package:sabak_10_weather_app/constants.dart/liner_gradient.dart';
import 'package:sabak_10_weather_app/widgets/weather_days.widget.dart';
import 'package:sabak_10_weather_app/widgets/weather_view.dart';

import 'widgets/slider_view.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  String weatherInfo = "...";
  String cityName = "...";
  String countryN = "...";
  String weatherIcon = "...";
  String weatherText = "...";
  double weatherWind = 0;

  void weatherFun() async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      final data = jsonDecode(response.body);
      final temp = data["main"]["temp"] ?? 0.0;
      final name = data["name"] ?? "Неопознанный город.";
      final countryName = data['sys']['country'] ?? "Неопознанная страна.";
      final icon = data["weather"][0]["icon"] ?? ",,,";
      final main = data["weather"][0]["main"] ?? "неопознанно.";
      final wind = (data["wind"]["speed"] ?? 0.0).toDouble();
      final withKelvin = temp - 273.15;
      setState(() {
        weatherInfo = withKelvin.toStringAsFixed(0);
        cityName = name;
        countryN = countryName;
        weatherIcon = icon;
        weatherText = main;
        weatherWind = wind;
      });
    } else {
      print(response.statusCode);
    }
  }

  @override
  void initState() {
    super.initState();
    weatherFun();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff66d8f1),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinerGradientColor.liner,
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 31.5, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/icon2.png', scale: 13),
                      Image.asset('assets/images/icon3.png', scale: 13),
                    ],
                  ),
                  Text(
                    '$cityName,\n$countryN',
                    style: AppTextStyles.locationStyle,
                  ),
                  const Text(
                    'Tue, Jan 30',
                    style: AppTextStyles.dataStyle,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Image.network(
                          weatherIcon.isNotEmpty
                              ? 'https://openweathermap.org/img/wn/$weatherIcon@4x.png'
                              : 'assets/images/cludy.png',
                          width: 250,
                          height: 250,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                weatherInfo,
                                style: AppTextStyles.tempStyle,
                              ),
                              const Text(
                                '\u2103',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          Text(
                            weatherText,
                            style: AppTextStyles.weatherStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const WeatherBanner(
                    info: '3cm',
                    name: 'RainFall',
                    image: 'assets/images/rainy.png',
                  ),
                  WeatherBanner(
                    info: '${weatherWind.toString()} km/h',
                    name: 'Wind ',
                    image: 'assets/images/wind.png',
                  ),
                  const WeatherBanner(
                    info: '64%',
                    name: 'Humidity',
                    image: 'assets/images/hu.png',
                  ),
                  const SliderView(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            gradient: LinerGradientColor.liner,
          ),
          child: SizedBox(
            height: 98.99,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const WeatherDaysCard(
                  text1: 'now',
                  text2: '19°',
                  image: 'assets/images/icon (6).png',
                );
              },
              itemCount: 10,
            ),
          ),
        ),
      ),
    );
  }
}
