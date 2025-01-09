/// Extension on DateTime to format date
extension DateTimeFormatting on DateTime {

  /// Returns a formatted date string eg. '2021-12-31'
  String get dateFormatted {
    return '$year-$month-$day';
  }
}
