import 'package:bloc_cubit/const/export.dart';
import 'package:bloc_cubit/practice/cubit/todo/cubit/todo_cubit_pr.dart';
import 'package:flutter/material.dart';

class AddToDoPagePr extends StatefulWidget {
  const AddToDoPagePr({super.key});

  @override
  State<AddToDoPagePr> createState() => _AddToDoPagePrState();
}

class _AddToDoPagePrState extends State<AddToDoPagePr> {
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add ToDo")),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            20.heightBox,
            TextFormField(
              controller: textController,
              decoration: InputDecoration(
                hintText: "Enter something to add list",
              ),
            ),
            40.heightBox,
            ElevatedButton(
              onPressed: () {
                if (textController.text.isNotEmpty) {
                  context.read<TodoCubitPr>().addTaskPr(textController.text);
                  Navigator.pop(context);
                }
              },
              child: "Add".text.size(19).bold.make(),
            ).box.height(50).width(double.infinity).make(),
          ],
        ),
      ),
    );
  }
}
