/// Converts a 12-hour time string (e.g., "01:00 AM") to a 24-hour string ("HH:mm:ss").
/// Handles edge cases like "12:00 AM" -> "00:00:00" and "12:30 PM" -> "12:30:00".
String convertTo24HourFormat(String twelveHourTime) {
  // Split by space -> ["HH:MM", "AM"] or ["HH:MM", "PM"]
  final parts = twelveHourTime.trim().split(' ');
  if (parts.length != 2) {
    throw FormatException('Invalid time format: $twelveHourTime');
  }

  final timePart = parts[0];    // "HH:MM"
  final amPmPart = parts[1].toUpperCase(); // "AM" or "PM"

  // Split the time by ":" -> ["HH","MM"]
  final timeSplit = timePart.split(':');
  if (timeSplit.length != 2) {
    throw FormatException('Invalid time format: $timePart');
  }

  int hour = int.parse(timeSplit[0]);
  final int minute = int.parse(timeSplit[1]);

  // Validate hour and minute ranges
  if (hour < 1 || hour > 12) {
    throw FormatException('Hour must be between 1 and 12, got $hour.');
  }
  if (minute < 0 || minute > 59) {
    throw FormatException('Minute must be between 0 and 59, got $minute.');
  }

  // Convert 12-hour to 24-hour
  if (amPmPart == 'AM') {
    if (hour == 12) hour = 0; // "12:XX AM" -> "00:XX"
  } else {
    // PM
    if (hour != 12) hour += 12; // "1 PM" -> 13
  }

  final hhStr = hour.toString().padLeft(2, '0');
  final mmStr = minute.toString().padLeft(2, '0');
  return '$hhStr:$mmStr:00'; // final format "HH:mm:ss"
}