import 'package:intl/intl.dart';

extension DateTimeFormatting on DateTime {
  String get dateFormatted {
    return DateFormat.yMMMd().format(this);
  }
}
