import 'package:flutter/material.dart';
import 'package:hotel_app/ui/global_widgets/custom_navigation_button.dart';
import 'package:hotel_app/ui/global_widgets/hotel_app_bar.dart';
import 'package:hotel_app/ui/global_widgets/layout_widget.dart';

import '../booking_page/booking_page.dart';
import '../hotel_page/widgets/chips_widget.dart';
import '../hotel_page/widgets/price_row_widget.dart';
import '../theme/text_theme.dart';

class HotelRoomPage extends StatelessWidget {
  final String title;

  const HotelRoomPage({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HotelAppBar(title: title),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 8),
            LayoutWidget(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                  color: Colors.amber[200],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Стандартный с видом на бассейн или сад',
                    style: textTheme.bodyMedium,
                  ),
                ),
                // TODO: wrap and data
                const ChipsWidget(
                  title: 'Все включено',
                  color: Color(0xFF828796),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: ChipsWidget(
                    title: 'Подробнее о номере',
                    // TODO: add color theme
                    color: Color(0xFF0D72FF),
                    hasTrailingIcon: true,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: PriceRowWidget(
                    price: 186600,
                    description: 'за 7 ночей с перелётом',
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: CustomNavigationButton(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const BookingPage(),
                          ),
                        );
                      },
                      title: 'Выбрать номер'),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
