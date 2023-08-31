import '../../ui/hotel_app.dart';
import '../models/hotelApi/hotel.dart';

abstract class HotelRepository {
  const HotelRepository();

  Future<Hotel> loadProducts();
}

class ConstHotelRepository extends HotelRepository {
  const ConstHotelRepository();

  @override
  Future<Hotel> loadProducts() async {
    try {
      final responce = await dio.get('https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3');
      final hotel = Hotel.fromJson(responce.data);
      return hotel;
    } catch (e) {
      throw Exception('Loading error in repository: $e');
    }
  }
}
