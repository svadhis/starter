import 'package:flutter/material.dart';
import 'package:starter/core/theme.dart';

enum Style {
  title,
  subtitle
}

class ST_Text extends Text {

  ST_Text.title(String data) : super(data, style: theme.textTheme.title);
  ST_Text.subtitle(String data) : super(data, style: theme.textTheme.subtitle);

}