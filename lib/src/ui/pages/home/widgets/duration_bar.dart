import 'package:app_music/src/ui/theme/app_colors.dart';
import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:app_music/src/ui/widgets/responsive_separator.dart';
import 'package:flutter/material.dart';

class DurationBar extends StatelessWidget {
  const DurationBar({Key? key, required this.duration}) : super(key: key);
  final String duration;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Column(
      children: [
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              width: double.infinity,
              color: AppColors.grey.withOpacity(0.5),
              height: responsive.hp(0.5),
            ),
            Container(
              width: responsive.wp(10),
              height: responsive.hp(0.5),
              color: AppColors.white,
              alignment: Alignment.centerRight,
              child: Transform.translate(
                offset: const Offset(10, -10),
                child: const Icon(Icons.circle, color: AppColors.white),
              ),
            ),
          ],
        ),
        const ResponsiveSeparator(heightPercent: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('0:27'),
            Text(duration),
          ],
        ),
      ],
    );
  }
}
