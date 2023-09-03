import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/models/booking_page/booking.dart';
import '../../../data/repository/booking_repository.dart';

part 'booking_state.freezed.dart';

part 'booking_state.g.dart';

@riverpod
class BookingState extends _$BookingState {
  @override
  BookingStateData build() {
    getBookingData();

    return BookingStateData(
      booking: Booking(
        id: 0,
        hotelName: '',
        hotelAdress: '',
        horating: 0,
        ratingName: '',
        departure: '',
        arrivalCountry: '',
        tourDateStart: '',
        tourDateStop: '',
        numberOfNights: 0,
        room: '',
        nutrition: '',
        tourPrice: 0,
        fuelCharge: 0,
        serviceCharge: 0,
      ),
      isLoading: true,
    );
  }

  Future<void> getBookingData() async {
    try {
      final booking = await const ConstBookingRepository().loadBooking();

      state = state.copyWith(booking: booking, isLoading: false);
    } catch (e) {
      debugPrint('Exception: $e');

      state = state.copyWith(hasLoadingError: true, isLoading: false);
    }
  }
}

@freezed
class BookingStateData with _$BookingStateData {
  const factory BookingStateData({
    required Booking booking,
    @Default(false) bool hasLoadingError,
    @Default(false) bool isLoading,
  }) = _BookingStateData;
}
