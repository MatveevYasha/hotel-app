import 'package:flutter/material.dart';

import '../theme/color_scheme.dart';

class LayoutWidget extends StatelessWidget {
  final Widget child;

  const LayoutWidget({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          width: double.infinity,
          child: child,
        ),
      ),
    );
  }
}
