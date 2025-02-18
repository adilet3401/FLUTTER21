import 'package:flash_chat/theme/text_styles.dart';
import 'package:flash_chat/widgets/sign_in_button.dart';
import 'package:flash_chat/widgets/with_platform_sign_in_button.dart';
import 'package:flash_chat/widgets/user_db.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe5e7eb),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome Back',
              style: TextStyles.headings,
            ),
            Text(
              'Sign in to continue chatting',
              style: TextStyles.subheadings,
            ),
            SizedBox(height: 50),
            UserEmailPasswordCard(
              labelText: 'Email',
              hintText: 'Enter your email',
            ),
            SizedBox(height: 15),
            UserEmailPasswordCard(
              labelText: 'Password',
              hintText: 'Enter your password',
            ),
            SizedBox(height: 20),
            SignInButton(),
            SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Dont't have an account?",
                  style: TextStyles.bodySmall,
                ),
                SizedBox(width: 100),
                Text(
                  "Sign Up",
                  style: TextStyles.bodySmall2,
                ),
              ],
            ),
            Divider(indent: 20, endIndent: 20),
            Text(
              'Or continue with',
              style: TextStyle(color: Color(0xff6b7280)),
            ),
            SizedBox(height: 20),
            Row(
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
