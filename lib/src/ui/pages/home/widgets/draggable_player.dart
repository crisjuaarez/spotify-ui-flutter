import 'package:flutter/material.dart';
import 'package:app_music/src/domain/models/song.dart';
import 'package:app_music/src/ui/utils/responsive.dart';

import 'full_player.dart';
import 'mini_player.dart';

class DraggablePlayer extends StatelessWidget {
  const DraggablePlayer(this.draggableScrollableController, {Key? key})
      : super(key: key);

  final DraggableScrollableController draggableScrollableController;

  @override
  Widget build(BuildContext context) {
    final Song currentSong = songs.first;
    //Check this responsive class
    final Responsive responsive = Responsive.of(context);

    return DraggableScrollableSheet(
      minChildSize: 0.1,
      initialChildSize: 0.1,
      maxChildSize: 1,
      controller: draggableScrollableController,
      snap: false,
      // expand: false,
      builder: (_, controller) {
        final bool showingMiniPlayer =
            draggableScrollableController.size == 0.1;
        return Container(
          color: showingMiniPlayer ? Colors.black87 : Colors.black,
          child: SingleChildScrollView(
            controller: controller,
            padding: EdgeInsets.symmetric(
              horizontal: responsive.wp(2),
            ),
            child: showingMiniPlayer
                ? MiniPlayer(
                    song: currentSong,
                    draggableScrollableController:
                        draggableScrollableController,
                  )
                : FullPlayer(
                    song: currentSong,
                    draggableScrollableController:
                        draggableScrollableController,
                  ),
          ),
        );
      },
    );
  }
}
