import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class MyNetworkImage extends StatelessWidget {
  const MyNetworkImage(
    this.url, {
    Key? key,
    required this.height,
    this.width = double.infinity,
  }) : super(key: key);

  final String url;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      height: height,
      width: width,
      fit: BoxFit.cover,
      loadingBuilder: (_, child, progress) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 350),
        child: progress?.cumulativeBytesLoaded == progress?.expectedTotalBytes
            ? child
            : Container(
                width: width,
                height: height,
                color: AppColors.darkGrey,
                child: const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
      ),
    );
  }
}
