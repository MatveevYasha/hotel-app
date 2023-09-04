import 'package:flutter/material.dart';

import '../../theme/text_theme.dart';
import 'small_button_widget.dart';

class TouristHeaderWidget extends StatelessWidget {
  final String touristName;
  final VoidCallback onTap;
  final IconData icon;

  const TouristHeaderWidget({
    super.key,
    required this.touristName,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              '$touristName турист',
              style: textTheme.bodyMedium,
            ),
            if (touristName == 'Еще один')
              Text(
                'Мы не расчитывали на такое кол-во туристов. Если вы видите это сообщение, напишите нам, чтобы мы сделали наш сервис лучше)',
                style: textTheme.bodySmall?.copyWith(
                  fontSize: 12,
                  color: const Color(0xFF828796),
                ),
              ),
          ],
        ),
        SmallButtonWidget(
          onTap: onTap,
          icon: icon,
        )
      ],
    );
  }
}
