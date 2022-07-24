import 'package:flutter/material.dart';
import 'package:app_music/src/ui/theme/app_icons.dart';
import 'package:app_music/src/ui/theme/app_colors.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: false,
      title: const Text('Search'),
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          icon: const Icon(AppIcons.camera, color: AppColors.white),
          onPressed: () => print('camera'),
        ),
      ],
    );
  }
}
