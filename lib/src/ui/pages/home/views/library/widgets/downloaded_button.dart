import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:flutter/material.dart';

class DownloadedButton extends StatelessWidget {
  const DownloadedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: const StadiumBorder(),
        side: const BorderSide(width: 0.5, color: AppColors.white),
        padding: const EdgeInsets.symmetric(horizontal: 12),
      ),
      child: Text(
        'Downloaded',
        style: TextStyle(
          color: AppColors.white,
          fontSize: Responsive.of(context).dp(1.5),
        ),
      ),
    );
  }
}
