import 'package:bloc_cubit/practice/bloc/todo/todo_bloc_pr.dart';
import 'package:bloc_cubit/practice/bloc/todo/todo_state_bloc_pr.dart';
// import 'package:bloc_cubit/practice/cubit/todo/todo_list_pr.dart';
import 'package:bloc_cubit/practice/cubit/todo/todo_page_pr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Todo List")),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state.todos.isEmpty) {
            return const Center(child: Text("No tasks yet!"));
          }
          return ListView.builder(
            itemCount: state.todos.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.check_circle_outline),
                title: Text(state.todos[index]),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddToDoPagePr()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
