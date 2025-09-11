import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    debugPrint("Before : $state");
    emit(state + 1);
    debugPrint("After  : $state");
  }

  void decrement() {
    if (state == 0) {
      return;
    }
    debugPrint("Before : $state");
    emit(state - 1);
    debugPrint("After  : $state");
  }

  void reset() {
    debugPrint("Before : $state");
    emit(state - state);
    debugPrint("After  : $state");
  }
}
