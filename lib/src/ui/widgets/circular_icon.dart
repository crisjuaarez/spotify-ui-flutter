import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(12.0),
        height: 35,
        width: 35,
        decoration:
            BoxDecoration(color: AppColors.grey, shape: BoxShape.circle),
        child: Icon(icon, color: Colors.black),
      ),
    );
  }
}
