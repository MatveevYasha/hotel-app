import 'package:flutter/material.dart';
import 'package:hotel_app/ui/theme/text_theme.dart';

class ChipsWidget extends StatelessWidget {
  final String title;
  final Color color;
  final bool hasLeadingIcon;
  final bool hasTrailingIcon;

  const ChipsWidget({
    required this.title,
    required this.color,
    this.hasLeadingIcon = false,
    this.hasTrailingIcon = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (hasLeadingIcon)
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Icon(
                  Icons.star,
                  color: color,
                ),
              ),
            Text(
              title,
              style: textTheme.titleMedium?.copyWith(color: color),
            ),
            if (hasTrailingIcon)
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Icon(
                  Icons.chevron_right,
                  color: color,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
