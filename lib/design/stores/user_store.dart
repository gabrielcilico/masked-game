import 'package:masked_game/models/user_model.dart';
import 'package:masked_game/repositories/user_repository.dart';
import 'package:mobx/mobx.dart';

part 'user_store.g.dart';

class UserStore = UserStoreBase with _$UserStore;

abstract class UserStoreBase with Store {
  final UserRepository _userRepository = UserRepository();

  @observable
  String? name;

  @observable
  ObservableList<UserModel> users = ObservableList<UserModel>();

  @computed
  bool get hasName => name != null && name!.isNotEmpty;

  @action
  void setName(String value) {
    name = value;
  }

  @action
  Future<void> getUsers() async {
    users.clear();
    users.addAll(await _userRepository.getUsers());
  }
}
