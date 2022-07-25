import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:flutter/material.dart';

class FilterModeBar extends StatelessWidget {
  const FilterModeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.swap_vert,
          color: AppColors.white,
        ),
        SizedBox(width: Responsive.of(context).wp(1.5)),
        const Text(
          'Most recent',
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.grid_view_outlined,
          color: AppColors.white,
        ),
      ],
    );
  }
}
