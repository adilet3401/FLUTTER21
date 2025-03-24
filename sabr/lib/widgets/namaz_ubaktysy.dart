import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UbakytTar extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Image? image;
  final double iconSize;
  final bool isActive;
  final VoidCallback onTap;

  const UbakytTar({
    super.key,
    required this.text,
    this.icon,
    this.image,
    this.iconSize = 24.0,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: GoogleFonts.nunito(
          color: isActive ? Colors.green : Colors.black,
          fontWeight: isActive ? FontWeight.bold : FontWeight.w700,
          fontSize: 18,
        ),
      ),
      leading:
          icon != null
              ? Icon(
                icon,
                size: iconSize,
                color:
                    isActive
                        ? const Color.fromARGB(255, 67, 155, 69)
                        : Colors.black,
              )
              : image != null
              ? ColorFiltered(
                colorFilter: ColorFilter.mode(
                  isActive ? Color.fromARGB(255, 67, 155, 69) : Colors.black,
                  BlendMode.srcIn,
                ),
                child: image!,
              )
              : null,
      tileColor: isActive ? Colors.grey[200] : null,
      onTap: onTap,
    );
  }
}
