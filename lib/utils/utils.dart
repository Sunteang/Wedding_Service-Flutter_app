import 'package:intl/intl.dart';

class Utility {
  /// Utility function to trim text
  static String trimText(String text, int maxLength) {
    if (text.length > maxLength) {
      return '${text.substring(0, maxLength)}...';
    }
    return text;
  }

  static String formatPrice(double price) {
    return price.toStringAsFixed(2);
  }

  static String formatDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  static String formatTime(DateTime time) {
    return DateFormat('HH:mm').format(time);
  }

  static String formatDateTime(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd HH:mm').format(dateTime);
  }

  static String formatCurrency(double amount) {
    return NumberFormat('#,##0.00', 'en_US').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    return phoneNumber.replaceAllMapped(RegExp(r'(\d{2})(\d{4})(\d{4})'), (Match match) => '${match[1]} ${match[2]} ${match[3]}');
  }

  static String formatAddress(String address) {
    return address.replaceAllMapped(RegExp(r'(\d{2})(\d{4})(\d{4})'), (Match match) => '${match[1]} ${match[2]} ${match[3]}');
  }
}
