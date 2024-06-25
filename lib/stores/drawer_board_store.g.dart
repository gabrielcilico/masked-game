// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawer_board_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DrawerBoardStore on DrawerBoardStoreBase, Store {
  late final _$sketchesAtom =
      Atom(name: 'DrawerBoardStoreBase.sketches', context: context);

  @override
  ObservableList<SketchModel> get sketches {
    _$sketchesAtom.reportRead();
    return super.sketches;
  }

  @override
  set sketches(ObservableList<SketchModel> value) {
    _$sketchesAtom.reportWrite(value, super.sketches, () {
      super.sketches = value;
    });
  }

  late final _$currentSketchAtom =
      Atom(name: 'DrawerBoardStoreBase.currentSketch', context: context);

  @override
  Observable<SketchModel?> get currentSketch {
    _$currentSketchAtom.reportRead();
    return super.currentSketch;
  }

  @override
  set currentSketch(Observable<SketchModel?> value) {
    _$currentSketchAtom.reportWrite(value, super.currentSketch, () {
      super.currentSketch = value;
    });
  }

  late final _$colorAtom =
      Atom(name: 'DrawerBoardStoreBase.color', context: context);

  @override
  Color get color {
    _$colorAtom.reportRead();
    return super.color;
  }

  @override
  set color(Color value) {
    _$colorAtom.reportWrite(value, super.color, () {
      super.color = value;
    });
  }

  late final _$DrawerBoardStoreBaseActionController =
      ActionController(name: 'DrawerBoardStoreBase', context: context);

  @override
  void startDrawing(Color newColor) {
    final _$actionInfo = _$DrawerBoardStoreBaseActionController.startAction(
        name: 'DrawerBoardStoreBase.startDrawing');
    try {
      return super.startDrawing(newColor);
    } finally {
      _$DrawerBoardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void init(Offset offset) {
    final _$actionInfo = _$DrawerBoardStoreBaseActionController.startAction(
        name: 'DrawerBoardStoreBase.init');
    try {
      return super.init(offset);
    } finally {
      _$DrawerBoardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onMove(Offset offset) {
    final _$actionInfo = _$DrawerBoardStoreBaseActionController.startAction(
        name: 'DrawerBoardStoreBase.onMove');
    try {
      return super.onMove(offset);
    } finally {
      _$DrawerBoardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onEnd(Offset offset) {
    final _$actionInfo = _$DrawerBoardStoreBaseActionController.startAction(
        name: 'DrawerBoardStoreBase.onEnd');
    try {
      return super.onEnd(offset);
    } finally {
      _$DrawerBoardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateCurrentSketch(Offset offset) {
    final _$actionInfo = _$DrawerBoardStoreBaseActionController.startAction(
        name: 'DrawerBoardStoreBase.updateCurrentSketch');
    try {
      return super.updateCurrentSketch(offset);
    } finally {
      _$DrawerBoardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addSketch(SketchModel sketch) {
    final _$actionInfo = _$DrawerBoardStoreBaseActionController.startAction(
        name: 'DrawerBoardStoreBase.addSketch');
    try {
      return super.addSketch(sketch);
    } finally {
      _$DrawerBoardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void undo() {
    final _$actionInfo = _$DrawerBoardStoreBaseActionController.startAction(
        name: 'DrawerBoardStoreBase.undo');
    try {
      return super.undo();
    } finally {
      _$DrawerBoardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearSketch() {
    final _$actionInfo = _$DrawerBoardStoreBaseActionController.startAction(
        name: 'DrawerBoardStoreBase.clearSketch');
    try {
      return super.clearSketch();
    } finally {
      _$DrawerBoardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sketches: ${sketches},
currentSketch: ${currentSketch},
color: ${color}
    ''';
  }
}
