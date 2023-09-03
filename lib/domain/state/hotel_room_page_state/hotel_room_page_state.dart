import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_app/data/models/hotel_room_page/hotel_rooms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repository/hotel_rooms_repository.dart';

part 'hotel_room_page_state.freezed.dart';

part 'hotel_room_page_state.g.dart';

@riverpod
class HotelRoomPageState extends _$HotelRoomPageState {
  @override
  HotelRoomPageStateData build() {
    getHotelRoomsData();

    return HotelRoomPageStateData(
      isLoading: true,
      hotelRooms: HotelRooms(rooms: []),
    );
  }

  Future<void> getHotelRoomsData() async {
    try {
      final rooms = await const ConstHotelRoomsRepository().loadHotelRooms();

      state = state.copyWith(hotelRooms: rooms, isLoading: false);
    } catch (e) {
      debugPrint('Exception: $e');

      state = state.copyWith(hasLoadingError: true, isLoading: false);
    }
  }
}

@freezed
class HotelRoomPageStateData with _$HotelRoomPageStateData {
  const factory HotelRoomPageStateData({
    required HotelRooms hotelRooms,
    @Default(false) bool hasLoadingError,
    @Default(false) bool isLoading,
  }) = _HotelRoomPageStateData;
}
