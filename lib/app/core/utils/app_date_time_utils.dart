import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

abstract class AppDateTimeUtils {
  static DateFormat defaultTimeForm = DateFormat.Hm();
  static DateFormat defaultTimeSerializableFormat = DateFormat("yyyy-MM-ddTHH:mm:ss");


  static DateTime getEndTimeOfDateTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day, 23, 59, 59);
  }

  static DateTime getCurrentTimeOfDay(){
    return DateTime.now();
  }
  static String getCurrentMonthName() {
    List months =
    ['January', 'February', 'March', 'April', 'May','June','July','August','September','October','November','December'];
    return months[getCurrentTimeOfDay().month - 1];
  }

  static DateTime getStartTimeOfDateTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day, 0, 0, 0);
  }

  static DateTime subtract(DateTime dateTime, Duration duration) {
    return dateTime.subtract(duration);
  }

  static DateTime add(DateTime dateTime, Duration duration) {
    return dateTime.add(duration);
  }

  static String formatDateTime(DateTime dateTime, DateFormat dateFormat) {
    return dateFormat.format(dateTime);
  }

  static String formatDateToSerializableString(DateTime dateTime) {
    return formatDateTime(dateTime, DateFormat("yyyy-MM-ddTHH:mm:ss'Z'"));
  }

  static String formatDateTimeToTimeSerializableString(DateTime dateTime) {
    return formatDateTime(dateTime, DateFormat("HH:mm:ss"));
  }

  static DateTime parseTimeStringToDateTime(String timeString) {
    return defaultTimeSerializableFormat.parse(timeString);
  }

  static DateTime parseDateTimeString(String timeString) {
    return defaultTimeSerializableFormat.parse(timeString);
  }

  static String formatTimeOfDay(
      {required TimeOfDay timeOfDay, DateFormat? dateFormat}) {
    return formatDateTime(
        getDateTimeFromTimeOfDay(timeOfDay), dateFormat ?? defaultTimeForm);
  }

  static DateTime getDateTimeFromTimeOfDay(TimeOfDay timeOfDay) {
    final now = DateTime.now();
    return DateTime(
        now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
  }

  static TimeOfDay getTimeOfDayFromDateTime(DateTime dateTime) {
    return TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);
  }

  static double convertTimeOfDayToDouble(TimeOfDay timeOfDay) {
    return timeOfDay.hour + timeOfDay.minute / 60.0;
  }

  static double compareTimeOfDay(TimeOfDay a,TimeOfDay b){
    return convertTimeOfDayToDouble(a)-convertTimeOfDayToDouble(b);
  }


  static getCurrentDate() {
    return DateFormat('dd/MM/yy').format(DateTime.now());
  }
  static getCurrentDay() {
    const Map<int, String> weekdayName = {1: "Mon", 2: "Tues", 3: "Wed", 4: "Thurs", 5: "Fri", 6: "Sat", 7: "Sun"};
    final now = DateTime.now();
    return weekdayName[now.weekday];
  }
}
