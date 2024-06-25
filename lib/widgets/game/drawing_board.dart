import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
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

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  Offset _getOffset(Offset pos) {
    var box = context.findRenderObject() as RenderBox;
    var offset = box.globalToLocal(pos);
    return Offset(offset.dx + 16, offset.dy + 16);
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardActionListener(
      undo: store.undo,
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
    );
  }
}
