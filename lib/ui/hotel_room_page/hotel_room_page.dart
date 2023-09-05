import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_app/domain/state/hotel_room_page_state/hotel_room_page_state.dart';
import 'package:hotel_app/ui/global_widgets/custom_navigation_button.dart';
import 'package:hotel_app/ui/global_widgets/hotel_app_bar.dart';
import 'package:hotel_app/ui/global_widgets/layout_widget.dart';

import '../booking_page/booking_page.dart';
import '../global_widgets/carousel_with_indicator.dart';
import '../hotel_page/widgets/chips_widget.dart';
import '../hotel_page/widgets/price_row_widget.dart';
import '../theme/color_scheme.dart';
import '../theme/text_theme.dart';

class HotelRoomPage extends ConsumerWidget {
  final String title;

  const HotelRoomPage({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(hotelRoomPageStateProvider);

    if (state.isLoading) {
      return Material(
        child: Center(
          child: CircularProgressIndicator(
            color: colorScheme.primary,
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
      appBar: HotelAppBar(title: title),
      body: ListView.builder(
        itemCount: state.hotelRooms.rooms.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const SizedBox(height: 8),
              LayoutWidget(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselWithIndicator(
                    images: state.hotelRooms.rooms[index].imageUrls,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      state.hotelRooms.rooms[index].name,
                      style: textTheme.bodyMedium,
                    ),
                  ),
                  Wrap(
                    children: state.hotelRooms.rooms[index].peculiarities
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.only(right: 8, bottom: 8),
                            child: ChipsWidget(
                              title: e,
                              color: colorScheme.secondary,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: ChipsWidget(
                      title: 'Подробнее о номере',
                      color: colorScheme.primary,
                      hasTrailingIcon: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: PriceRowWidget(
                      price: state.hotelRooms.rooms[index].price,
                      description: state.hotelRooms.rooms[index].pricePer,
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
          );
        },
      ),
    );
  }
}
