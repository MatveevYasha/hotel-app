import 'package:json_annotation/json_annotation.dart';

part 'rooms.g.dart';

@JsonSerializable(explicitToJson: true)
class Rooms {
  final int id;
  final String name;
  final int price;
  @JsonKey(name: 'price_per')
  final String pricePer;
  final List<String> peculiarities;
  @JsonKey(name: 'image_urls')
  final List<String> imageUrls;

  Rooms({
    required this.id,
    required this.name,
    required this.price,
    required this.pricePer,
    required this.peculiarities,
    required this.imageUrls,
  });

  factory Rooms.fromJson(Map<String, dynamic> json) => _$RoomsFromJson(json);
  Map<String, dynamic> toJson() => _$RoomsToJson(this);
}
