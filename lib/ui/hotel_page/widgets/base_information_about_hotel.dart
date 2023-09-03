import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/state/hotel_page_state/hotel_page_state.dart';
import '../../theme/text_theme.dart';
import 'chips_widget.dart';

class BaseInformationAboutHotel extends ConsumerWidget {
  const BaseInformationAboutHotel({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(hotelPageStateProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 8,
          ),
          child: ChipsWidget(
            title: '${state.hotel.rating} ${state.hotel.ratingName}',
            color: const Color(0xFFFFA800),
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
              state.hotel.adress,
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
