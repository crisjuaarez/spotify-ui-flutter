import 'package:flutter/material.dart';

import 'package:app_music/src/domain/models/artist.dart';
import 'package:app_music/src/domain/models/playlist.dart';

import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:app_music/src/ui/widgets/responsive_separator.dart';

import 'widgets/home_appbar.dart';
import 'widgets/playlist_item.dart';
import 'widgets/what_to_listen_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final double playlistTileHeight = responsive.hp(8);

    List<Artist> artistsShuffle = [...artists];
    artistsShuffle.shuffle();

    return Container(
      height: responsive.height,
      width: responsive.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.yellow.withOpacity(0.50),
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
        child: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppBar(),
              //Playlists Grid
              SizedBox(
                height: responsive.hp(20),
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
                    final Playlist playlist = playlists[i];
                    return PlaylistItem(playlist);
                  },
                ),
              ),
              const WhatToListenList(
                artists: artists,
                playlistTitle: 'Recently played',
              ),
              const ResponsiveSeparator(heightPercent: 2),
              WhatToListenList(
                artists: artistsShuffle,
                playlistTitle: 'Your top mixes',
              ),
              const ResponsiveSeparator(heightPercent: 2),
              WhatToListenList(
                artists: artists.reversed.toList(),
                playlistTitle: 'For you',
              ),
              const SizedBox(height: kBottomNavigationBarHeight),
            ],
          ),
        ),
      ),
    );
  }
}
