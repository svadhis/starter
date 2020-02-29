import 'package:flutter/material.dart';
import 'package:starter/core/starter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    print(TimeOfDay.now().toDateTime());

    return Scaffold(
      appBar: AppBar(
        title: Text('Starter'),
      ),
      body: Container(
        child: ST_Text.subtitle('010101')
      ),
    );
  }
}