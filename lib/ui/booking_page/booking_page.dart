import 'package:flutter/material.dart';
import 'package:hotel_app/ui/global_widgets/hotel_app_bar.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HotelAppBar(title: 'Бронирование'),
      body: Center(
        child: Text('Информация о покупателе'),
      ),
    );
  }
}
