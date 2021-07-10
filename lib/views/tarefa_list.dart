import 'package:flutter/material.dart';
import 'package:tarefas_crud/data/rotina_tarefa.dart';

class TarefaList extends StatefulWidget {
  @override
  _TarefaListState createState() => _TarefaListState();
}

class _TarefaListState extends State<TarefaList> {
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
          );
        });
    actions:
    <Widget>[
      TextButton(
        onPressed: () {},
        child: Text('Salvar'),
      ),
    ];
    TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text('Cancelar'),
    );
  }

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
      // body: ListView.builder(
      // itemCount: tarefas.length,
      // itemBuilder: (_, index) {
      //   // return TarefaTile();
      // },
      // ),
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
