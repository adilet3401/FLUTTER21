import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tapshyrma_6_flash_chat/login_page.dart';
import 'package:tapshyrma_6_flash_chat/registr_page.dart';
// import 'package:tapshyrma_6_flash_chat/login_page.dart';
// import 'package:tapshyrma_6_flash_chat/registr_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.blue, //Color(0xff2b2b2b),
        appBar: AppBar(
          backgroundColor: const Color(0xff25d162),
          centerTitle: true,
          title: Text(
            'Flash Messenger',
            style: GoogleFonts.afacad(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: const AzaMat(),
      ),
    );
  }
}

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const AzaMat(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Download...',
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}

class AzaMat extends StatefulWidget {
  const AzaMat({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AzaMatState createState() => _AzaMatState();
}

class _AzaMatState extends State<AzaMat> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    // Анимация прозрачности (от 0 до 1)
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      ),
    );

    // Анимация масштаба (от 0.5 до 1.0)
    _scaleAnimation = Tween<double>(begin: 0.9, end: 1.1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.bounceInOut),
    );

    // Запуск анимации при инициализации
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2b2b2b),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Анимация текста
            FadeTransition(
              opacity: _opacityAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: const Text(
                  'Flash chat',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            FadeTransition(
              opacity: _opacityAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: const Text(
                  'by Adilet',
                  style: TextStyle(
                    color: Color.fromARGB(255, 199, 195, 195),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Divider(
              height: 40,
              indent: 10,
              endIndent: 10,
              color: Colors.white,
              thickness: 1,
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 45),
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPageTo(),
                  ),
                );
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 45),
                backgroundColor: const Color(0xff006BFF),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegistrPage(),
                  ),
                );
              },
              child: const Text(
                'Registr',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class DownloadPage extends StatefulWidget {
//   const DownloadPage({super.key});

//   @override
//   State<DownloadPage> createState() => _DownloadPageState();
// }

// class _DownloadPageState extends State<DownloadPage> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(seconds: 2), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const AzaMat(),
//         ),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Text(
//           'Download...',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 13,
//           ),
//         ),
//       ),
//     );
//   }
// }
