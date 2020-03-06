import 'package:flutter/material.dart';

extension Ext_TimeOfDay on TimeOfDay {

  DateTime toDateTime() {
    DateTime now = DateTime.now();
    return DateTime(now.year, now.month, now.day, this.hour, this.minute);
  }

  Duration toDuration() => Duration(hours: this.hour, minutes: this.minute);

}