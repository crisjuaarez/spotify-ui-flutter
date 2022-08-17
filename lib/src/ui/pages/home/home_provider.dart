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

  //Close or open the player draggable scrollable sheet
  void animatePlayerSheetTo(double size) async {
    await draggableScrollableCtrl.animateTo(
      size,
      duration: const Duration(milliseconds: 250),
      curve: Curves.linear,
    );
    if (draggableScrollableCtrl.size > 0.1) {
      if (!isDraggableExpanded) toggleDraggableExpand(value: true);
    } else {
      toggleDraggableExpand(value: false);
    }
  }

  late PageController pageCtrl;

  //BottomNavBar navigation
  void jumpToView(int index) {
    pageCtrl.jumpToPage(index);
    notifyListeners();
  }

  //Init controllers and adding Listener to know when to hide de bottomNavBar
  void initProvider() {
    pageCtrl = PageController();
    draggableScrollableCtrl = DraggableScrollableController()
      ..addListener(() {
        if (draggableScrollableCtrl.size == 0.1) {
          if (isDraggableExpanded) toggleDraggableExpand(value: false);
        } else {
          if (!isDraggableExpanded) toggleDraggableExpand(value: true);
        }
      });
  }

  //Dispose controllers
  void disposeProvider() {
    pageCtrl.dispose();
    draggableScrollableCtrl.dispose();
  }
}
