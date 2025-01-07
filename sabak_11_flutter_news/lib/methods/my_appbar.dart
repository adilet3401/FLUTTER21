import 'package:flutter/material.dart';
import 'package:sabak_11_flutter_news/constants/app_colors/app_bar_bgc.dart';
import 'package:sabak_11_flutter_news/constants/app_colors/icon_color.dart';
import 'package:sabak_11_flutter_news/constants/text_styles/tittle_color.dart';

AppBar myAppBar() {
  return AppBar(
    backgroundColor: appbarColor,
    centerTitle: false,
    title: const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Text(
        'News Aggregator',
        style: textStyle,
      ),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(
          size: 30,
          Icons.more_vert,
          color: iconColor,
        ),
      ),
    ],
  );
}
