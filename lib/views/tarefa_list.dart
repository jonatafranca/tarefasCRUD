import 'package:flutter/material.dart';
import 'package:tarefas_crud/componets/tarefas_tile.dart';
import 'package:tarefas_crud/data/rotina_tarefas.dart';

class TarefaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tarefas = {...ROTINA_TAREFAS};

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de Tarefas',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: tarefas.length,
        itemBuilder: (ctx, i) => TarefaTile(tarefas.values.elementAt(i)),
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
