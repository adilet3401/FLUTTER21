import 'package:flutter/material.dart';

class BlackPianoKey extends StatelessWidget {
  const BlackPianoKey({
    super.key,
    required this.left,
    required this.label,
    this.onTap,
  });

  final double left;
  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.white.withOpacity(0.9),
        highlightColor: Colors.white.withOpacity(0.9),
        child: Container(
          width: 38.9,
          height: 127.64,
          decoration: BoxDecoration(
            color: Color(0xff2e364f),
            border: Border.all(color: Color(0xff171a26)),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: Offset(0, 4),
                blurRadius: 7,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
