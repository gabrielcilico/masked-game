// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MatchStore on MatchStoreBase, Store {
  Computed<List<UserModel>>? _$playersComputed;

  @override
  List<UserModel> get players =>
      (_$playersComputed ??= Computed<List<UserModel>>(() => super.players,
              name: 'MatchStoreBase.players'))
          .value;
  Computed<UserModel>? _$currentPlayerComputed;

  @override
  UserModel get currentPlayer => (_$currentPlayerComputed ??=
          Computed<UserModel>(() => super.currentPlayer,
              name: 'MatchStoreBase.currentPlayer'))
      .value;

  late final _$matchIdAtom =
      Atom(name: 'MatchStoreBase.matchId', context: context);

  @override
  String get matchId {
    _$matchIdAtom.reportRead();
    return super.matchId;
  }

  @override
  set matchId(String value) {
    _$matchIdAtom.reportWrite(value, super.matchId, () {
      super.matchId = value;
    });
  }

  late final _$currentPlayerUserIdAtom =
      Atom(name: 'MatchStoreBase.currentPlayerUserId', context: context);

  @override
  String get currentPlayerUserId {
    _$currentPlayerUserIdAtom.reportRead();
    return super.currentPlayerUserId;
  }

  @override
  set currentPlayerUserId(String value) {
    _$currentPlayerUserIdAtom.reportWrite(value, super.currentPlayerUserId, () {
      super.currentPlayerUserId = value;
    });
  }

  late final _$MatchStoreBaseActionController =
      ActionController(name: 'MatchStoreBase', context: context);

  @override
  void startPlaying() {
    final _$actionInfo = _$MatchStoreBaseActionController.startAction(
        name: 'MatchStoreBase.startPlaying');
    try {
      return super.startPlaying();
    } finally {
      _$MatchStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
matchId: ${matchId},
currentPlayerUserId: ${currentPlayerUserId},
players: ${players},
currentPlayer: ${currentPlayer}
    ''';
  }
}
