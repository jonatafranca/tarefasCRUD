import 'package:flutter/material.dart';
import 'package:tarefas_crud/models/tarefas.dart';

class TarefaTile extends StatelessWidget {
  final Tarefa tarefa;
  const TarefaTile(this.tarefa);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(tarefa.name),
      trailing: Row(
        children: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.delete),
          )
        ],
      ),
    );
  }
}
