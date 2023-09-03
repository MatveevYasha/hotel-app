import 'package:flutter/material.dart';

import '../../theme/text_theme.dart';

class CustomTextRowWidget extends StatelessWidget {
  final String leftText;
  final String rightText;
  final bool removeTopPadding;
  final bool removeBottomPadding;

  const CustomTextRowWidget({
    required this.leftText,
    required this.rightText,
    this.removeTopPadding = false,
    this.removeBottomPadding = false,
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              leftText,
              style: textTheme.bodySmall?.copyWith(
                color: const Color(0xFF828796),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              rightText,
              style: textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
