import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:tarefas_crud/models/tarefa_model.dart';

class TarefaTile extends StatelessWidget {
  final TarefaModel name;
  final Function removeClicked;
  final Function editClicked;

  const TarefaTile({Key key, this.name, this.removeClicked, this.editClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListTile(
          title: Text(name.nome),
          trailing: Container(
            width: 100,
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: editClicked,
                  color: Colors.red,
                  icon: Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: removeClicked,
                  color: Colors.red,
                  icon: Icon(Icons.delete),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
