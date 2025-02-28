import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/pages/chat_page.dart';
import 'package:flash_chat/pages/sign_in_page.dart';
import 'package:flash_chat/theme/text_styles.dart';
import 'package:flash_chat/widgets/sign_in_button.dart';
import 'package:flash_chat/widgets/user_db.dart';
import 'package:flash_chat/widgets/with_platform_sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> signUp() async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const ChatPage(),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Column(
            children: [
              const Text('This account already exists'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInPage(),
                    ),
                  );
                },
                child: const Text('Go to login page'),
              ),
            ],
          ),
        ),
      );
      print('error404: ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Frame.png'),
            const Text(
              'Welcome Back',
              style: TextStyles.headings,
            ),
            const Text(
              'Sign in to continue chatting',
              style: TextStyles.subheadings,
            ),
            const SizedBox(height: 50),
            UserEmailPasswordCard(
              controller: emailController,
              labelText: 'Email',
              hintText: 'Enter your email',
            ),
            const SizedBox(height: 15),
            UserEmailPasswordCard(
              controller: passwordController,
              labelText: 'Password',
              hintText: 'Enter your password',
            ),
            const SizedBox(height: 20),
            SignInButton(
              onPressed: signUp,
              text: 'Sign Up',
            ),
            const SizedBox(height: 7),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Dont't have an account?",
                  style: TextStyles.bodySmall,
                ),
                SizedBox(width: 100),
                // InkWell(onTap: () {}),
              ],
            ),
            const Divider(indent: 20, endIndent: 20),
            const Text(
              'Or continue with',
              style: TextStyle(color: Color(0xff6b7280)),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WithPlatformSignInButton(
                  text: 'Google',
                  icon: FontAwesomeIcons.google,
                ),
                Text(
                  'or',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                WithPlatformSignInButton(
                  text: 'Apple',
                  icon: FontAwesomeIcons.apple,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
