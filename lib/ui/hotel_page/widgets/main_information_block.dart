import 'package:flutter/material.dart';

import '../../global_widgets/layout_widget.dart';
import '../../theme/text_theme.dart';
import 'base_information_about_hotel.dart';
import 'chips_widget.dart';
import 'price_row_widget.dart';

class MainInformationBlock extends StatelessWidget {
  const MainInformationBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO: Кешировать картинки
          // const CarouselWithIndicator(),
          Container(
            height: 250,
            color: Colors.amber[200],
          ),
          // Text(state.hotel.name),
          const BaseInformationAboutHotel(),
          const PriceRowWidget(
            price: 134673,
            description: 'за тур с перелётом',
          ),
        ],
      ),
    );
  }
}
