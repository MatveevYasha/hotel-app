import '../../ui/hotel_app.dart';
import '../models/booking_page/booking.dart';

abstract class BookingRepository {
  const BookingRepository();

  Future<Booking> loadBooking();
}

class ConstBookingRepository extends BookingRepository {
  const ConstBookingRepository();

  @override
  Future<Booking> loadBooking() async {
    try {
      final responce = await dio.get('https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8');
      final booking = Booking.fromJson(responce.data);
      return booking;
    } catch (e) {
      throw Exception('Loading error in repository: $e');
    }
  }
}
