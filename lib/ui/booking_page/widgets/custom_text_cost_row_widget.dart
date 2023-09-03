import 'package:flutter/material.dart';

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
              color: const Color(0xFF828796),
            ),
          ),
          Text(
            rightText,
            style: (costTextIsAccent)
                ? textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF0D72FF),
                  )
                : textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
