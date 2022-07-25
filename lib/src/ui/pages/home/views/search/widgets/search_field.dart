import 'package:flutter/material.dart';

import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/theme/app_icons.dart';
import 'package:app_music/src/ui/utils/responsive.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
      height: responsive.hp(6),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Expanded(
            flex: 2,
            child: Icon(AppIcons.search, color: AppColors.black),
          ),
          Expanded(
            flex: 8,
            child: Text(
              'Artists, songs or podcats',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: responsive.dp(2),
                color: AppColors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
