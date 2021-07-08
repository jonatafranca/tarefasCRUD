import 'package:flutter/material.dart';

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
      home: TarefasList(),
    );
  }
}

class TarefasList extends StatelessWidget {
  int _counter = 0;

  void _incrementCounter() {
    _counter++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de Tarefas',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          // child: ListView.builder(),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
