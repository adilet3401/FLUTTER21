import 'package:flutter/material.dart';

class EndDrawerWidget extends StatelessWidget {
  const EndDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 793,
      width: 300,
      decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.close),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 10),
                Text(
                  'serch the internet',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Icon(Icons.chat),
                SizedBox(width: 10),
                Text(
                  'chat with ray',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Icon(Icons.branding_watermark),
                SizedBox(width: 10),
                Text(
                  'become a master',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
