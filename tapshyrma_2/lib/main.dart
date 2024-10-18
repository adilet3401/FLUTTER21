import 'package:flutter/material.dart';
import 'package:tapshyrma__2/core/theme.dart';
import 'package:tapshyrma__2/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyTheme().myLightTheme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  // final String text;
  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count1 = 0;
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8B86D),
      appBar: AppBar(
        leading: const Icon(
          Icons.more_horiz_outlined,
          size: 32,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.home,
            size: 32,
            color: Colors.white,
          )
        ],
        backgroundColor: const Color(0xff6C4E31),
        title: const Center(
            child: Text(
          "Counter App",
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
            Container(
              width: 325,
              height: 44,
              decoration: BoxDecoration(
                  color: const Color(0xff6C4E31),
                  borderRadius: BorderRadius.circular(18)),
              child: Center(
                  child: Text(
                "count: $count1",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              )),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      count1--;
                    });
                  },
                  child: Container(
                    width: 80,
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color(0xff6C4E31),
                        borderRadius: BorderRadius.circular(18)),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      count1++;
                    });
                  },
                  child: Container(
                    width: 80,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xff6C4E31),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff6C4E31),
                minimumSize: const Size(180, 40),
                textStyle: const TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(
                      count2: count1,
                      textForSecondPage: text,
                    ),
                  ),
                );
              },
              child: const Text(
                'далее',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
                //   "second page",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
