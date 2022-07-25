import 'package:app_music/src/domain/models/playlist.dart';
import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:app_music/src/ui/widgets/my_network_image.dart';
import 'package:flutter/material.dart';

class PlaylistTile extends StatelessWidget {
  const PlaylistTile(this.playlist, {Key? key}) : super(key: key);
  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    final imageSize = Responsive.of(context).hp(7.5);
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: MyNetworkImage(
        playlist.image,
        height: imageSize,
        width: imageSize,
      ),
      title: Text(
        playlist.title,
        style: const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        playlist.description,
        style: TextStyle(
          color: AppColors.grey,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
