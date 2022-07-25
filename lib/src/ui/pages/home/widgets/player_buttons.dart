import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class PlayerButtons extends StatelessWidget {
  const PlayerButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double buttonSize = 40;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.swap_calls, size: buttonSize),
        const Icon(Icons.skip_previous, size: buttonSize),
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
            size: buttonSize,
          ),
        ),
        const Icon(Icons.skip_next, size: buttonSize),
        const Icon(Icons.repeat, size: buttonSize),
      ],
    );
  }
}
