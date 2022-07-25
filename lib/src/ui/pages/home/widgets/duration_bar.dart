import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:flutter/material.dart';

class DurationBar extends StatelessWidget {
  const DurationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          width: double.infinity,
          color: AppColors.grey.withOpacity(0.5),
          height: responsive.hp(0.5),
        ),
        Container(
          width: responsive.wp(45),
          height: responsive.hp(0.5),
          color: AppColors.white,
          alignment: Alignment.centerRight,
          child: Transform.translate(
            offset: const Offset(10, -10),
            child: const Icon(
              Icons.circle,
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
