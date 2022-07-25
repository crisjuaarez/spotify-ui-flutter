import 'package:app_music/src/domain/models/song.dart';
import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:flutter/material.dart';

class SongDetailFav extends StatelessWidget {
  const SongDetailFav(this.song, {Key? key}) : super(key: key);
  final Song song;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              song.name,
              style: TextStyle(
                fontSize: responsive.dp(3),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              song.artistName,
              style: TextStyle(
                color: AppColors.grey,
                fontSize: responsive.dp(2),
              ),
            ),
          ],
        ),
        const Spacer(),
        const Icon(Icons.favorite, color: AppColors.green),
      ],
    );
  }
}
