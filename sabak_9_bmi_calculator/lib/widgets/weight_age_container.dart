import 'package:flutter/material.dart';

class WeightAgeContainer extends StatelessWidget {
  const WeightAgeContainer({
    super.key,
    required this.text,
    required this.san,
    required this.iconAdd,
    required this.iconRemove,
    this.weight1,
    this.weight2,
  });

  final String text;
  final int san;
  final IconData iconAdd;
  final IconData iconRemove;
  final void Function()? weight1;
  final void Function()? weight2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff0a001f),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text.toUpperCase(),
              style: const TextStyle(
                color: Color(0xffceccd2),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              san.toString(),
              style: const TextStyle(
                color: Color(0xffceccd2),
                fontSize: 40,
                fontWeight: FontWeight.w800,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      iconRemove,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: weight1,
                ),
                IconButton(
                  icon: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      iconAdd,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: weight2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
