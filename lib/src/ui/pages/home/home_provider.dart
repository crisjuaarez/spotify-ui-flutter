import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  bool isDraggableExpanded = false;

  void toggleDraggableExpand({bool? value}) {
    (value != null)
        ? isDraggableExpanded = value
        : isDraggableExpanded = !isDraggableExpanded;
    notifyListeners();
  }

  late DraggableScrollableController draggableScrollableCtrl;

  void animatePlayerSheetTo(double size) async {
    final controller = draggableScrollableCtrl;
    await controller.animateTo(
      size,
      duration: const Duration(milliseconds: 250),
      curve: Curves.linear,
    );
    if (controller.size > 0.1) {
      if (!isDraggableExpanded) toggleDraggableExpand(value: true);
    } else {
      toggleDraggableExpand(value: false);
    }
  }

  late PageController pageCtrl;

  void jumpToView(int index) {
    pageCtrl.jumpToPage(index);
    notifyListeners();
  }

  void initProvider() {
    pageCtrl = PageController();
    draggableScrollableCtrl = DraggableScrollableController()
      ..addListener(() {
        //Listener to know when to hide de bottomNavBar

        if (draggableScrollableCtrl.size == 0.1) {
          if (isDraggableExpanded) toggleDraggableExpand(value: false);
        } else {
          if (!isDraggableExpanded) toggleDraggableExpand(value: true);
        }
      });
  }

  void disposeProvider() {
    pageCtrl.dispose();
    draggableScrollableCtrl.dispose();
  }
}
