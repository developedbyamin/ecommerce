import 'package:intl/intl.dart';

class EFormatter{
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US', symbol: '₼').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    if(phoneNumber.length == 9){
      return '(${phoneNumber.substring(0,2)}) ${phoneNumber.substring(2,5)} ${phoneNumber.substring(5)}';
    } else{
      return phoneNumber;
    }
  }
}