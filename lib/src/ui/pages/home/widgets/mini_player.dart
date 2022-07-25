import 'package:flutter/material.dart';

import 'package:app_music/src/domain/models/song.dart';
import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:app_music/src/ui/widgets/my_network_image.dart';

class MiniPlayer extends StatelessWidget {
  const MiniPlayer({
    Key? key,
    required this.song,
  }) : super(key: key);

  final Song song;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Container(
      height: responsive.hp(8.5),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            song.color.withOpacity(0.25),
            song.color.withOpacity(0.20),
          ],
        ),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: responsive.wp(4)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Material(
              elevation: 12,
              child: MyNetworkImage(
                song.image,
                height: responsive.hp(5),
                width: responsive.hp(5),
              ),
            ),
          ),
          SizedBox(width: responsive.wp(2)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                song.name,
                style: TextStyle(fontSize: responsive.dp(2)),
              ),
              Text(
                song.artistName,
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: responsive.dp(1.5),
                ),
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.play_arrow),
        ],
      ),
    );
  }
}
