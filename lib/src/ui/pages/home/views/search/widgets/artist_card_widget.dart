import 'package:flutter/material.dart';

import '../../../../../theme/app_colors.dart';
import '../../../../../widgets/my_network_image.dart';
import 'package:app_music/src/domain/models/artist.dart';
import 'package:app_music/src/ui/utils/responsive.dart';

class ArtistCardWidget extends StatelessWidget {
  const ArtistCardWidget(this.artist, {Key? key}) : super(key: key);

  final Artist artist;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        height: responsive.hp(20),
        width: responsive.wp(40),
        decoration: BoxDecoration(
          // color: artist.color,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              artist.color,
              artist.color.withOpacity(0.95),
              artist.color.withOpacity(0.9),
              artist.color.withOpacity(0.85),
              artist.color.withOpacity(0.80),
              artist.color.withOpacity(0.75),
              artist.color.withOpacity(0.70),
            ],
          ),
        ),
        child: Stack(children: [
          Positioned(
            left: 12,
            top: 12,
            child: Text(
              artist.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.white,
                fontSize: responsive.dp(2),
              ),
            ),
          ),
          Positioned(
            right: -responsive.wp(5),
            bottom: -responsive.hp(1),
            child: Transform.rotate(
              angle: 0.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Material(
                  elevation: 12,
                  child: MyNetworkImage(
                    artist.image,
                    height: responsive.hp(10),
                    width: responsive.hp(10),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
