import 'package:flutter/material.dart';

class TarefaList extends StatelessWidget {
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
        onPressed: () => {},
        // tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
