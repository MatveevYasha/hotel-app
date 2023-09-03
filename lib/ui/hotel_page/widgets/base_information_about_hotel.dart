import 'package:flutter/material.dart';

import '../../theme/text_theme.dart';
import 'chips_widget.dart';

class BaseInformationAboutHotel extends StatelessWidget {
  const BaseInformationAboutHotel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 16,
            bottom: 8,
          ),
          child: ChipsWidget(
            title: '5 Превосходно',
            color: Color(0xFFFFA800),
            hasLeadingIcon: true,
          ),
        ),
        Text(
          'Steigenberger Makadi',
          style: textTheme.bodyMedium,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 16,
          ),
          child: GestureDetector(
            onTap: () {},
            child: Text(
              'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
              style: textTheme.titleMedium?.copyWith(
                color: const Color(0xFF0D72FF),
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
