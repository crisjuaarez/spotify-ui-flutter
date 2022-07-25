import 'package:app_music/src/ui/widgets/responsive_separator.dart';
import 'package:flutter/material.dart';

import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:app_music/src/domain/models/playlist.dart';

import 'widgets/filter_mode_bar.dart';
import 'widgets/library_appbar.dart';
import 'widgets/downloaded_button.dart';
import 'widgets/playlist_tile.dart';

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
            //
            const ResponsiveSeparator(heightPercent: 2),
            //
            const FilterModeBar(),
            //
            const ResponsiveSeparator(heightPercent: 2),
            //
            Expanded(
              child: ListView.builder(
                itemCount: playlists.length,
                padding: const EdgeInsets.only(
                  bottom: kBottomNavigationBarHeight,
                ),
                itemBuilder: (_, i) {
                  final Playlist playlist = playlists[i];
                  return PlaylistTile(playlist);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
