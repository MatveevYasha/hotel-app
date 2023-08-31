import 'package:flutter/material.dart';
import 'package:hotel_app/ui/common_widgets/carousel_with_indicator.dart';

import '../common_widgets/hotel_app_bar.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HotelAppBar(title: 'Отель'),
      body: Column(
        children: [
          CarouselWithIndicator(),
        ],
      ),
    );
  }
}
