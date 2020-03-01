import 'package:states_rebuilder/states_rebuilder.dart';

class HomeState2 extends StatesRebuilder {

  String test2 = 'no';

  setTest2() async {
    await Future.delayed(Duration(seconds: 1));
    test2 = test2 == 'no' ? 'yes' : 'no';
    rebuildStates(['one']);
  } 

}