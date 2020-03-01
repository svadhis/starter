import 'package:flutter/material.dart';
import 'package:starter/core/starter.dart';
import 'package:starter/state/home_state.dart';
import 'package:starter/state/stores.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var home = Store.home(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Starter'),
      ),
      body: Container(
        child: Div(
          child: Column(
            children: <Widget>[
              Text(home.state.test),
              FlatButton(
                child: Text('SWITCH'),
                onPressed: () => home.setState((_) => _.setTest()),
              )
            ],
          )
        )
      ),
    );
  }
}