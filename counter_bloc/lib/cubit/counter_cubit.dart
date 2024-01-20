import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(number: 0));
  void increment() {
    final count = state.number + 1;
    if (count <= 10) {
      final updateState = CounterState(
        number: count,
      );
      emit(updateState);
    }
  }

  void decrement() {
    final count = state.number - 1;
    if (count >= 0) {
      final updateState = CounterState(
        number: count,
      );
      emit(updateState);
    }
  }
}
