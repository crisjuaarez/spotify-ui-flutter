import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/theme/app_icons.dart';
import 'package:app_music/src/ui/pages/home/home_provider.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (_, provider, __) {
        final int currentIndex = provider.pageCtrl.page == null
            ? 0
            : provider.pageCtrl.page!.toInt();
        return provider.isDraggableExpanded
            ? const SizedBox.shrink()
            : BottomNavigationBar(
                backgroundColor: Colors.black87,
                unselectedItemColor: AppColors.grey,
                selectedItemColor: AppColors.white,
                currentIndex: currentIndex,
                onTap: provider.jumpToView,
                elevation: 0,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(AppIcons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(AppIcons.search),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.playlist_add_check_rounded),
                    label: 'Your library',
                  ),
                ],
              );
      },
    );
  }
}
