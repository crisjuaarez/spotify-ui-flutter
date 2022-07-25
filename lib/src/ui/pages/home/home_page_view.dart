import 'package:flutter/material.dart';

import 'package:app_music/src/ui/theme/app_colors.dart';

import 'views/home/home_view.dart';
import 'views/search/search_view.dart';
import 'views/library/library_view.dart';

import 'widgets/nav_bar.dart';
import 'widgets/draggable_player.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView>
    with TickerProviderStateMixin {
  late PageController _pageCtrl;
  late DraggableScrollableController _draggableScrollableCtrl;

  @override
  void initState() {
    super.initState();
    _pageCtrl = PageController();
    _draggableScrollableCtrl = DraggableScrollableController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageCtrl.dispose();
    _draggableScrollableCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      bottomNavigationBar: HomeNavBar(pageController: _pageCtrl),
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
          DraggablePlayer(_draggableScrollableCtrl),
        ],
      ),
    );
  }
}
