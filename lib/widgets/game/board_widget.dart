import 'package:flutter/material.dart';
import 'package:masked_game/design/theme/palette.dart';

class BoardWidget extends StatefulWidget {
  const BoardWidget({Key? key}) : super(key: key);

  @override
  State<BoardWidget> createState() => _BoardWidgetState();
}

class _BoardWidgetState extends State<BoardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Palette.background,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SizedBox(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                    decoration: BoxDecoration(
                  color: Palette.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Palette.black.withOpacity(0.2),
                      blurRadius: 3,
                      offset: const Offset(4, 4),
                    ),
                  ],
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
