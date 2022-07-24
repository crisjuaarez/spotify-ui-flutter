import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/theme/app_icons.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return SizedBox(
      width: responsive.width,
      child: BottomNavigationBar(
        backgroundColor: Colors.black87,
        unselectedItemColor: AppColors.grey,
        selectedItemColor: AppColors.white,
        currentIndex: 1,
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
            icon: Icon(AppIcons.library),
            label: 'Your library',
          ),
        ],
      ),
    );
  }
}
