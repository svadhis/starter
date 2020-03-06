import 'package:flutter/material.dart';

extension Ext_DateTime on DateTime {

  TimeOfDay toTimeOfDay() => TimeOfDay.fromDateTime(this);

}