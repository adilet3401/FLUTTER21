import 'package:flutter/material.dart';
import 'package:sabak_13_block/model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.news,
  });

  final Articles? news;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(news?.urlToImage ?? ''),
          Text(
            news?.author ?? "",
            style: const TextStyle(fontSize: 7),
          ),
          Text(
            news?.title ?? "",
            style: const TextStyle(fontSize: 10),
          ),
          Text(
            news?.description ?? "",
            style: const TextStyle(fontSize: 15),
          ),
          Text(
            news?.publishedAt ?? "",
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
