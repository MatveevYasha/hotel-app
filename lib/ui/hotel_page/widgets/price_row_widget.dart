import 'package:flutter/material.dart';

import '../../theme/text_theme.dart';

class PriceRowWidget extends StatelessWidget {
  final int price;
  final String description;

  const PriceRowWidget({
    required this.price,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'от ${'$price'.substring(0, 3)} ${'$price'.substring(3, 6)} ₽',
          style: textTheme.bodyLarge,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            description,
            style: textTheme.bodySmall?.copyWith(
              color: const Color(0xFF828796),
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
