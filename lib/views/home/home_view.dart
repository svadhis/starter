import 'package:flutter/material.dart';
import 'package:starter/components/constants/stores.dart';
import 'package:starter/components/widgets/div.dart';

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