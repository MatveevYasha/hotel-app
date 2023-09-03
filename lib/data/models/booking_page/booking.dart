import 'package:json_annotation/json_annotation.dart';

part 'booking.g.dart';

@JsonSerializable(explicitToJson: true)
class Booking {
  final int id;
  @JsonKey(name: 'hotel_name')
  final String hotelName;
  @JsonKey(name: 'hotel_adress')
  final String hotelAdress;
  final int horating;
  @JsonKey(name: 'rating_name')
  final String ratingName;
  final String departure;
  @JsonKey(name: 'arrival_country')
  final String arrivalCountry;
  @JsonKey(name: 'tour_date_start')
  final String tourDateStart;
  @JsonKey(name: 'tour_date_stop')
  final String tourDateStop;
  @JsonKey(name: 'number_of_nights')
  final int numberOfNights;
  final String room;
  final String nutrition;
  @JsonKey(name: 'tour_price')
  final int tourPrice;
  @JsonKey(name: 'fuel_charge')
  final int fuelCharge;
  @JsonKey(name: 'service_charge')
  final int serviceCharge;

  Booking({
    required this.id,
    required this.hotelName,
    required this.hotelAdress,
    required this.horating,
    required this.ratingName,
    required this.departure,
    required this.arrivalCountry,
    required this.tourDateStart,
    required this.tourDateStop,
    required this.numberOfNights,
    required this.room,
    required this.nutrition,
    required this.tourPrice,
    required this.fuelCharge,
    required this.serviceCharge,
  });

  factory Booking.fromJson(Map<String, dynamic> json) => _$BookingFromJson(json);
  Map<String, dynamic> toJson() => _$BookingToJson(this);
}
