import 'package:flutter/material.dart';
import 'package:starter/components/constants/stores.dart';
import 'package:starter/components/constants/theme.dart';
import 'package:starter/views/home/home_view.dart';
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