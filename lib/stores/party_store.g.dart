// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'party_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PartyStore on PartyStoreBase, Store {
  Computed<List<Color>>? _$availableColorsComputed;

  @override
  List<Color> get availableColors => (_$availableColorsComputed ??=
          Computed<List<Color>>(() => super.availableColors,
              name: 'PartyStoreBase.availableColors'))
      .value;
  Computed<bool>? _$isFullComputed;

  @override
  bool get isFull => (_$isFullComputed ??=
          Computed<bool>(() => super.isFull, name: 'PartyStoreBase.isFull'))
      .value;

  late final _$colorsAtom =
      Atom(name: 'PartyStoreBase.colors', context: context);

  @override
  ObservableList<Color> get colors {
    _$colorsAtom.reportRead();
    return super.colors;
  }

  @override
  set colors(ObservableList<Color> value) {
    _$colorsAtom.reportWrite(value, super.colors, () {
      super.colors = value;
    });
  }

  late final _$playersAtom =
      Atom(name: 'PartyStoreBase.players', context: context);

  @override
  ObservableList<UserModel> get players {
    _$playersAtom.reportRead();
    return super.players;
  }

  @override
  set players(ObservableList<UserModel> value) {
    _$playersAtom.reportWrite(value, super.players, () {
      super.players = value;
    });
  }

  late final _$partyIdAtom =
      Atom(name: 'PartyStoreBase.partyId', context: context);

  @override
  String get partyId {
    _$partyIdAtom.reportRead();
    return super.partyId;
  }

  @override
  set partyId(String value) {
    _$partyIdAtom.reportWrite(value, super.partyId, () {
      super.partyId = value;
    });
  }

  late final _$PartyStoreBaseActionController =
      ActionController(name: 'PartyStoreBase', context: context);

  @override
  void joinParty(String partyId) {
    final _$actionInfo = _$PartyStoreBaseActionController.startAction(
        name: 'PartyStoreBase.joinParty');
    try {
      return super.joinParty(partyId);
    } finally {
      _$PartyStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void createParty() {
    final _$actionInfo = _$PartyStoreBaseActionController.startAction(
        name: 'PartyStoreBase.createParty');
    try {
      return super.createParty();
    } finally {
      _$PartyStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void leaveParty() {
    final _$actionInfo = _$PartyStoreBaseActionController.startAction(
        name: 'PartyStoreBase.leaveParty');
    try {
      return super.leaveParty();
    } finally {
      _$PartyStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addPlayer(UserModel player) {
    final _$actionInfo = _$PartyStoreBaseActionController.startAction(
        name: 'PartyStoreBase.addPlayer');
    try {
      return super.addPlayer(player);
    } finally {
      _$PartyStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removePlayer(UserModel player) {
    final _$actionInfo = _$PartyStoreBaseActionController.startAction(
        name: 'PartyStoreBase.removePlayer');
    try {
      return super.removePlayer(player);
    } finally {
      _$PartyStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
colors: ${colors},
players: ${players},
partyId: ${partyId},
availableColors: ${availableColors},
isFull: ${isFull}
    ''';
  }
}
