import 'package:flutter/material.dart';

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
        color: Colors.white,
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
