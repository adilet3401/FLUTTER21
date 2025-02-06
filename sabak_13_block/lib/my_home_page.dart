import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabak_13_block/bloc/news_bloc.dart';
import 'package:sabak_13_block/service.dart';
import 'package:sabak_13_block/widgets/news_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'News App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(child: Text('circular progress indicator'));
          } else if (state is ErrorState) {
            return Text(state.errorText);
          } else if (state is LoadedState) {
            return ListView.builder(
              itemCount: state.news.articles?.length,
              itemBuilder: (context, index) {
                final news = state.news.articles?[index];
                return NewsCard(news: news);
              },
            );
          } else {
            Text('ERROR404');
          }
          return Text('ERROR101');
        },
      ),
    );
  }
}
