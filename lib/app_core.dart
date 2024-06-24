import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:masked_game/routes.dart';

class AppCore extends StatelessWidget {
  const AppCore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Masked Game',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: Routes.routes,
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
            PointerDeviceKind.stylus,
            PointerDeviceKind.trackpad,
            PointerDeviceKind.unknown
          },
        ));
  }
}
