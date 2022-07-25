// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:app_music/src/domain/models/artist.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:app_music/src/ui/widgets/my_network_image.dart';
import 'package:app_music/src/ui/widgets/responsive_separator.dart';

class WhatToListenList extends StatelessWidget {
  const WhatToListenList(
      {Key? key, required this.artists, required this.playlistTitle})
      : super(key: key);

  final List<Artist> artists;
  final String playlistTitle;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          playlistTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: responsive.dp(2.5),
          ),
        ),
        const ResponsiveSeparator(heightPercent: 1),
        SizedBox(
          height: responsive.wp(35),
          width: responsive.width,
          child: ListView.separated(
            itemCount: this.artists.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (_, i) {
              final Artist artist = this.artists[i];
              return MyNetworkImage(
                artist.image,
                height: responsive.wp(35),
                width: responsive.wp(35),
              );
            },
            separatorBuilder: (_, __) =>
                const ResponsiveSeparator(widthPercent: 3),
          ),
        ),
      ],
    );
  }
}
