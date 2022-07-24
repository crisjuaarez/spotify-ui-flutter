import 'package:app_music/src/domain/models/genre.dart';
import 'package:flutter/material.dart';

import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:app_music/src/domain/models/playlist.dart';
import 'package:app_music/src/ui/widgets/my_network_image.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final double playlistTileHeight = responsive.hp(8);
    return Container(
      height: responsive.height,
      width: responsive.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.yellow.withOpacity(0.35),
            Colors.black12,
            Colors.black26,
          ],
        ),
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: responsive.wp(4),
          vertical: responsive.hp(4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Good evening',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: responsive.dp(2.5),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_outlined,
                    color: AppColors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.watch_later_outlined,
                    color: AppColors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings_outlined,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: responsive.hp(25),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  mainAxisExtent: playlistTileHeight,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (_, i) {
                  final playlist = playlists[i];
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
                        SizedBox(width: responsive.wp(1.5)),
                        Text(
                          playlist.title,
                          style: const TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Text(
              'Recently played',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: responsive.dp(2.5),
              ),
            ),
            SizedBox(
              height: (responsive.wp(45) + 12) * genres.length / 2 +
                  kBottomNavigationBarHeight,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: responsive.wp(45),
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: genres.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, i) {
                  final genre = genres[i];
                  return MyNetworkImage(
                    genre.image,
                    height: responsive.wp(45),
                    width: responsive.wp(45),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
