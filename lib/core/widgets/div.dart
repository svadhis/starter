import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class Div extends Parent {

  Div({Widget child, ParentStyle style, Gestures gesture, this.models}) : super(child: child, style: style, gesture: gesture);

  final List<ReactiveModel> models;

}