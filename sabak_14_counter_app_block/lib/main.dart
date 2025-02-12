import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabak_14_counter_app_block/bloc/counter_bloc.dart';
import 'package:sabak_14_counter_app_block/counter_app_block.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: const CounterAppBloc(),
      ),
    );
  }
}
