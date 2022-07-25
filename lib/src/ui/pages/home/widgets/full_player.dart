import 'package:flutter/material.dart';

import 'package:app_music/src/domain/models/song.dart';
import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:app_music/src/ui/widgets/my_network_image.dart';

import 'duration_bar.dart';
import 'player_buttons.dart';

class FullPlayer extends StatelessWidget {
  const FullPlayer({
    Key? key,
    required this.draggableScrollableController,
    required this.song,
  }) : super(key: key);

  final Song song;
  final DraggableScrollableController draggableScrollableController;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsive.wp(4)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.keyboard_arrow_down,
                size: 40,
                color: AppColors.white,
              ),
              onPressed: () => draggableScrollableController.animateTo(
                0.1,
                duration: const Duration(milliseconds: 350),
                curve: Curves.linear,
              ),
            ),
            SizedBox(height: responsive.hp(4)),
            MyNetworkImage(song.image, height: responsive.hp(45)),
            SizedBox(height: responsive.hp(4)),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                song.name,
                style: TextStyle(
                  fontSize: responsive.dp(3),
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
              subtitle: Text(
                song.artistName,
                style: TextStyle(
                  fontSize: responsive.dp(2),
                  color: AppColors.grey,
                ),
              ),
              trailing: const Icon(Icons.favorite, color: AppColors.green),
            ),
            SizedBox(height: responsive.hp(4)),
            const DurationBar(),
            SizedBox(height: responsive.hp(2)),
            const PlayerButtons(),
          ],
        ),
      ),
    );
  }
}
