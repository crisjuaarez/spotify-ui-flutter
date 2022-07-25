import 'package:app_music/src/ui/utils/responsive.dart';
import 'package:flutter/material.dart';

class ClosePlayerSheetButton extends StatelessWidget {
  const ClosePlayerSheetButton({Key? key, required this.onBackButtonTap})
      : super(key: key);
  final VoidCallback onBackButtonTap;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Transform.translate(
          offset: Offset(-Responsive.of(context).wp(4), 0),
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(Icons.keyboard_arrow_down, size: 40),
            onPressed: onBackButtonTap,
          ),
        ),
      ),
    );
  }
}
