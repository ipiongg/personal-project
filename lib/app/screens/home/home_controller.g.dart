// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$solutionSelectedAtom =
      Atom(name: '_HomeControllerBase.solutionSelected');

  @override
  int get solutionSelected {
    _$solutionSelectedAtom.reportRead();
    return super.solutionSelected;
  }

  @override
  set solutionSelected(int value) {
    _$solutionSelectedAtom.reportWrite(value, super.solutionSelected, () {
      super.solutionSelected = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void setSolutionSelected(int value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setSolutionSelected');
    try {
      return super.setSolutionSelected(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
solutionSelected: ${solutionSelected}
    ''';
  }
}
