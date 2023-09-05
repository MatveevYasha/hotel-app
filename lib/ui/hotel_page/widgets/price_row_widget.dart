import 'package:flutter/material.dart';

import '../../../resources/helper.dart';
import '../../theme/color_scheme.dart';
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
          'от ${converAmount(price)} ₽',
          style: textTheme.bodyLarge,
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              description,
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.secondary,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
