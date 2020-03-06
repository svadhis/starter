import 'package:flutter/widgets.dart';
import 'package:starter/views/home/home_state.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

List<Injectable> injectedStores = [
  Inject<HomeState>(() => HomeState()),
];

class Store {

  Store._();

  // Implicit state example
  static ReactiveModel<HomeState> home([BuildContext context]) => Injector.getAsReactive<HomeState>(context: context);

  // Explicit state example
  // static HomeState2 home2([BuildContext context]) => Injector.get<HomeState2>(context: context);
}