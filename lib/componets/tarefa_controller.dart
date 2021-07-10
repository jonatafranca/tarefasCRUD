import 'package:mobx/mobx.dart';
import 'package:tarefas_crud/models/tarefa.dart';

part 'tarefa_controller.g.dart';

class TarefaController = TarefaControllerBase with _$TarefaController;

abstract class TarefaControllerBase with Store {
  @Observable
  ObservableList<Tarefa> listTarefas = [
    Tarefa(name: "Cozinhar"),
    Tarefa(name: "Cozinhar"),
    Tarefa(name: "Cozinhar"),
  ].asObservable();

  @Action
  addTarefa(Tarefa tarefa) {
    listTarefas.add(tarefa);
  }
}
