import 'package:masked_game/design/theme/palette.dart';
import 'package:masked_game/models/user_model.dart';

class UserRepository {
  Future<List<UserModel>> getUsers() async {
    return Future.value([
      UserModel(id: '1', name: 'User 1', color: Palette.player1),
      UserModel(id: '2', name: 'User 2', color: Palette.player2),
      UserModel(id: '3', name: 'User 3', color: Palette.player3),
      UserModel(id: '4', name: 'User 4', color: Palette.player4),
      UserModel(id: '5', name: 'User 5', color: Palette.player5),
      UserModel(id: '6', name: 'User 6', color: Palette.player6),
      UserModel(id: '7', name: 'User 7', color: Palette.player7),
      UserModel(id: '8', name: 'User 8', color: Palette.player8),
    ]);
  }
}
