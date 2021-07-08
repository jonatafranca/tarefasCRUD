import 'package:flutter/material.dart';
import 'package:tarefas_crud/views/tarefa_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarefas',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: TarefaList(),
    );
  }
}
