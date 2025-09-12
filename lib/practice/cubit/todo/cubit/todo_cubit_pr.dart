import 'package:bloc_cubit/const/export.dart';

class TodoCubitPr extends Cubit<List<String>> {
  TodoCubitPr() : super([]);

  void addTaskPr(String task) {
    final updateList = List<String>.from(state)..add(task);
    emit(updateList);
  }
}
