import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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

  // void openURL(String url) async {
  //   Uri uri = Uri.parse(url);
  //   if (await canLaunchUrl(uri)) {
  //     await launchUrl(uri);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final news = data?[index];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              SizedBox(
                width: 130,
                height: 135,
                child: CachedNetworkImage(
                  imageUrl: news?.urlToImage ?? 'assets/images.png',
                  placeholder: (context, url) =>
                      const CircularProgressIndicator.adaptive(),
                  errorWidget: (context, url, error) =>
                      Image.asset('assets/images.png'),
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
                        news?.publishedAt != null
                            ? DateFormat.MMMEd()
                                .add_jm()
                                .format(DateTime.parse(news!.publishedAt!))
                            : "Unknown Date",
                        style: newsTextStyle,
                      ),
                      Text(
                        news?.title ?? "Без title",
                        style: newsTextStyle,
                      ),
                      TextButton(
                        onPressed: () => {},
                        child: Text(
                          news?.url ?? "Без URL",
                          style: newsURLTextStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// https://newsapi.org/v2/everything?q=bitcoin&apiKey=3f463d6c915e4b878db0190d1a5c4719