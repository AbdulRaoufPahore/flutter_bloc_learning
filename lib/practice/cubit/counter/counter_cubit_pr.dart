import 'package:bloc_cubit/const/export.dart';

class CounterCubitPr extends Cubit<int> {
  CounterCubitPr() : super(0);

  void increment() {
    debugPrint("Increment $state");
    emit(state + 1);
  }

  void decrement() {
    debugPrint("Decrement $state");
    if (state == 0) {
      return;
    }
    emit(state - 1);
  }

  void reseaAll() {
    debugPrint("Reset $state");
    emit(state - state);
  }

  void addition() {
    debugPrint("+5 $state");
    emit(state + 5);
  }

  void fiftyAddition() {
    debugPrint("+50 $state");
    emit(state + 50);
  }
}
