class HomeState {

  String test = 'no';

  setTest() => test = test == 'no' ? 'yes' : 'no';

  setTestDelayed() async {
    await Future.delayed(Duration(seconds: 1));
    setTest();
  } 

}