part of 'counter_bloc.dart';

sealed class CounterEvent {}

class IncrementCounter extends CounterEvent {}

final class DecrementCounter extends CounterEvent {}

final class ResetAllCounter extends CounterEvent {}
