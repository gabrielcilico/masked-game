import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KeyboardActionListener extends StatefulWidget {
  final VoidCallback undo;
  final Widget child;

  const KeyboardActionListener(
      {super.key, required this.undo, required this.child});

  @override
  State<StatefulWidget> createState() => _KeyboardActionListenerState();
}

class _KeyboardActionListenerState extends State<KeyboardActionListener> {
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      focusNode: focusNode,
      onKeyEvent: (event) {
        _undo(event);
      },
      child: widget.child,
    );
  }

  void _undo(KeyEvent event) {
    if (event is! KeyDownEvent || event.logicalKey != LogicalKeyboardKey.keyZ) {
      return;
    }
    if (HardwareKeyboard.instance.physicalKeysPressed
        .any((element) => element == PhysicalKeyboardKey.controlLeft)) {
      widget.undo();
    }
  }
}
