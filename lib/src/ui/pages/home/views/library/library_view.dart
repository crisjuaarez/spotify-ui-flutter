import 'package:app_music/src/domain/models/playlist.dart';
import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/theme/app_icons.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:app_music/src/ui/widgets/my_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black,
        centerTitle: false,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.purple[200],
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: const Text(
                'C',
                style: TextStyle(
                  color: AppColors.black,
                ),
              ),
            ),
            SizedBox(width: responsive.wp(1.5)),
            Text(
              'Your Library',
              style: TextStyle(
                color: AppColors.white,
                fontSize: responsive.dp(3),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(AppIcons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.add),
            iconSize: 30,
          ),
        ],
      ),
      backgroundColor: AppColors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsive.wp(4)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
                side: const BorderSide(width: 0.5, color: AppColors.white),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: -10,
                ),
              ),
              child: Text(
                'Downloaded',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: responsive.dp(1.5),
                ),
              ),
            ),
            SizedBox(height: responsive.hp(2)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Most recent',
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.grid_view_outlined,
                  color: AppColors.white,
                ),
              ],
            ),
            SizedBox(height: responsive.hp(2)),
            Expanded(
              child: ListView.builder(
                itemCount: playlists.length,
                padding:
                    const EdgeInsets.only(bottom: kBottomNavigationBarHeight),
                itemBuilder: (_, i) {
                  final Playlist playlist = playlists[i];
                  return SizedBox(
                    height: responsive.hp(10),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: MyNetworkImage(
                        playlist.image,
                        height: responsive.hp(10),
                        width: responsive.hp(10),
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
                    ),
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
