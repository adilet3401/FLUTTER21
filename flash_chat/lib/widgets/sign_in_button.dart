import 'package:flash_chat/theme/text_styles.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 382,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(340, 56),
          backgroundColor: const Color(0xff2563EB),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: TextStyles.bodyMedium,
          ),
        ),
      ),
    );
  }
}
