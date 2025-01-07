import 'package:flutter/material.dart';
import 'package:sabak_11_flutter_news/constants/app_colors/app_bar_bgc.dart';
import 'package:sabak_11_flutter_news/features/data/oop.dart';
import 'package:sabak_11_flutter_news/features/data/service.dart';
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
  void initState() {
    // TODO: implement initState
    super.initState();
    NewsService().fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldColor,
        appBar: myAppBar(),
        body: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: NewsCard(index: index, newsList: newsList),
            );
          },
        ),
        floatingActionButton: const SearchWidget(),
      ),
    );
  }
}
