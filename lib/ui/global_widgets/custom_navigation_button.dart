import 'package:flutter/material.dart';

import '../theme/text_theme.dart';

class CustomNavigationButton extends StatelessWidget {
  const CustomNavigationButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onTap,
      style: const ButtonStyle(
        // TODO: Поменять бордер радиус
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 16),
        ),
        backgroundColor: MaterialStatePropertyAll(
          Color(0xFF0D72FF),
        ),
      ),
      child: Text(
        title,
        style: textTheme.titleMedium,
      ),
    );
  }
}
