import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';
import '../../../widgets/my_network_image.dart';
import 'package:app_music/src/domain/models/genre.dart';
import 'package:app_music/src/ui/utils/responsive.dart';

class GenreCardWidget extends StatelessWidget {
  const GenreCardWidget(this.genre, {Key? key}) : super(key: key);

  final Genre genre;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        height: responsive.hp(20),
        width: responsive.wp(40),
        decoration: BoxDecoration(
          // color: genre.color,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              genre.color,
              genre.color.withOpacity(0.95),
              genre.color.withOpacity(0.9),
              genre.color.withOpacity(0.85),
              genre.color.withOpacity(0.80),
              genre.color.withOpacity(0.75),
              genre.color.withOpacity(0.70),
            ],
          ),
        ),
        child: Stack(children: [
          Positioned(
            left: 12,
            top: 12,
            child: Text(
              genre.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.white,
                fontSize: responsive.dp(2.25),
              ),
            ),
          ),
          Positioned(
            right: -20,
            bottom: -1,
            child: Transform.rotate(
              angle: 0.5,
              child: Material(
                elevation: 12,
                child: MyNetworkImage(
                  genre.image,
                  height: responsive.hp(12),
                  width: responsive.hp(12),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
