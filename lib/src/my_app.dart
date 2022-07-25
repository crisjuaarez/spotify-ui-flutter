import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/theme/app_colors.dart';
import 'ui/pages/home/home_page_view.dart';
import 'ui/pages/home/home_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music App',
      home: ChangeNotifierProvider(
        create: (_) => HomeProvider(),
        child: const HomePageView(),
      ),
      theme: ThemeData.dark().copyWith(
        iconTheme: const IconThemeData(color: AppColors.white),
      ),
    );
  }
}
