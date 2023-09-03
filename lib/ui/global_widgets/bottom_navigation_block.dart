import 'package:flutter/material.dart';

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
      decoration: const BoxDecoration(color: Colors.white),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
          child: CustomNavigationButton(onTap: onTap, title: title),
        ),
      ),
    );
  }
}
