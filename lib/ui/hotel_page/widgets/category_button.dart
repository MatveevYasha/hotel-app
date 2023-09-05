import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/color_scheme.dart';
import '../../theme/text_theme.dart';

class CategoryButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final String iconName;

  const CategoryButton({
    required this.title,
    this.subtitle = 'Самое необходимое',
    required this.iconName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          SvgPicture.asset(
            iconName,
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
                      color: colorScheme.secondary,
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
