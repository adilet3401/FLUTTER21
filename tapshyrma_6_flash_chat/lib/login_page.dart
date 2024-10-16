import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E201E),
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
    );
  }
}

class LoginPageTo extends StatefulWidget {
  const LoginPageTo({super.key});

  @override
  State<LoginPageTo> createState() => _LoginPageToState();
}

class _LoginPageToState extends State<LoginPageTo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff41B3A2),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: GoogleFonts.afacad(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 12,
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  // fillColor: Colors.white,
                  hintText: 'Your phone number',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff41B3A2),
                      width: 2,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.phone,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
