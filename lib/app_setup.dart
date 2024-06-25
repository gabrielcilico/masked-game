import 'package:get_it/get_it.dart';
import 'package:masked_game/stores/drawer_board_store.dart';
import 'package:masked_game/stores/user_store.dart';

class AppSetup {
  static final AppSetup _singleton = AppSetup._internal();
  final getIt = GetIt.instance;

  factory AppSetup() {
    return _singleton;
  }

  AppSetup._internal();

  void init() {
    getIt.registerSingleton<UserStore>(UserStore());

    // Game
    getIt.registerSingleton<DrawerBoardStore>(DrawerBoardStore());
  }
}
