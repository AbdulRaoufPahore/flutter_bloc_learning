abstract class TodoEventBlocPr {
  void add(AddToDoEventPr addToDoEventPr) {}
}

class AddToDoEventPr extends TodoEventBlocPr {
  final String task;
  AddToDoEventPr(this.task);
}
