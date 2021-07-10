import 'package:flutter/material.dart';
import 'package:tarefas_crud/models/tarefa.dart';

class TarefaTile extends StatelessWidget {
  final Tarefa tarefa;
  const TarefaTile(this.tarefa);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(tarefa.name),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () => {},
              color: Colors.red,
              icon: Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () => {},
              color: Colors.red,
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
