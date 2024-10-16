import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:tapshyrma_5_dice/widgets/custom_button.dart';
import 'package:tapshyrma_5_dice/widgets/image_widget.dart';

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCBE2B5),
      appBar: AppBar(
        backgroundColor: const Color(0xffCCD5AE),
        title: const Center(
          child: Text(
            'Dice Project',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: const Center(
        // child: Container(
        // decoration: BoxDecoration(image: DecorationImage(image: )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: ImageWidget(image: 'assets/d1.svg'),
                ),
                Expanded(
                  child: ImageWidget(image: 'assets/d2.svg'),
                ),
              ],
            ),
            CustomButton(),
          ],
        ),
        // ),
      ),
    );
  }
}
