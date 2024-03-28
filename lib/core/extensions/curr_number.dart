import 'package:intl/intl.dart';

class CurrFormatedNumber {
  static String formated(number) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'en',
      symbol: 'USD ',
      decimalDigits: 2,
    );
    return currencyFormatter.format(number);
  }
}
