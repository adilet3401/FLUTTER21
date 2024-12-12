import 'package:flutter/material.dart';
// import 'package:sabak_9_bmi_calculator/methods/alert_dialog.dart';
import 'package:sabak_9_bmi_calculator/widgets/calculator.dart';
import 'package:sabak_9_bmi_calculator/widgets/height_container.dart';
import 'package:sabak_9_bmi_calculator/widgets/male_female_container.dart';
import 'package:sabak_9_bmi_calculator/widgets/weight_age_container.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMale = false;
  int height = 110;
  int weight = 35;
  int age = 9;
  void maleFun() {
    setState(() {
      isMale = !isMale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff221935),
      appBar: myAppbar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaleFemaleContainer(
                  onTap: () => maleFun(),
                  icon: Icons.male,
                  text: 'MALE',
                  iconColor: isMale
                      ? const Color(0xff686D76)
                      : const Color(0xff019ee3),
                  iconSize: isMale ? 68 : 88,
                  textColor: isMale
                      ? const Color(0xff686d76)
                      : const Color(0xff019ee3),
                ),
                const SizedBox(width: 35),
                MaleFemaleContainer(
                  onTap: () => maleFun(),
                  icon: Icons.female,
                  text: 'FEMALE',
                  iconColor: isMale
                      ? const Color(0xffe3027c)
                      : const Color(0xff686D76),
                  iconSize: isMale ? 88 : 68,
                  textColor: isMale
                      ? const Color(0xffe3027c)
                      : const Color(0xff686d76),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            LargeWidget(
              text: 'HEIGHT',
              cm: 'cm',
              san: height,
              widget: Slider.adaptive(
                thumbColor: const Color(0xffff0f65),
                activeColor: Colors.white,
                inactiveColor: Colors.grey,
                max: 260,
                min: 0,
                value: height.toDouble(),
                onChanged: (v) {
                  height = v.toInt();
                  setState(() {});
                  print(height);
                },
              ),
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WeightAgeContainer(
                  weight1: () => setState(() => weight--),
                  text: 'weight',
                  san: weight,
                  iconAdd: Icons.add,
                  weight2: () => setState(() => weight++),
                  iconRemove: Icons.remove,
                ),
                const SizedBox(width: 25),
                WeightAgeContainer(
                  weight1: () => setState(() => age--),
                  weight2: () => setState(() => age++),
                  text: 'age',
                  san: age,
                  iconAdd: Icons.add,
                  iconRemove: Icons.remove,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Calculator(weight: weight, height: height),
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
