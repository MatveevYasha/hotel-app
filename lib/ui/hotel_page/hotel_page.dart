import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/state/hotel_page_state/hotel_page_state.dart';
import '../hotel_room_page/hotel_room_page.dart';
import '../global_widgets/bottom_navigation_block.dart';
import '../global_widgets/hotel_app_bar.dart';
import 'widgets/detail_information_block.dart';
import 'widgets/main_information_block.dart';

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
      appBar: const HotelAppBar(
        title: 'Отель',
        addBackButton: false,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          color: Color(0xFFF6F6F9),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainInformationBlock(
                data: state.hotel,
              ),
              const SizedBox(height: 8),
              DetailInformationBlock(
                data: state.hotel.aboutTheHotel,
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBlock(
        title: 'К выбору номера',
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const HotelRoomPage(
                title: 'Steigenberger Makadi',
              ),
            ),
          );
        },
      ),
    );
  }
}
