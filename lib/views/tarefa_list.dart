import 'package:flutter/material.dart';
import 'package:tarefas_crud/componets/tarefa_tile.dart';
import 'package:tarefas_crud/views/tarefa_controller.dart';

class TarefaList extends StatefulWidget {
  @override
  _TarefaListState createState() => _TarefaListState();
}

class _TarefaListState extends State<TarefaList> {
  final controller = TarefaController();

  _dialog() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("Adicionar Tarefa"),
            content: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nova tarefa',
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {},
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tarefas diárias',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: controller.listTarefas.length,
        itemBuilder: (_, index) {
          var tarefa = controller.listTarefas[index];
          return TarefaTile(name: tarefa);
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
