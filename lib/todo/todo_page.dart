import 'package:bloc_cubit/const/export.dart';
import 'package:bloc_cubit/todo/cubit/todo_cubit.dart';

class AddToDoPage extends StatefulWidget {
  const AddToDoPage({super.key});

  @override
  State<AddToDoPage> createState() => _AddToDoPageState();
}

class _AddToDoPageState extends State<AddToDoPage> {
  final todoTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add ToDo")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              20.heightBox,
              TextField(
                controller: todoTitleController,
                decoration: InputDecoration(hintText: "Add something"),
              ),
              20.heightBox,
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    context.read<TodoCubit>().addToDo(
                      todoTitleController.text.trim(),
                    );
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Add",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
