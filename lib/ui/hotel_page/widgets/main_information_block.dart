import 'package:flutter/material.dart';

import '../../../data/models/hotel_page/hotel.dart';
import '../../global_widgets/carousel_with_indicator.dart';
import '../../global_widgets/layout_widget.dart';
import 'base_information_about_hotel.dart';
import 'price_row_widget.dart';

class MainInformationBlock extends StatelessWidget {
  final Hotel data;

  const MainInformationBlock({
    required this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO: Кешировать картинки
          CarouselWithIndicator(
            images: data.imageUrls,
          ),
          const BaseInformationAboutHotel(),
          PriceRowWidget(
            price: data.minimalPrice,
            description: data.priceForIt,
          ),
        ],
      ),
    );
  }
}
