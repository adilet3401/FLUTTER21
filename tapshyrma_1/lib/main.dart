import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:tapshyrma_1/core/theme.dart';

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
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

//  void inc() {
  //  setState(() {
  //  count++;
  //});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8B86D),
      //MyTheme().myBodyBgcColor.scaffoldBackgroundColor,
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
        //MyTheme().myLightTheme.appBarTheme.backgroundColor,
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
            Container(
              width: 325,
              height: 44,
              decoration: BoxDecoration(
                  color: const Color(0xff6C4E31),
                  borderRadius: BorderRadius.circular(18)),
              child: Center(
                  child: Text(
                "count: $count",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              )),
            ),
            const SizedBox(
              height: 41,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      count--;
                    });
                  },
                  child: Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xff6C4E31),
                        borderRadius: BorderRadius.circular(13)),
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
                      count++;
                    });
                  },
                  child: Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xff6C4E31),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
