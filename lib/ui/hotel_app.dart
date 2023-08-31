import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'hotel_page/hotel_page.dart';

final dio = Dio();

class HotelApp extends StatelessWidget {
  const HotelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light().copyWith(
          background: const Color(0xFFF6F6F9),
        ),
        useMaterial3: true,
      ),
      home: const HotelPage(),
    );
  }
}
