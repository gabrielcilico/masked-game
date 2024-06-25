import 'package:flutter/material.dart';
import 'package:masked_game/design/theme/palette.dart';
import 'package:masked_game/models/user_model.dart';
import 'package:mobx/mobx.dart';

part 'party_store.g.dart';

class PartyStore = PartyStoreBase with _$PartyStore;

abstract class PartyStoreBase with Store {
  @observable
  ObservableList<Color> colors = ObservableList.of([
    Palette.player1,
    Palette.player2,
    Palette.player3,
    Palette.player4,
    Palette.player5,
    Palette.player6,
    Palette.player7,
    Palette.player8,
  ]);

  @observable
  ObservableList<UserModel> players = ObservableList<UserModel>();

  @observable
  String partyId = '';

  @computed
  List<Color> get availableColors => colors
      .where((color) => !players.any((player) => player.color == color))
      .toList();

  @computed
  bool get isFull => players.length >= 8;

  @action
  void joinParty(String partyId) {
    this.partyId = partyId;
  }

  @action
  void createParty() {
    partyId = DateTime.now().millisecondsSinceEpoch.toString();
  }

  @action
  void leaveParty() {
    partyId = '';
    players.clear();
  }

  @action
  void addPlayer(UserModel player) {
    if (isFull) return;
    players = ObservableList.of([...players, player]);
  }

  @action
  void removePlayer(UserModel player) {
    players = ObservableList.of(players.where((p) => p.id != player.id));
  }
}
