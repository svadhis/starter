import 'package:flutter/material.dart';
import 'package:starter/components/constants/theme.dart';

class Txt extends Text {

  Txt.title(BuildContext context, String data) : super(data, style: Theme.of(context).textTheme.title);
  Txt.subtitle(BuildContext context, String data) : super(data, style: Theme.of(context).textTheme.subtitle);

}