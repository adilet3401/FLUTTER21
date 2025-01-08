import 'package:flutter/material.dart';
import 'package:sabak_11_flutter_news/constants/text_styles/tittle_color.dart';
import 'package:sabak_11_flutter_news/features/model/news_model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.index,
    required this.data,
  });

  final int index;
  final List<Articles>? data;

  @override
  Widget build(BuildContext context) {
    final news = data?[index];
    return Card(
      color: Colors.grey[300],
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          SizedBox(
            width: 130,
            height: 135,
            child: Image.network(
              news?.urlToImage ?? "",
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news?.title ?? "bez title",
                    style: dataStyle,
                  ),
                  Text(
                    news?.description ?? "bez description",
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