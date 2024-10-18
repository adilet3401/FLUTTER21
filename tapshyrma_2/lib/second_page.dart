import 'package:flutter/material.dart';
import 'package:tapshyrma__2/main.dart';
import 'package:tapshyrma__2/thith_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage(
      {super.key, required this.count2, required this.textForSecondPage});
  final int count2;
  final String textForSecondPage;
  final String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Counter App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color(0xff6C4E31),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const MyHomePage();
                },
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: const Color(0xffE8B86D),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // color: const Color(0xff6C4E31),
              width: 325,
              height: 44,
              decoration: BoxDecoration(
                  color: const Color(0xff6C4E31),
                  borderRadius: BorderRadius.circular(
                    18,
                  )),
              child: Center(
                child: Text(
                  'count: $count2',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Text(textForSecondPage),
            Text(text),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff6C4E31),
                minimumSize: const Size(180, 40),
                // textStyle: const TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirthPage()),
                );
              },
              child: const Text(
                'далее',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
            // Container(
            //   width: 150,
            //   height: 44,
            //   decoration: BoxDecoration(
            //     color: const Color(0xff6C4E31),
            //     borderRadius: BorderRadius.circular(18),
            //   ),
            //   child: const Center(
            //     child: Text(
            //       'thirth page',
            //       style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 16,
            //           fontWeight: FontWeight.w600,
            //           ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
