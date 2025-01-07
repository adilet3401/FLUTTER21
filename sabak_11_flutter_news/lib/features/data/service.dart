import 'package:dio/dio.dart';
import 'package:sabak_11_flutter_news/features/data/api.dart';

class NewsService {
  final Dio dio = Dio();

  void fetchData() async {
    final response = await dio.get(Api.data);
    print(response.data);
  }
}
