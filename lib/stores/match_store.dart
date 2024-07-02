import 'package:get_it/get_it.dart';
import 'package:masked_game/models/user_model.dart';
import 'package:mobx/mobx.dart';

import 'party_store.dart';

part 'match_store.g.dart';

class MatchStore = MatchStoreBase with _$MatchStore;

abstract class MatchStoreBase with Store {
  final PartyStore partyStore = GetIt.I.get();

  @observable
  String matchId = 'Teste';

  @observable
  String currentPlayerUserId = '';

  @computed
  List<UserModel> get players => partyStore.players;

  @computed
  UserModel get currentPlayer =>
      players.firstWhere((player) => player.id == currentPlayerUserId);

  @action
  void startPlaying() {
    currentPlayerUserId = players.first.id;
  }
}
