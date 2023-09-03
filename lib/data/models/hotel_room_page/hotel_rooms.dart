import 'package:hotel_app/data/models/hotel_room_page/rooms.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hotel_rooms.g.dart';

@JsonSerializable(explicitToJson: true)
class HotelRooms {
  final List<Rooms> rooms;

  HotelRooms({
    required this.rooms,
  });

  factory HotelRooms.fromJson(Map<String, dynamic> json) => _$HotelRoomsFromJson(json);
  Map<String, dynamic> toJson() => _$HotelRoomsToJson(this);
}
