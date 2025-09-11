import 'package:bloc_cubit/const/export.dart';
import 'package:bloc_cubit/todo/models/todo_models.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addToDo(String title) {
    final todo = Todo(name: title, createdAt: DateTime.now());

    emit([...state, todo]);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    super.onChange(change);
    debugPrint("$change");
  }
}
