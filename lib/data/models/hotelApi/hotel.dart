import 'package:hotel_app/data/models/hotelApi/about_the_hotel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hotel.g.dart';

@JsonSerializable(explicitToJson: true)
class Hotel {
  final int id;
  final String name;
  final String adress;
  @JsonKey(name: 'minimal_price')
  final int minimalPrice;
  @JsonKey(name: 'price_for_it')
  final String priceForIt;
  final int rating;
  @JsonKey(name: 'rating_name')
  final String ratingName;
  @JsonKey(name: 'image_urls')
  final List<String> imageUrls;
  @JsonKey(name: 'about_the_hotel')
  final AboutTheHotel aboutTheHotel;

  Hotel({
    required this.id,
    required this.name,
    required this.adress,
    required this.minimalPrice,
    required this.priceForIt,
    required this.rating,
    required this.ratingName,
    required this.imageUrls,
    required this.aboutTheHotel,
  });

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
  Map<String, dynamic> toJson() => _$HotelToJson(this);
}
