import 'package:flutter/material.dart';
import 'package:todo_list_app/app/screens/screens.dart';
import 'package:todo_list_app/config/config.dart';

class TodoListApp extends StatelessWidget {
  const TodoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: HomeScreen()
    );
  }
}