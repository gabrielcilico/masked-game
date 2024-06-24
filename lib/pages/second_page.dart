import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:masked_game/design/stores/user_store.dart';
import 'package:masked_game/widgets/game/board_widget.dart';
import 'package:masked_game/widgets/game/user_list.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final UserStore userStore = GetIt.I.get();

  @override
  void initState() {
    super.initState();
    userStore.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Observer(builder: (context) {
          return Row(
            children: [
              GameUserList(users: userStore.users),
              const Expanded(
                child: BoardWidget(),
              ),
            ],
          );
        }),
      ),
    );
  }
}
