import 'package:flutter/material.dart';

import '../theme/color_scheme.dart';
import 'custom_navigation_button.dart';

class BottomNavigationBlock extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const BottomNavigationBlock({
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: colorScheme.onPrimary),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
          child: CustomNavigationButton(onTap: onTap, title: title),
        ),
      ),
    );
  }
}
