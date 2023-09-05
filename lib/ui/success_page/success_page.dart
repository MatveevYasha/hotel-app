import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hotel_app/ui/hotel_page/hotel_page.dart';
import 'package:hotel_app/ui/theme/text_theme.dart';

import '../global_widgets/bottom_navigation_block.dart';
import '../global_widgets/hotel_app_bar.dart';
import '../theme/color_scheme.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final int randomNumber = Random().nextInt(999999);

    return Scaffold(
      backgroundColor: colorScheme.onPrimary,
      appBar: const HotelAppBar(title: 'Заказ оплачен'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                color: colorScheme.background,
                shape: BoxShape.circle,
              ),
              height: 100,
              width: 100,
              child: const Image(
                image: AssetImage(
                  'assets/color_icons/party_popper.png',
                ),
                height: 44,
                width: 44,
              ),
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
                'Подтверждение заказа №$randomNumber может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
                textAlign: TextAlign.center,
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.secondary,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBlock(
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
