import 'package:bloc_cubit/const/export.dart';
part 'counter_event.dart';

//This is a event

class CounterBlock extends Bloc<CounterEvent, int> {
  CounterBlock() : super(0) {
    on<IncrementCounter>((event, emit) {
      emit(state + 1);
    });
    on<DecrementCounter>((event, emit) {
      emit(state - 1);
    });
    on<ResetAllCounter>((event, emit) {
      emit(state - state);
    });
  }
}
