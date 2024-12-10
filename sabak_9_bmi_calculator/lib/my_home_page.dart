import 'package:flutter/material.dart';
// import 'package:project_one/widgets/large_container.dart';
// import 'package:project_one/widgets/male_female_container.dart';
import 'package:sabak_9_bmi_calculator/widgets/large_container.dart';
import 'package:sabak_9_bmi_calculator/widgets/male_female_container.dart';
import 'package:sabak_9_bmi_calculator/widgets/weight_age_container.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff221935),
      appBar: myAppbar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaleFemaleContainer(
                  icon: Icons.male,
                  text: 'MALE',
                ),
                SizedBox(width: 35),
                MaleFemaleContainer(
                  icon: Icons.female,
                  text: 'FEMALE',
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            LargeWidget(
              textSm: '100 sm',
              text: 'HEIGHT',
            ),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WeightAgeContainer(
                  text: 'wight',
                  san: 60,
                  iconAdd: Icons.add,
                  iconRemove: Icons.remove,
                ),
                SizedBox(width: 25),
                WeightAgeContainer(
                  text: 'age',
                  san: 20,
                  iconAdd: Icons.add,
                  iconRemove: Icons.remove,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 73,
        width: 370,
        color: const Color(0xffFF0F65),
        child: const Center(
            child: Text(
          'CALCULATOR',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 22,
          ),
        )),
      ),
    );
  }

  AppBar myAppbar() {
    return AppBar(
      backgroundColor: const Color(0xff221935),
      centerTitle: true,
      title: const Text(
        'BMI CALCULATOR',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontSize: 22,
        ),
      ),
    );
  }
}
