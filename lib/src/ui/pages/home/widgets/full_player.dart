import 'package:flutter/material.dart';

import 'package:app_music/src/domain/models/song.dart';

import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:app_music/src/ui/widgets/my_network_image.dart';
import 'package:app_music/src/ui/widgets/responsive_separator.dart';

import 'close_player_sheet_button.dart';
import 'duration_bar.dart';
import 'player_buttons.dart';
import 'song_detail_fav.dart';

class FullPlayer extends StatelessWidget {
  const FullPlayer({
    Key? key,
    required this.song,
    required this.onBackButtonTap,
  }) : super(key: key);

  final Song song;
  final VoidCallback onBackButtonTap;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final double imageSize = responsive.hp(50);
    return Container(
      height: responsive.height,
      padding: EdgeInsets.symmetric(horizontal: responsive.wp(8)),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            song.color.withOpacity(0.60),
            song.color.withOpacity(0.50),
            song.color.withOpacity(0.40),
            song.color.withOpacity(0.30),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //
          ClosePlayerSheetButton(onBackButtonTap: onBackButtonTap),
          //
          const ResponsiveSeparator(heightPercent: 2),
          //
          MyNetworkImage(song.image, height: imageSize, width: imageSize),
          //
          const ResponsiveSeparator(heightPercent: 4),
          //
          SongDetailFav(song),
          //
          const ResponsiveSeparator(heightPercent: 3),
          //
          DurationBar(duration: song.duration),
          //
          const ResponsiveSeparator(heightPercent: 4),
          //
          const PlayerButtons(),
        ],
      ),
    );
  }
}
