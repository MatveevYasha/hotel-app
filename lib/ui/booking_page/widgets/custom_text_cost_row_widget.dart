import 'package:flutter/material.dart';
import 'package:hotel_app/ui/theme/color_scheme.dart';

import '../../theme/text_theme.dart';

class CustomTextCostRowWidget extends StatelessWidget {
  final String leftText;
  final String rightText;
  final bool removeTopPadding;
  final bool removeBottomPadding;
  final bool costTextIsAccent;

  const CustomTextCostRowWidget({
    required this.leftText,
    required this.rightText,
    this.removeTopPadding = false,
    this.removeBottomPadding = false,
    this.costTextIsAccent = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: (removeTopPadding) ? 0 : 8,
        bottom: (removeBottomPadding) ? 0 : 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: textTheme.bodySmall?.copyWith(
              color: colorScheme.secondary,
            ),
          ),
          Text(
            rightText,
            style: (costTextIsAccent)
                ? textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: colorScheme.primary,
                  )
                : textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
