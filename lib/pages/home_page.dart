import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:masked_game/design/theme/palette.dart';
import 'package:masked_game/stores/user_store.dart';
import 'package:masked_game/widgets/button/start_button.dart';
import 'package:masked_game/widgets/input/input_text_field.dart';

class HomePage extends StatelessWidget {
  final UserStore userStore = GetIt.I.get();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultInputTextField(
                labelText: 'nickname',
                hintText: 'Digite seu nome',
                currentValue: userStore.name ?? '',
                onChanged: userStore.setName,
                canClear: true,
              ),
              const SizedBox(height: 16),
              StartButton(
                  text: 'COMEÇAR',
                  onPressed: () {
                    context.go('/drawer');
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
