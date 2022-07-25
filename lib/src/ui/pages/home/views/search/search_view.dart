import 'package:app_music/src/ui/widgets/responsive_separator.dart';
import 'package:flutter/material.dart';

import 'package:app_music/src/ui/utils/responsive.dart';

import 'widgets/grid_search_artist.dart';
import 'widgets/search_appbar.dart';
import 'widgets/search_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return SafeArea(
      child: NestedScrollView(
        physics: const NeverScrollableScrollPhysics(),
        headerSliverBuilder: (_, __) => [const SearchAppBar()],
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: responsive.wp(5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SearchField(),
              ResponsiveSeparator(heightPercent: 2),
              GridSearchArtist(),
            ],
          ),
        ),
      ),
    );
  }
}
