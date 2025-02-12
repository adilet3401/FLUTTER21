import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabak_14_counter_app_block/bloc/counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(counter: 0)) {
    on<IncrementCounter>((CounterEvent event, Emitter<CounterState> emit) {
      emit(CounterState(counter: state.counter + 1));
    });
    on<DecremenetCounter>((CounterEvent event, Emitter<CounterState> emit) {
      emit(CounterState(counter: state.counter - 1));
    });
  }
}
