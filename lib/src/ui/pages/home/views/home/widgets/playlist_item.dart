import 'package:flutter/material.dart';

import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:app_music/src/domain/models/playlist.dart';
import 'package:app_music/src/ui/widgets/my_network_image.dart';
import 'package:app_music/src/ui/widgets/responsive_separator.dart';

class PlaylistItem extends StatelessWidget {
  const PlaylistItem(this.playlist, {Key? key}) : super(key: key);

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final double playlistTileHeight = responsive.hp(8);
    return Container(
      width: responsive.wp(40),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
            child: MyNetworkImage(
              playlist.image,
              height: playlistTileHeight,
              width: playlistTileHeight,
            ),
          ),
          const ResponsiveSeparator(widthPercent: 1.5),
          Text(
            playlist.title,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
