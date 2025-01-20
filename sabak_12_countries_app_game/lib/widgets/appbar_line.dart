import 'package:flutter/material.dart';
import 'package:sabak_12_countries_app_game/features/app_text.dart';
import 'package:sabak_12_countries_app_game/features/app_texts.dart';

AppBar myAppBar() {
  return AppBar(
    centerTitle: false,
    backgroundColor: Colors.white,
    title: Padding(
      padding: const EdgeInsets.only(left: 25),
      child: appText.header(appTexts.titleText),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 20),
        child: Icon(
          Icons.settings,
          color: Colors.blue,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
      )
    ],
  );
}

class Line extends StatelessWidget {
  const Line({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.black,
      indent: 20,
      endIndent: 20,
      // thickness: 1.20,
    );
  }
}
