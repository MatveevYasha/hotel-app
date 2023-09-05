import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_app/ui/hotel_app.dart';

void main() {
  runApp(
    const ProviderScope(
      child: HotelApp(),
    ),
  );
}
