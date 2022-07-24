import 'package:flutter/material.dart';

import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:app_music/src/domain/models/playlist.dart';
import 'package:app_music/src/ui/widgets/my_network_image.dart';

import 'widgets/filter_mode_bar.dart';
import 'widgets/library_appbar.dart';
import 'widgets/downloaded_button.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Scaffold(
      appBar: const LibraryAppBar(),
      backgroundColor: AppColors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsive.wp(4)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DownloadedButton(),
            SizedBox(height: responsive.hp(2)),
            const FilterModeBar(),
            SizedBox(height: responsive.hp(2)),
            Expanded(
              child: ListView.builder(
                itemCount: playlists.length,
                padding: const EdgeInsets.only(
                  bottom: kBottomNavigationBarHeight,
                ),
                itemBuilder: (_, i) {
                  final Playlist playlist = playlists[i];
                  return SizedBox(
                    height: responsive.hp(10),
                    child: ListTile(
                      // minLeadingWidth: responsive.hp(10),
                      contentPadding: EdgeInsets.zero,
                      leading: MyNetworkImage(
                        playlist.image,
                        height: responsive.hp(7.5),
                        width: responsive.hp(7.5),
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
