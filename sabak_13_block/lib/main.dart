import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabak_13_block/bloc/news_bloc.dart';
import 'package:sabak_13_block/my_home_page.dart';
import 'package:sabak_13_block/service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<NewsBloc>(
        create: (context) =>
            NewsBloc(servicedata: ServiceData())..add(FetchNews()),
        child: const MyHomePage(),
      ),
    );
  }
}
