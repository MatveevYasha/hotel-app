import 'package:flutter/material.dart';

import '../../theme/text_theme.dart';

class CategoryButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData? icon;

  const CategoryButton({
    required this.title,
    this.subtitle = 'Самое необходимое',
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Icon(
            icon,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: textTheme.titleMedium,
                  ),
                  Text(
                    subtitle,
                    style: textTheme.titleMedium?.copyWith(
                      fontSize: 14,
                      color: const Color(0xFF828796),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}
