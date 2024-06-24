import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:masked_game/design/theme/palette.dart';
import 'package:masked_game/design/theme/text_styles.dart';
import 'package:masked_game/models/user_model.dart';

class GameUserList extends StatelessWidget {
  final List<UserModel> users;

  const GameUserList({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...users
                .map(
                  (user) => Expanded(
                    child: AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Container(
                        color: user.color,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              user.name,
                              overflow: TextOverflow.ellipsis,
                              style: GloriaHallelujah().textXS.regular.copyWith(
                                shadows: [
                                  Shadow(
                                    color: Palette.white.withOpacity(0.4),
                                    blurRadius: 4,
                                    offset: const Offset(0, 0),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
            Expanded(
                child: InkWell(
              onTap: () {
                context.go('/');
              },
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: Container(
                    color: Palette.error,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.close, color: Palette.white),
                        Text(
                          'Sair',
                          style: GloriaHallelujah()
                              .textXS
                              .regular
                              .copyWith(color: Palette.white),
                        ),
                      ],
                    )),
              ),
            ))
          ]);
    });
  }
}
