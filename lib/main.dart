import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod_01/todo.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoPage(),
    );
  }
}

class TodoPage extends ConsumerWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Todo todo = ref.read(todoProvider);
    return Scaffold(
      body: Center(
        child: Text(
          "완료 : ${todo.isCompleted},  내용 : ${todo.description}",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
