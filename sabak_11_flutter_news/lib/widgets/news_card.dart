import 'package:flutter/material.dart';
import 'package:sabak_11_flutter_news/constants/text_styles/tittle_color.dart';
// import 'package:sabak_11_flutter_news/features/data/oop.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.index,
    required this.newsList,
  });

  final int index;
  final List newsList;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.asset(
            newsList[index].image,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    newsList[index].date,
                    style: dataStyle,
                  ),
                  Text(
                    newsList[index].text,
                    style: newsTextStyle,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
// https://newsapi.org/v2/everything?q=bitcoin&apiKey=3f463d6c915e4b878db0190d1a5c4719