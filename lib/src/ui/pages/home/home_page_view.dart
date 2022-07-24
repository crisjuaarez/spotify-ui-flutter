import 'package:flutter/material.dart';

import 'package:app_music/src/ui/theme/app_colors.dart';

import 'widgets/nav_bar.dart';
import 'views/home/home_view.dart';
import 'views/search/search_view.dart';
import 'views/library/library_view.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  late PageController _pageCtrl;

  @override
  void initState() {
    super.initState();
    _pageCtrl = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          PageView(
            controller: _pageCtrl,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              HomeView(),
              SearchView(),
              LibraryView(),
            ],
          ),
          //BottomNavigationBar right here for the transparency
          Positioned(bottom: 0, child: HomeNavBar(pageController: _pageCtrl)),
        ],
      ),
    );
  }
}
