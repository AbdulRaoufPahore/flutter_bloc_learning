import 'package:bloc_cubit/const/export.dart';
import 'package:bloc_cubit/practice/cubit/todo/cubit/todo_cubit_pr.dart';
import 'package:bloc_cubit/practice/cubit/todo/todo_page_pr.dart';

class TodoListPr extends StatefulWidget {
  const TodoListPr({super.key});

  @override
  State<TodoListPr> createState() => _TodoListPrState();
}

class _TodoListPrState extends State<TodoListPr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Todo List",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.sort, size: 35),
      ),
      body: BlocBuilder<TodoCubitPr, List<String>>(
        builder: (context, todos) {
          if (todos.isEmpty) {
            return Center(child: "No task yet!.".text.bold.size(23).make());
          }
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text(todos[index]),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddToDoPagePr()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
