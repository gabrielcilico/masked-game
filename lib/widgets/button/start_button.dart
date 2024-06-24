import 'package:flutter/material.dart';
import 'package:masked_game/design/theme/palette.dart';
import 'package:masked_game/design/theme/text_styles.dart';

class StartButton extends StatelessWidget {
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final String text;
  final Function() onPressed;

  const StartButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.suffixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: const LinearGradient(
            colors: [
              Palette.buttonStart1,
              Palette.buttonStartBorder,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixIcon != null)
              Icon(
                prefixIcon,
                color: Palette.white,
              ),
            Text(
              text,
              style: GloriaHallelujah()
                  .textXS
                  .regular
                  .copyWith(color: Palette.white),
            ),
            if (suffixIcon != null)
              Icon(
                suffixIcon,
                color: Palette.white,
              ),
          ],
        ),
      ),
    );
  }
}
