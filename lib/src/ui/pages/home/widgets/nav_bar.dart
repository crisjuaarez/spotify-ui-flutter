import 'package:flutter/material.dart';

import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/theme/app_icons.dart';
import 'package:app_music/src/ui/utils/responsive.dart';

class HomeNavBar extends StatefulWidget {
  const HomeNavBar({Key? key, required this.pageController}) : super(key: key);

  final PageController pageController;

  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final currentIndex = widget.pageController.page == null
        ? 1
        : widget.pageController.page!.toInt();

    return SizedBox(
      width: responsive.width,
      child: BottomNavigationBar(
        backgroundColor: Colors.black87,
        unselectedItemColor: AppColors.grey,
        selectedItemColor: AppColors.white,
        currentIndex: currentIndex,
        onTap: (i) {
          widget.pageController.jumpToPage(i);
          setState(() {});
        },
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
      ),
    );
  }
}
