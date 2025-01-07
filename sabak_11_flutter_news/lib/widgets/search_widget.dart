import 'package:flutter/material.dart';
import 'package:sabak_11_flutter_news/constants/app_colors/icon_color.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: const Color(0xffFF5330),
      child: IconButton(
        iconSize: 29,
        onPressed: () {},
        icon: const Icon(Icons.search, color: searchColor),
      ),
    );
  }
}
