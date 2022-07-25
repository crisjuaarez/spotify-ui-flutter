import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/theme/app_icons.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:flutter/material.dart';

class LibraryAppBar extends StatelessWidget with PreferredSizeWidget {
  const LibraryAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return AppBar(
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
            child: const Text('C', style: TextStyle(color: AppColors.black)),
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
          icon: const Icon(AppIcons.add),
          iconSize: 30,
        ),
      ],
    );
  }
}
