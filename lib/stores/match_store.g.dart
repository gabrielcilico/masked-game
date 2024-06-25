// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MatchStore on MatchStoreBase, Store {
  late final _$scoreAtom = Atom(name: 'MatchStoreBase.score', context: context);

  @override
  int get score {
    _$scoreAtom.reportRead();
    return super.score;
  }

  @override
  set score(int value) {
    _$scoreAtom.reportWrite(value, super.score, () {
      super.score = value;
    });
  }

  late final _$MatchStoreBaseActionController =
      ActionController(name: 'MatchStoreBase', context: context);

  @override
  void incrementScore() {
    final _$actionInfo = _$MatchStoreBaseActionController.startAction(
        name: 'MatchStoreBase.incrementScore');
    try {
      return super.incrementScore();
    } finally {
      _$MatchStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementScore() {
    final _$actionInfo = _$MatchStoreBaseActionController.startAction(
        name: 'MatchStoreBase.decrementScore');
    try {
      return super.decrementScore();
    } finally {
      _$MatchStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
score: ${score}
    ''';
  }
}
