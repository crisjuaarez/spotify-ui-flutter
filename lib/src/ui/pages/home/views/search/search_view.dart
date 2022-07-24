// import 'package:flutter/material.dart';

// class SearchView extends StatelessWidget {
//   const SearchView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    
//     return NestedScrollView(
//       physics: const NeverScrollableScrollPhysics(),
//       headerSliverBuilder: (_, __) => [
//         SliverAppBar(
//           centerTitle: false,
//           title: const Text('Search'),
//           elevation: 0,
//           backgroundColor: Colors.transparent,
//           actions: [
//             IconButton(
//               icon: const Icon(AppIcons.camera, color: AppColors.white),
//               onPressed: () => print('camera'),
//             ),
//           ],
//         ),
//       ],
//       body: SafeArea(
//         child: Stack(
//           fit: StackFit.expand,
//           children: [
//             Positioned.fill(
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: responsive.wp(5)),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: responsive.hp(6.5),
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: AppColors.white,
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           const Expanded(
//                             flex: 2,
//                             child: Icon(CupertinoIcons.search),
//                           ),
//                           Expanded(
//                             flex: 8,
//                             child: Text(
//                               'Artists, songs or podcats',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: responsive.dp(2),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: responsive.hp(2)),
//                     Expanded(
//                       child: RawScrollbar(
//                         trackColor: AppColors.grey,
//                         interactive: true,
//                         minThumbLength: 1,
//                         thickness: 5,
//                         crossAxisMargin: 0,
//                         // mainAxisMargin: 20,
//                         trackRadius: const Radius.circular(10),
//                         child: SingleChildScrollView(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Top artists',
//                                 style: TextStyle(
//                                   fontSize: responsive.dp(2),
//                                   color: AppColors.white,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               SizedBox(height: responsive.hp(2)),
//                               SizedBox(
//                                 height: (genreHeight + 12) * genres.length / 2 +
//                                     kBottomNavigationBarHeight,
//                                 child: GridView.builder(
//                                   physics: const NeverScrollableScrollPhysics(),
//                                   gridDelegate:
//                                       SliverGridDelegateWithFixedCrossAxisCount(
//                                     crossAxisCount: 2,
//                                     mainAxisSpacing: 12,
//                                     crossAxisSpacing: 12,
//                                     mainAxisExtent: genreHeight,
//                                   ),
//                                   itemCount: genres.length,
//                                   itemBuilder: (_, i) {
//                                     final Genre genre = genres[i];
//                                     return GenreCardWidget(genre);
//                                   },
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const Positioned(bottom: 0, child: HomeNavBar()),
//           ],
//         ),
//       ),
//     );
//   }
// }
