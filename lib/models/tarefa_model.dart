import 'package:mobx/mobx.dart';

part 'tarefa_model.g.dart';

class TarefaModel = _TarefaModelBase with _$TarefaModel;

abstract class _TarefaModelBase with Store {
  _TarefaModelBase({this.nome});

  @observable
  String nome;

  @action
  setNome(String value) => nome = value;
}
