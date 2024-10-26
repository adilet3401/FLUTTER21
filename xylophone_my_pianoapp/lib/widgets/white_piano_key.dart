import 'package:flutter/material.dart';

class WhitePianoKey extends StatelessWidget {
  const WhitePianoKey({
    super.key,
    required this.label,
    this.onTap,
  });

  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
        minimumSize: Size(54, 217),
      ),
      onPressed: onTap,
      child: Container(
        height: 217,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 19.6,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
 Container(
      width: 54.91,
      height: 217.93,
      decoration: BoxDecoration(
        color: const Color(0xffe4e4e4),
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
      ),
      child: const Center(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 13),
            child: Text(
              'f1',
              style: TextStyle(
                fontSize: 19.6,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
 */