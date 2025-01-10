/// Extension on DateTime to format date
extension DateTimeFormatting on DateTime {
  /// Returns a formatted date string eg. '2021-12-31', '2022-01-01'
  String get dateFormatted {
    return '$year-${month.toString().padLeft(2, '0')}'
        '-${day.toString().padLeft(2, '0')}';
  }
}
