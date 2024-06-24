import 'package:go_router/go_router.dart';
import 'package:masked_game/pages/home_page.dart';
import 'package:masked_game/pages/second_page.dart';

class Routes {
  static final routes = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/second',
      builder: (context, state) => SecondPage(),
    ),
  ]);
}
