import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_app/ui/global_widgets/carousel_with_indicator.dart';

import '../../domain/state/hotel_page_state/hotel_page_state.dart';
import '../booking_page/booking_page.dart';
import '../global_widgets/hotel_app_bar.dart';

class HotelPage extends ConsumerWidget {
  const HotelPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(hotelPageStateProvider);

    if (state.isLoading) {
      return const Material(
        child: Center(
          child: CircularProgressIndicator(
            color: Colors.blue,
          ),
        ),
      );
    }

    if (state.isLoading) {
      return const Material(
        child: Center(
          child: Text('При загрузке данных произошла ошибка'),
        ),
      );
    }

    return Scaffold(
      appBar: const HotelAppBar(title: 'Отель'),
      body: Column(
        children: [
          // Кешировать картинки
          const CarouselWithIndicator(),
          Text(state.hotel.name),
          ElevatedButton(
            onPressed: () {
              // pushReplacement для последнего экрана
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const BookingPage(),
                ),
              );
            },
            child: const Text('To another page'),
          )
        ],
      ),
    );
  }
}
