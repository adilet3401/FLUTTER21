import 'package:dio/dio.dart';
import 'package:sabak_13_block/model.dart';

class ServiceData {
  static const String newsUrl =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=3f463d6c915e4b878db0190d1a5c4719";
  final Dio dio = Dio();

  Future<News?> fetchData() async {
    final responce = await dio.get(newsUrl);
    if (responce.statusCode == 200) {
      final data = responce.data;
      final news = News.fromJson(data);
      return news;
    }
    return null;
  }
}
