import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: const Size(50, 50),
      ),
      onPressed: onPressed,
      icon: const Icon(
        Icons.refresh,
        size: 29,
        color: Colors.black,
      ),
      label: const Text(
        'Oбновить',
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }
}
