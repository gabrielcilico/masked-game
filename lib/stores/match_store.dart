import 'package:mobx/mobx.dart';

part 'match_store.g.dart';

class MatchStore = MatchStoreBase with _$MatchStore;

abstract class MatchStoreBase with Store {
  @observable
  int score = 0;

  @action
  void incrementScore() {
    score++;
  }

  @action
  void decrementScore() {
    score--;
  }
}
