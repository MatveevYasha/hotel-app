import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_app/data/repository/hotel_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/models/hotel_page/about_the_hotel.dart';
import '../../../data/models/hotel_page/hotel.dart';

part 'hotel_page_state.freezed.dart';

part 'hotel_page_state.g.dart';

@riverpod
class HotelPageState extends _$HotelPageState {
  @override
  HotelPageStateData build() {
    getHotelData();

    return HotelPageStateData(
      hotel: Hotel(
        id: 0,
        name: '',
        adress: '',
        minimalPrice: 0,
        priceForIt: '',
        rating: 0,
        ratingName: '',
        imageUrls: [],
        aboutTheHotel: AboutTheHotel(
          description: '',
          peculiarities: [],
        ),
      ),
      isLoading: true,
    );
  }

  Future<void> getHotelData() async {
    try {
      final hotel = await const ConstHotelRepository().loadProducts();

      state = state.copyWith(hotel: hotel, isLoading: false);
    } catch (e) {
      state = state.copyWith(hasLoadingError: true, isLoading: false);
    }
  }
}

@freezed
class HotelPageStateData with _$HotelPageStateData {
  const factory HotelPageStateData({
    required Hotel hotel,
    @Default(false) bool hasLoadingError,
    @Default(false) bool isLoading,
  }) = _HotelPageStateData;
}
