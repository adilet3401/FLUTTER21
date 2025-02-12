import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabak_14_counter_app_block/bloc/counter_bloc.dart';
import 'package:sabak_14_counter_app_block/bloc/counter_event.dart';

class CounterAppBloc extends StatelessWidget {
  const CounterAppBloc({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'counter app bloc',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'you have a pushed many times',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '${state.counter}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => counterBloc.add(IncrementCounter()),
            tooltip: 'increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () => counterBloc.add(DecremenetCounter()),
            tooltip: 'increment',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
