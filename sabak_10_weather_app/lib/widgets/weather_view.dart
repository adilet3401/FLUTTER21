import 'package:flutter/material.dart';

class WeatherBanner extends StatelessWidget {
  const WeatherBanner({
    super.key,
    required this.info,
    required this.name,
    required this.image,
  });

  final String name, info, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.31),
      child: Container(
        width: double.infinity,
        height: 65.54,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.35),
          borderRadius: BorderRadius.circular(17.25),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 18.97, right: 48.29),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 37.94,
                    height: 37.94,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13.8),
                    ),
                    child: Image.asset(image),
                  ),
                  const SizedBox(width: 13.8),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 12.7,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Text(
                info,
                style: const TextStyle(
                  fontSize: 12.7,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
