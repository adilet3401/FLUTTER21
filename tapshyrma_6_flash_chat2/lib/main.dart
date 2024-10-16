import 'package:flutter/material.dart';
import 'package:tapshyrma_6_flash_chat2/log_in.dart';
import 'package:tapshyrma_6_flash_chat2/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flash Chat',
      home: FlashScreen(),
      
    );
  }
}

// class FlashText extends StatefulWidget {
//   const FlashText({super.key});

//   @override
//   State<FlashText> createState() => _FlashTextState();
// }

// class _FlashTextState extends State<FlashText>
//     with SingleTickerProviderStateMixin {
//   // late AnimationController _controller;
//   // late Animation<double> _opacityAnimation;
//   // late Animation<double> _scaleAnimation;

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text(''),
//     );
//   }
// }

//LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2b2b2b),
      appBar: AppBar(
        backgroundColor: const Color(0xff25d162),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 40),
                backgroundColor: const Color(0xff006BFF),
                shadowColor: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(),
                  ),
                );
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(300, 40),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LogInPage()));
              },
              child: const Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// 08C2FF
