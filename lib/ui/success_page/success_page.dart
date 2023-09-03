import 'package:flutter/material.dart';
import 'package:hotel_app/ui/hotel_page/hotel_page.dart';
import 'package:hotel_app/ui/theme/text_theme.dart';

import '../global_widgets/bottom_navigation_block.dart';
import '../global_widgets/hotel_app_bar.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const HotelAppBar(title: 'Заказ оплачен'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Spacer(),
            Container(
              decoration: const BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
              height: 100,
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Text(
                'Ваш заказ принят в работу',
                style: textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
                style: textTheme.bodySmall?.copyWith(
                  color: const Color(0xFF828796),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBlock(
        // TODO: removeback button to hotel page
        title: 'Супер!',
        onTap: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const HotelPage(),
            ),
          );
        },
      ),
    );
  }
}
