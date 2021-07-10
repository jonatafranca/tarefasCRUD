// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarefa_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TarefaModel on _TarefaModelBase, Store {
  final _$nomeAtom = Atom(name: '_TarefaModelBase.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$_TarefaModelBaseActionController =
      ActionController(name: '_TarefaModelBase');

  @override
  dynamic setNome(String value) {
    final _$actionInfo = _$_TarefaModelBaseActionController.startAction(
        name: '_TarefaModelBase.setNome');
    try {
      return super.setNome(value);
    } finally {
      _$_TarefaModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome}
    ''';
  }
}
