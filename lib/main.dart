// import 'package:bloc_cubit/bloc/counter_bloc.dart';
// import 'package:bloc_cubit/const/export.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [

//         BlocProvider(create: (_) => CounterCubit()),
//         BlocProvider(create: (_) => CounterBlock()),
//       ],
//       child: MaterialApp(
//         title: 'Flutter BLoC State Managment',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         ),

//         home: const MyHomePage(title: 'Flutter Demo Home Page'),
//         //
//         //
//         // Parctice of Cubit
//         // home: CounterHomeCubitPr(),
//       ),
//     );
//   }
// }

// import 'package:bloc_cubit/const/export.dart';
// import 'package:bloc_cubit/practice/bloc/counter/counter_bloc.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [

//         BlocProvider(create: (_) => CounterBlocPr()),
//       ],
//       child: MaterialApp(
//         title: 'Flutter BLoC State Managment',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         ),
//         home: CounterHomeCubitPr(),
//       ),
//     );
//   }
// }

// ToDo List App

// import 'package:bloc_cubit/const/export.dart';
// import 'package:bloc_cubit/todo/cubit/todo_cubit.dart';

// import 'package:bloc_cubit/todo/todo_list.dart';
// import 'package:bloc_cubit/todo/todo_page.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => TodoCubit(),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: "BLoC State Management",
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: false,
//         ),
//         initialRoute: '/',
//         routes: {
//           '/': (context) => TodoList(),
//           '/add-todo': (context) => AddToDoPage(),
//         },
//       ),
//     );
//   }
// }

// ToDo List App Pracitce with Cubit///////////////////////////////////

// import 'package:bloc_cubit/const/export.dart';
// import 'package:bloc_cubit/practice/cubit/todo/cubit/todo_cubit_pr.dart';
// import 'package:bloc_cubit/practice/cubit/todo/todo_list_pr.dart';

// void main() {
//   runApp(
//     BlocProvider(create: (context) => TodoCubitPr(), child: const MyApp()),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Todo App Practice with Cubit State Managment",
//       theme: ThemeData(primarySwatch: Colors.brown, useMaterial3: false),
//       home: TodoListPr(),
//     );
//   }
// }

///////// ToDo with BLoC /////////////////////
import 'package:bloc_cubit/practice/bloc/todo/todo_bloc_pr.dart';
import 'package:bloc_cubit/practice/cubit/todo/todo_list_pr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(create: (_) => TodoBloc(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo Bloc App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const TodoListPr(),
    );
  }
}
