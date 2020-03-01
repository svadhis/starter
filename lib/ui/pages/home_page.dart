import 'package:flutter/material.dart';
import 'package:starter/core/starter.dart';
import 'package:starter/state/home_state.dart';
import 'package:starter/state/stores.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var home = Store.home(context);
    var home2 = Store.home2();

    return Scaffold(
      appBar: AppBar(
        title: Text('Starter'),
      ),
      body: Container(
        child: Div(
          child: Column(
            children: <Widget>[
              Txt.subtitle(home.hasData ? home.state.test : 'En attente'),
              FlatButton(
                child: Text('Test'),
                onPressed: () => home.setState((_) => _.setTest2()),
              ),
              StateBuilder(
                tag: 'one',
                models: [home2],
                builder: (context, _) => Column(
                  children: <Widget>[
                    Txt.subtitle(home2.test2),
                    FlatButton(
                      child: Text('Test'),
                      onPressed: () => home2.setTest2(),
                    )
                  ]
                ),
              ),
            ],
          )
        )
      ),
    );
  }
}