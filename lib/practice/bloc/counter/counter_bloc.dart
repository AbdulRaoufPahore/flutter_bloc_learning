import 'package:bloc_cubit/const/export.dart';
part 'counter_event.dart';

class CounterBlocPr extends Bloc<CounterEventPr, int> {
  CounterBlocPr() : super(0) {
    on<IncrementCounterPr>((event, emit) {
      emit(state + 1);
    });
    on<DecrementCounterPr>((event, emit) {
      emit(state - 1);
    });
    on<ResetAllCounterPr>((event, emit) {
      emit(state - state);
    });
    on<AdditionCounterPr>((event, emit) {
      emit(state + 5);
    });
    on<FiftyAdditionPr>((event, emit) {
      emit(state + 50);
    });
  }
}
