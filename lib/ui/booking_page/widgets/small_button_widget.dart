import 'package:flutter/material.dart';

class SmallButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final bool fill;
  final IconData icon;

  const SmallButtonWidget({
    required this.onTap,
    required this.icon,
    this.fill = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF0D72FF).withOpacity((fill) ? 1 : 0.2),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(
            icon,
            color: (fill) ? Colors.white : const Color(0xFF0D72FF),
          ),
        ),
      ),
    );
  }
}
