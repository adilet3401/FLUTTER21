import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/pages/chat_page.dart';
import 'package:flash_chat/pages/sign_up_page.dart';
import 'package:flash_chat/theme/text_styles.dart';
import 'package:flash_chat/widgets/sign_in_button.dart';
import 'package:flash_chat/widgets/with_platform_sign_in_button.dart';
import 'package:flash_chat/widgets/user_db.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> signIn() async {
    try {
      await auth.signInWithEmailAndPassword(
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
          content: Text('error404: ${e.toString()}'),
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
              onPressed: signIn,
              text: 'Sign In',
            ),
            const SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Dont't have an account?",
                  style: TextStyles.bodySmall,
                ),
                const SizedBox(width: 93),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyles.bodySmall2,
                  ),
                ),
                const SizedBox(width: 100),
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
