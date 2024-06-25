import 'package:flutter/cupertino.dart';
import 'package:masked_game/design/theme/palette.dart';
import 'package:masked_game/models/sketch_model.dart';
import 'package:mobx/mobx.dart';

part 'drawer_board_store.g.dart';

class DrawerBoardStore = DrawerBoardStoreBase with _$DrawerBoardStore;

abstract class DrawerBoardStoreBase with Store {
  @observable
  ObservableList<SketchModel> sketches = ObservableList<SketchModel>();

  @observable
  Observable<SketchModel?> currentSketch = Observable(null);

  @observable
  Color color = Palette.player1;

  @action
  void startDrawing(Color newColor) {
    color = newColor;
  }

  @action
  void init(Offset offset) {
    currentSketch = Observable(
      SketchModel(color: color, points: [offset], autorId: '1'),
    );
  }

  @action
  void onMove(Offset offset) {
    updateCurrentSketch(offset);
  }

  @action
  void onEnd(Offset offset) {
    updateCurrentSketch(offset);
    addSketch(currentSketch.value!);
    currentSketch = Observable(null);
  }

  @action
  void updateCurrentSketch(Offset offset) {
    var currentSketchCopy = currentSketch.value;
    if (currentSketchCopy != null) {
      currentSketchCopy.points.add(offset);
      currentSketch = Observable(currentSketchCopy);
    }
  }

  @action
  void addSketch(SketchModel sketch) {
    var sketchesCopy = [...sketches, sketch];
    sketches = ObservableList.of(sketchesCopy);
  }

  @action
  void undo() {
    if (sketches.isNotEmpty && sketches.last.autorId == '1') {
      var sketchesCopy = sketches.toList();
      sketchesCopy.removeLast();
      sketches = ObservableList.of(sketchesCopy);
    }
  }

  @action
  void clearSketch() {
    sketches.clear();
  }
}
