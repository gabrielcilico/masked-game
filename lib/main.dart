import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:masked_game/app_core.dart';
import 'package:masked_game/app_setup.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  AppSetup().init();

  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight,])
      .then((_) => runApp(const AppCore()));
}
