import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class PlayerButtons extends StatelessWidget {
  const PlayerButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.swap_calls, color: AppColors.white, size: 30),
        const Icon(
          Icons.skip_previous,
          color: AppColors.white,
          size: 30,
        ),
        Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.play_arrow,
            color: AppColors.black,
            size: 30,
          ),
        ),
        const Icon(
          Icons.skip_next,
          color: AppColors.white,
          size: 30,
        ),
        const Icon(
          Icons.repeat,
          color: AppColors.white,
          size: 30,
        ),
      ],
    );
  }
}
