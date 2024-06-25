import 'package:go_router/go_router.dart';
import 'package:masked_game/pages/drawer_page.dart';
import 'package:masked_game/pages/home_page.dart';

class Routes {
  static final routes = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/drawer',
      builder: (context, state) => const DrawerPage(),
    ),
  ]);
}
