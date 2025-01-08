import 'package:flutter/material.dart';
import 'package:sabak_11_flutter_news/constants/app_colors/app_bar_bgc.dart';
import 'package:sabak_11_flutter_news/features/data/service.dart';
import 'package:sabak_11_flutter_news/features/model/news_model.dart';
import 'package:sabak_11_flutter_news/methods/my_appbar.dart';
import 'package:sabak_11_flutter_news/widgets/news_card.dart';
import 'package:sabak_11_flutter_news/widgets/search_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldColor,
        appBar: myAppBar(),
        body: FutureBuilder<NewsModel?>(
            future: NewsService().fetchData(),
            builder:
                (BuildContext context, AsyncSnapshot<NewsModel?> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              } else if (snapshot.connectionState == ConnectionState.none) {
                return const Center(
                  child: Text('сервер не работает'),
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                  itemCount: snapshot.data!.articles!.length,
                  itemBuilder: (context, index) {
                    final data = snapshot.data!.articles;
                    return NewsCard(index: index, data: data);
                  },
                );
              }
              return const Center(
                child: Text('ERROR 404'),
              );
            }),
        floatingActionButton: const SearchWidget(),
      ),
    );
  }
}
