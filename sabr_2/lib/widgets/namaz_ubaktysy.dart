import 'package:flutter/material.dart';

class UbakytTar extends StatelessWidget {
  const UbakytTar({
    super.key,
    required this.text,
    this.image,
    this.icon,
    this.iconColor = Colors.black, // Цвет по умолчанию
    this.iconSize = 24.0,
    this.onTap, // Размер по умолчанию
  });

  final String text;
  final IconData? icon;
  final Image? image;
  final Color iconColor;
  final double iconSize; // Новый параметр для размера иконки
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: image ??
          (icon != null
              ? Icon(icon, color: iconColor, size: iconSize)
              : null), // Устанавливаем цвет и размер
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      onTap: onTap,
    );
  }
}
