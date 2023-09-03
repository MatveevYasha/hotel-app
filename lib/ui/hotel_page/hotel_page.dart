import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_app/ui/global_widgets/carousel_with_indicator.dart';
import 'package:hotel_app/ui/theme/text_theme.dart';

import '../../domain/state/hotel_page_state/hotel_page_state.dart';
import '../hotel_room_page/hotel_room_page.dart';
import '../global_widgets/bottom_navigation_block.dart';
import '../global_widgets/hotel_app_bar.dart';
import 'widgets/category_button.dart';
import 'widgets/chips_widget.dart';
import 'widgets/detail_information_block.dart';
import 'widgets/main_information_block.dart';

final List<String> wrapList = [
  '3-я линия',
  'Платный Wi-Fi в фойе',
  '30 км до аэропорта',
  '1 км до пляжа',
];

class HotelPage extends ConsumerWidget {
  const HotelPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.watch(hotelPageStateProvider);

    // if (state.isLoading) {
    //   return const Material(
    //     child: Center(
    //       child: CircularProgressIndicator(
    //         color: Colors.blue,
    //       ),
    //     ),
    //   );
    // }

    // if (state.isLoading) {
    //   return const Material(
    //     child: Center(
    //       child: Text('При загрузке данных произошла ошибка'),
    //     ),
    //   );
    // }

    return Scaffold(
      appBar: const HotelAppBar(title: 'Отель'),
      body: const DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFFF6F6F9),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainInformationBlock(),
              SizedBox(height: 8),
              DetailInformationBlock(),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBlock(
        title: 'К выбору номера',
        onTap: () {
          // TODO: pushReplacement для последнего экрана
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
