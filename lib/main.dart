import 'package:flutter/material.dart';
import 'package:starter/core/starter.dart';
import 'package:starter/core/theme.dart';
import 'package:starter/ui/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      home: HomePage(),
    );
  }
}