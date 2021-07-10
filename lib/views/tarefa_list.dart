import 'package:flutter/material.dart';
import 'package:tarefas_crud/componets/tarefa_tile.dart';
import 'package:tarefas_crud/data/rotina_tarefa.dart';

class TarefaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tarefas = {...ROTINA_TAREFA};

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tarefas diárias',
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
