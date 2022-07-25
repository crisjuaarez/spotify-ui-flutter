import 'package:flutter/material.dart';

import 'package:app_music/src/domain/models/song.dart';
import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:app_music/src/ui/widgets/my_network_image.dart';

class MiniPlayer extends StatelessWidget {
  const MiniPlayer({
    Key? key,
    required this.song,
    required this.draggableScrollableController,
  }) : super(key: key);

  final Song song;
  final DraggableScrollableController draggableScrollableController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.of(context).hp(10),
      width: double.infinity,
      child: ListTile(
        onTap: () => draggableScrollableController.animateTo(
          1,
          duration: const Duration(milliseconds: 350),
          curve: Curves.ease,
        ),
        leading: MyNetworkImage(
          song.image,
          height: 55,
          width: 55,
        ),
        title: Text(
          '${song.name} · ${song.artistName}',
          style: const TextStyle(
            color: AppColors.white,
          ),
        ),
        trailing: const Icon(
          Icons.play_arrow,
          color: AppColors.white,
        ),
      ),
    );
  }
}
