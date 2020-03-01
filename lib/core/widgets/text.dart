import 'package:flutter/material.dart';
import 'package:starter/core/theme.dart';

enum Style {
  title,
  subtitle
}

class Txt extends Text {

  Txt.title(String data) : super(data, style: theme.textTheme.title);
  Txt.subtitle(String data) : super(data, style: theme.textTheme.subtitle);

}