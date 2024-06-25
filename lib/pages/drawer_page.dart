import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:masked_game/design/theme/palette.dart';
import 'package:masked_game/design/theme/text_styles.dart';
import 'package:masked_game/stores/drawer_board_store.dart';
import 'package:masked_game/stores/user_store.dart';
import 'package:masked_game/widgets/game/drawing_board.dart';
import 'package:masked_game/widgets/game/user_list.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  final UserStore userStore = GetIt.I.get();
  final DrawerBoardStore store = GetIt.I.get();

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
          return Container(
            padding: const EdgeInsets.all(16),
            color: Palette.white,
            child: Stack(
              children: [
                SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height,
                    child: const DrawingBoard()),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GameUserList(
                      users: userStore.users,
                      changeColor: store.startDrawing,
                    ),
                    const SizedBox(width: 16),
                    Stack(
                      children: [
                        SizedBox(
                          width: 64,
                          height: 64,
                          child: CircularProgressIndicator(
                            color: store.color,
                            strokeWidth: 8,
                            value: 4 / 6,
                            // value: 0.3,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          bottom: 0,
                          right: 0,
                          child: Center(
                              child: Text(
                            '40s',
                            style: GloriaHallelujah()
                                .textXS
                                .bold
                                .copyWith(color: store.color),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: store.undo,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Palette.primary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.undo_outlined,
                                  color: Palette.white, size: 32),
                              const SizedBox(width: 8),
                              Text(
                                'Desfazer',
                                style:
                                    GloriaHallelujah().textXS.regular.copyWith(
                                          color: Palette.white,
                                        ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: store.clearSketch,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Palette.error,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.delete,
                                  color: Palette.white, size: 32),
                              const SizedBox(width: 8),
                              Text(
                                'Limpar',
                                style:
                                    GloriaHallelujah().textXS.regular.copyWith(
                                          color: Palette.white,
                                        ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Palette.tertiary,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 8),
                              decoration: BoxDecoration(
                                color: Palette.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Palette.secondary,
                                  width: 8,
                                ),
                              ),
                              child: Text(
                                'Barco',
                                style: GloriaHallelujah().textMD.regular,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  decoration: const BoxDecoration(
                                    color: Palette.tertiary,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Desenhando:',
                                    style: GloriaHallelujah()
                                        .textXS
                                        .regular
                                        .copyWith(color: Palette.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
