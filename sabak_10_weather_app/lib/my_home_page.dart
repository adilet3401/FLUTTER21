import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sabak_10_weather_app/constants.dart/app_text_styles.dart';
import 'package:sabak_10_weather_app/widgets/weather_view.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  String weatherInfo = "...";
  String cityName = "...";

  void weatherFun() async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      final data = jsonDecode(response.body);
      final temp = data["main"]["temp"];
      final name = data["name"];
      final withKelvin = temp - 273.15;
      setState(() {
        weatherInfo = withKelvin.toStringAsFixed(0);
        cityName = name;
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
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xff5cd6f0),
                Color.fromARGB(255, 134, 232, 254),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 31.5, vertical: 18),
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
                  '$cityName,\nKyrgyzstan',
                  style: AppTextStyles.locationStyle,
                ),
                const Text(
                  'Tue, Jan 30',
                  style: AppTextStyles.dataStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/cludy.png',
                      width: 225,
                      height: 240,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "$weatherInfo",
                              style: AppTextStyles.tempStyle,
                            ),
                            const Text(
                              '\u2103',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        const Text(
                          'Snow',
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
                const WeatherBanner(
                  info: '19km/h',
                  name: 'Wind ',
                  image: 'assets/images/wind.png',
                ),
                const WeatherBanner(
                  info: '64%',
                  name: 'Humidity',
                  image: 'assets/images/hu.png',
                ),
                const SizedBox(height: 40),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Today',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.8,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Tomorrow',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.8,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 19.7),
                    Text(
                      'Next 7 days',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.8,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 0.10,
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 4,
                      pressedElevation: 5,
                    ),
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 14),
                  ),
                  child: Slider(
                    activeColor: Colors.black,
                    inactiveColor: Colors.white,
                    value: 100,
                    max: 100,
                    divisions: 5,
                    label: "Hello",
                    onChanged: (double value) {
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
