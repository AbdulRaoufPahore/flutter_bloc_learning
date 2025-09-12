class TodoState {
  final List<String> todos;

  TodoState({this.todos = const []});

  TodoState copyWith({List<String>? todos}) {
    return TodoState(todos: todos ?? this.todos);
  }
}
