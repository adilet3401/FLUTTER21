import 'package:flash_chat/theme/text_styles.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Добавляем SizedBox для строгого контроля размера
      width: 382, // Явно задаем ширину
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(340, 56), // Меняем minimumSize на fixedSize
          backgroundColor: const Color(0xff2563EB),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
        child: const Center(
          child: Text(
            'Sign In',
            style: TextStyles.bodyMedium,
          ),
        ),
      ),
    );
  }
}
