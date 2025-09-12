import 'package:bloc_cubit/practice/bloc/todo/todo_event_bloc_pr.dart';
import 'package:bloc_cubit/practice/bloc/todo/todo_state_bloc_pr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoBloc extends Bloc<TodoEventBlocPr, TodoState> {
  TodoBloc() : super(TodoState()) {
    on<AddToDoEventPr>(_onAddTodo);
  }

  void _onAddTodo(AddToDoEventPr event, Emitter<TodoState> emit) {
    final updatedList = List<String>.from(state.todos)..add(event.task);
    emit(state.copyWith(todos: updatedList));
  }
}
