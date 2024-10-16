import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056C5C),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Тапшырма 4',
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(
              size: 100,
            ),
            Text(
              'Adilet Dildeev',
              style: GoogleFonts.pacifico(
                fontSize: 48,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            // const SizedBox(
            //   height: 25,
            // ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const Divider(
              indent: 57,
              endIndent: 57,
              height: 0.1,
              color: Colors.white,
              thickness: 2.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 12,
              ),
              // child: SizedBox(height: 23.5),

              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Image.asset('assets/Phone.png'),
                  hintText: 'Your phone number',
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 12,
              ),
              // child: SizedBox(height: 24),

              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Image.asset('assets/Mail.png'),
                  hintText: 'Your Email',
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
