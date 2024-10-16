import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/registr_page.dart';

class TouristTravel extends StatelessWidget {
  const TouristTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tourist Travel',
              style: GoogleFonts.afacad(
                fontSize: 40,
                fontWeight: FontWeight.w800,
                color: const Color(0xff056c5c),
              ),
            ),
            const Divider(
              height: 0.1,
              color: Color(0xff056c5c),
              thickness: 2,
              indent: 75,
              endIndent: 75,
            ),
            Image.asset('assets/ar.jpg'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff056c5c),
                  minimumSize: const Size(40, 40)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyRegistr(),
                  ),
                );
              },
              child: const Text(
                'continue',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
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
