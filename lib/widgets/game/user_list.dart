import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:masked_game/design/theme/palette.dart';
import 'package:masked_game/design/theme/text_styles.dart';
import 'package:masked_game/models/user_model.dart';

class GameUserList extends StatelessWidget {
  final List<UserModel> users;
  final Function(Color) changeColor;

  const GameUserList(
      {super.key, required this.users, required this.changeColor});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Container(
        width: 160,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: Palette.tertiary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Players',
                style: GloriaHallelujah().textSM.bold.copyWith(
                  color: Palette.white,
                  shadows: [
                    const BoxShadow(
                      color: Palette.white,
                      blurRadius: 2,
                      offset: Offset(1, 1),
                    )
                  ],
                ),
              ),
              ...users
                  .map(
                    (user) => Column(
                      children: [
                        InkWell(
                          onTap: () => changeColor(user.color),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Palette.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    user.name,
                                    style:
                                        GloriaHallelujah().textXS.bold.copyWith(
                                      color: user.color,
                                      shadows: [
                                        BoxShadow(
                                          color: user.color,
                                          blurRadius: 2,
                                          offset: const Offset(1, 1),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.play_circle_outlined,
                                  color: user.color,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                      ],
                    ),
                  )
                  .toList(),
            ]),
      );
    });
  }
}
