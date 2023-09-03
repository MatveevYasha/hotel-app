import 'package:flutter/material.dart';
import 'package:hotel_app/ui/global_widgets/layout_widget.dart';

import '../../../resources/resources.dart';
import '/data/models/hotel_page/about_the_hotel.dart';
import '../../theme/text_theme.dart';
import 'category_button.dart';
import 'chips_widget.dart';

class DetailInformationBlock extends StatelessWidget {
  final AboutTheHotel data;

  const DetailInformationBlock({
    required this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'Об отеле',
              style: textTheme.bodyMedium,
            ),
          ),
          Wrap(
            children: data.peculiarities
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(right: 8, bottom: 8),
                    child: ChipsWidget(
                      title: e,
                      color: const Color(0xFF828796),
                    ),
                  ),
                )
                .toList(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 16),
            child: Text(
              data.description,
              style: textTheme.bodySmall,
            ),
          ),
          DecoratedBox(
            decoration: const BoxDecoration(
              color: Color(0xFFF6F6F9),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const CategoryButton(
                    title: 'Удобства',
                    iconName: SvgIcons.emojiHappy,
                  ),
                  Padding(
                    // TODO: Попробовать использовать ключ
                    padding: const EdgeInsets.only(left: 32),
                    child: Divider(
                      color: const Color(0xFF828796).withOpacity(0.15),
                    ),
                  ),
                  const CategoryButton(
                    title: 'Что включено',
                    iconName: SvgIcons.tickSquare,
                  ),
                  Padding(
                    // TODO: Попробовать использовать ключ
                    padding: const EdgeInsets.only(left: 32),
                    child: Divider(
                      color: const Color(0xFF828796).withOpacity(0.15),
                    ),
                  ),
                  const CategoryButton(
                    title: 'Что не включено',
                    iconName: SvgIcons.closeSquare,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
