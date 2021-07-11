import 'package:mobx/mobx.dart';
import 'package:tarefas_crud/models/tarefa_model.dart';

part 'tarefa_controller.g.dart';

class TarefaController = _TarefaControllerBase with _$TarefaController;

abstract class _TarefaControllerBase with Store {
  @observable
  ObservableList<TarefaModel> listTarefas = [
    TarefaModel(nome: "Escovar os dentes"),
    TarefaModel(nome: "Tomar café"),
    TarefaModel(nome: "Passear com o cachorro"),
  ].asObservable();

  @action
  addTarefa(TarefaModel model) {
    listTarefas.add(model);
  }

  @action
  removeTarefa(TarefaModel model) {
    listTarefas.removeWhere((tarefa) => tarefa.nome == model.nome);
  }

  @action
  editTarefa(TarefaModel model) {
    // listTarefas.;
  }
}
