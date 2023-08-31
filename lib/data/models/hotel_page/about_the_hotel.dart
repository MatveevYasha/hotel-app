import 'package:json_annotation/json_annotation.dart';

part 'about_the_hotel.g.dart';

@JsonSerializable(explicitToJson: true)
class AboutTheHotel {
  final String description;
  final List<String> peculiarities;

  AboutTheHotel({
    required this.description,
    required this.peculiarities,
  });

  factory AboutTheHotel.fromJson(Map<String, dynamic> json) => _$AboutTheHotelFromJson(json);
  Map<String, dynamic> toJson() => _$AboutTheHotelToJson(this);
}
