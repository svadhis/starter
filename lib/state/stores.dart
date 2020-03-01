import 'package:flutter/widgets.dart';
import 'package:starter/state/home2_state.dart';
import 'package:starter/state/home_state.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class Store {

  Store._();

  // Implicit state example
  static ReactiveModel<HomeState> home([BuildContext context]) => Injector.getAsReactive<HomeState>(context: context);

  // Explicit state example
  static HomeState2 home2([BuildContext context]) => Injector.get<HomeState2>(context: context);
}