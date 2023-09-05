import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'hotel_page/hotel_page.dart';
import 'theme/color_scheme.dart';

final dio = Dio();

class HotelApp extends StatelessWidget {
  const HotelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: colorScheme,
        useMaterial3: true,
      ),
      home: const HotelPage(),
    );
  }
}
