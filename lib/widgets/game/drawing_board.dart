import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:masked_game/design/theme/palette.dart';
import 'package:masked_game/stores/drawer_board_store.dart';
import 'package:masked_game/widgets/editor/keyboard_action_listener.dart';

import 'sketch_painter.dart';

class DrawingBoard extends StatefulWidget {
  const DrawingBoard({Key? key}) : super(key: key);

  @override
  State<DrawingBoard> createState() => _DrawingBoardState();
}

class _DrawingBoardState extends State<DrawingBoard> {
  final DrawerBoardStore store = GetIt.I.get();

  final FocusNode focusNode = FocusNode();
  final GlobalKey _boardKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  Offset _getOffset(Offset pos) {
    var box1 = _boardKey.currentContext!.findRenderObject() as RenderBox;
    var position = box1.localToGlobal(Offset.zero);
    var horizontalStart = position.dx;
    var horizontalEnd = position.dx + 1280;
    var verticalStart = position.dy;
    var verticalEnd = position.dy + 720;

    var clickPosition = box1.localToGlobal(pos);

    print(
        'clickPosition: x: ${clickPosition.dx - horizontalStart}, y: ${clickPosition.dy - verticalStart}'); // TODO: Esse valor é o que deve ser salvo

    var x = horizontalStart > clickPosition.dx
        ? horizontalStart
        : clickPosition.dx > horizontalEnd
            ? horizontalEnd
            : clickPosition.dx;
    var y = verticalStart > clickPosition.dy
        ? verticalStart
        : clickPosition.dy > verticalEnd
            ? verticalEnd
            : clickPosition.dy;
    return Offset(x - horizontalStart,
        y - verticalStart); // esse valor é o que deve ser renderizado (adicionar apenas ao canvas )
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardActionListener(
      undo: store.undo,
      child: Column(
        children: [
          Container(
            key: _boardKey,
            color: Palette.white,
            width: 1280,
            height: 720,
            child: MouseRegion(
              cursor: SystemMouseCursors.precise,
              child: Observer(builder: (context) {
                return Listener(
                  onPointerDown: (event) =>
                      store.init(_getOffset(event.localPosition)),
                  onPointerMove: (event) =>
                      store.onMove(_getOffset(event.localPosition)),
                  onPointerUp: (event) =>
                      store.onEnd(_getOffset(event.localPosition)),
                  child: RepaintBoundary(
                    child: CustomPaint(
                      painter: SketchPainter(sketches: [
                        ...store.sketches,
                        if (store.currentSketch.value != null) ...[
                          store.currentSketch.value!,
                        ],
                      ]),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
