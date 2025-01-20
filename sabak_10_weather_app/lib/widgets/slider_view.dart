import 'package:flutter/material.dart';

class SliderView extends StatelessWidget {
  const SliderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 27.6, bottom: 5),
          child: Row(
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
        ),
        const SizedBox(height: 5),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 0.10,
            thumbShape: const RoundSliderThumbShape(
              enabledThumbRadius: 4,
              pressedElevation: 5,
            ),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 14),
          ),
          child: Slider(
            activeColor: Colors.black,
            inactiveColor: Colors.white,
            value: 100,
            max: 100,
            divisions: 5,
            label: "Hello",
            onChanged: (double value) {
              // setState(() {});
            },
          ),
        ),
      ],
    );
  }
}
