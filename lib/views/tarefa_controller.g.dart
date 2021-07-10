// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarefa_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TarefaController on _TarefaControllerBase, Store {
  final _$listTarefasAtom = Atom(name: '_TarefaControllerBase.listTarefas');

  @override
  ObservableList<TarefaModel> get listTarefas {
    _$listTarefasAtom.reportRead();
    return super.listTarefas;
  }

  @override
  set listTarefas(ObservableList<TarefaModel> value) {
    _$listTarefasAtom.reportWrite(value, super.listTarefas, () {
      super.listTarefas = value;
    });
  }

  @override
  String toString() {
    return '''
listTarefas: ${listTarefas}
    ''';
  }
}
