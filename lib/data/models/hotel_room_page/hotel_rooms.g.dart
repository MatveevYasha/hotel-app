// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_rooms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotelRooms _$HotelRoomsFromJson(Map<String, dynamic> json) => HotelRooms(
      rooms: (json['rooms'] as List<dynamic>)
          .map((e) => Rooms.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HotelRoomsToJson(HotelRooms instance) =>
    <String, dynamic>{
      'rooms': instance.rooms.map((e) => e.toJson()).toList(),
    };
