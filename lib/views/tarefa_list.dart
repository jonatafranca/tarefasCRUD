import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tarefas_crud/componets/tarefa_tile.dart';
import 'package:tarefas_crud/models/tarefa_model.dart';
import 'package:tarefas_crud/views/tarefa_controller.dart';

class TarefaList extends StatefulWidget {
  @override
  _TarefaListState createState() => _TarefaListState();
}

class _TarefaListState extends State<TarefaList> {
  final controller = TarefaController();

  _dialog() {
    var model = TarefaModel();

    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("Adicionar Tarefa"),
            content: TextField(
              onChanged: model.setNome,
              // onChanged: model != null ? model.setNome : () {},
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nova tarefa',
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  if (model.nome != null && model.nome != '') {
                    controller.addTarefa(model);
                    Navigator.pop(context);
                  }
                },
                child: Text('Salvar'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancelar'),
              ),
            ],
          );
        });
  }

  _editDialog(int index) {
    var model = TarefaModel();

    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("Editar Tarefa"),
            content: TextFormField(
              onChanged: model.setNome,
              initialValue: controller.listTarefas[index].nome,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  if (model.nome != '') {
                    controller.editTarefa(model, index);
                    Navigator.pop(context);
                  }
                },
                child: Text('Atualizar'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancelar'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tarefas diárias',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: controller.listTarefas.length,
            itemBuilder: (_, index) {
              var tarefa = controller.listTarefas[index];
              return TarefaTile(
                name: tarefa,
                removeClicked: () {
                  controller.removeTarefa(tarefa);
                },
                editClicked: () {
                  _editDialog(index);
                  controller.editTarefa(tarefa, index);
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _dialog();
        },
        // tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
