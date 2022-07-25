import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_music/src/domain/models/song.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:app_music/src/ui/pages/home/home_provider.dart';

import 'full_player.dart';
import 'mini_player.dart';

class DraggablePlayer extends StatelessWidget {
  const DraggablePlayer({Key? key}) : super(key: key);

  // final DraggableScrollableController draggableScrollableController;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final HomeProvider homeProvider = context.read<HomeProvider>();
    final draggableScrollableController = homeProvider.draggableScrollableCtrl;
    final Song currentSong = songs.first;
    const double minDraggableSize = 0.1;

    return DraggableScrollableSheet(
      snap: true,
      maxChildSize: 1,
      minChildSize: minDraggableSize,
      initialChildSize: minDraggableSize,
      controller: draggableScrollableController,
      snapSizes: const [0.1],
      // expand: false,
      builder: (_, controller) {
        final bool showingMiniPlayer =
            draggableScrollableController.size == minDraggableSize;
        return Container(
          color: Colors.black.withOpacity(showingMiniPlayer ? 0.95 : 0.99),
          margin: EdgeInsets.symmetric(
            horizontal: responsive.wp(showingMiniPlayer ? 4 : 0),
          ),
          child: SingleChildScrollView(
            controller: controller,
            padding: EdgeInsets.zero,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: showingMiniPlayer
                  ? GestureDetector(
                      child: MiniPlayer(song: currentSong),
                      onTap: () => homeProvider.animatePlayerSheetTo(1),
                    )
                  : FullPlayer(
                      song: currentSong,
                      onBackButtonTap: () =>
                          homeProvider.animatePlayerSheetTo(0.1),
                    ),
            ),
          ),
        );
      },
    );
  }

  // void _animateTo(double size) async {
  //   final provider = context.read<HomeProvider>();
  //   final controller = provider.draggableScrollableCtrl;
  //   await controller.animateTo(
  //     size,
  //     duration: const Duration(milliseconds: 250),
  //     curve: Curves.linear,
  //   );
  //   if (controller.size > 0.1) {
  //     if (!provider.isDraggableExpanded) {
  //       provider.toggleDraggableExpand(value: true);
  //     }
  //   } else {
  //     provider.toggleDraggableExpand(value: false);
  //   }
  // }
}
