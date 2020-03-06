import 'package:starter/components/constants/stores.dart';
import 'package:starter/components/package.dart';
import 'package:starter/components/utils/enum_value.dart';

enum Testou {
  one,
  two
}

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
              Txt.subtitle(context, home.hasData ? home.state.test : '...'),
              FlatButton(
                child: Text('SWITCH'),
                onPressed: () => home.setState((_) => _.setTestDelayed()),
              )
            ],
          )
        )
      ),
    );
  }
}