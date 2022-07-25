import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_music/src/ui/theme/app_colors.dart';

import 'home_provider.dart';
import 'views/home/home_view.dart';
import 'views/search/search_view.dart';
import 'views/library/library_view.dart';

import 'widgets/draggable_player.dart';
import 'widgets/nav_bar.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  void initState() {
    super.initState();
    context.read<HomeProvider>().initProvider();
  }

  @override
  void dispose() {
    super.dispose();
    context.read<HomeProvider>().disposeProvider();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      bottomNavigationBar: const HomeNavBar(),
      body: Stack(
        children: [
          PageView(
            controller: context.read<HomeProvider>().pageCtrl,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              HomeView(),
              SearchView(),
              LibraryView(),
            ],
          ),
          const DraggablePlayer(),
        ],
      ),
      //Other way for the player
      // bottomSheet: GestureDetector(
      //   onVerticalDragStart: (details) => _showFullPlayerSheet(context),
      //   onTap: () => _showFullPlayerSheet(context),
      //   child: MiniPlayer(song: songs.first),
      // ),
    );
  }

  // void _showFullPlayerSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     isScrollControlled: true,
  //     context: context,
  //     enableDrag: true,
  //     backgroundColor: Colors.black,
  //     builder: (_) => FullPlayer(
  //       song: songs.first,
  //       onBackButtonTap: () => Navigator.pop(context),
  //     ),
  //   );
  // }
}
