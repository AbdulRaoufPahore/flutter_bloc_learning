part of 'counter_bloc.dart';

// Events

sealed class CounterEventPr {}

final class IncrementCounterPr extends CounterEventPr {}

final class DecrementCounterPr extends CounterEventPr {}

final class ResetAllCounterPr extends CounterEventPr {}

final class AdditionCounterPr extends CounterEventPr {}

final class FiftyAdditionPr extends CounterEventPr {}
