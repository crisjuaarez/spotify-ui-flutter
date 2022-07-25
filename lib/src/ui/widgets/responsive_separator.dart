import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:flutter/material.dart';

class ResponsiveSeparator extends StatelessWidget {
  const ResponsiveSeparator({
    Key? key,
    this.heightPercent,
    this.widthPercent,
  }) : super(key: key);

  final double? heightPercent, widthPercent;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return SizedBox(
      height: responsive.hp(heightPercent ?? 0),
      width: responsive.wp(widthPercent ?? 0),
    );
  }
}
