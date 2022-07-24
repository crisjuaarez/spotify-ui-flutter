import 'package:flutter/material.dart';

import 'package:app_music/src/domain/models/genre.dart';
import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/utils/responsive.dart';

import 'genre_card_widget.dart';

class GridSearchArtist extends StatelessWidget {
  const GridSearchArtist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final double genreHeight = responsive.hp(15);
    final double gridHeight =
        (genreHeight + 12) * genres.length / 2 + kBottomNavigationBarHeight;
    return Expanded(
      child: RawScrollbar(
        trackColor: AppColors.grey,
        interactive: true,
        minThumbLength: 1,
        thickness: 5,
        crossAxisMargin: 0,
        trackRadius: const Radius.circular(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Top artists',
                style: TextStyle(
                  fontSize: responsive.dp(2),
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: responsive.hp(2)),
              SizedBox(
                height: gridHeight,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    mainAxisExtent: genreHeight,
                  ),
                  itemCount: genres.length,
                  itemBuilder: (_, i) => GenreCardWidget(genres[i]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
