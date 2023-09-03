import 'package:hotel_app/data/models/hotel_room_page/hotel_rooms.dart';

import '../../ui/hotel_app.dart';

abstract class HotelRoomsRepository {
  const HotelRoomsRepository();

  Future<HotelRooms> loadHotelRooms();
}

class ConstHotelRoomsRepository extends HotelRoomsRepository {
  const ConstHotelRoomsRepository();

  @override
  Future<HotelRooms> loadHotelRooms() async {
    try {
      final responce = await dio.get('https://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd');
      final rooms = HotelRooms.fromJson(responce.data);
      return rooms;
    } catch (e) {
      throw Exception('Loading error in repository: $e');
    }
  }
}
