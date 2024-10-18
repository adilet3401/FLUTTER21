import 'package:flutter/material.dart';
import 'package:tapshyrma__2/main.dart';
// import 'package:tapshyrma__2/main.dart';
import 'package:tapshyrma__2/second_page.dart';

class ThirthPage extends StatelessWidget {
  const ThirthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8B86D),
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
          color: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const SecondPage(count2: 0, textForSecondPage: ''),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyHomePage(),
                ),
              );
            },
            icon: const Icon(
              Icons.home,
            ),
          ),
        ],

        // title: IconButton(
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => const SecondPage(
        //           count2: 0,
        //           textForSecondPage: '',
        //         ),
        //       ),
        //     );
        //   },
        //   icon: const Text('To SecondPage'),
        // ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Thirth page'),
          ],
        ),
      ),
    );
  }
}
