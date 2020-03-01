import 'package:flutter/material.dart';
import 'package:starter/core/starter.dart';
import 'package:starter/core/theme.dart';
import 'package:starter/state/home2_state.dart';
import 'package:starter/state/home_state.dart';
import 'package:starter/state/stores.dart';
import 'package:starter/ui/pages/home_page.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Injector(
      inject: injectedStores,
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme,
        home: HomePage(),
      )
    ); 
  }
}