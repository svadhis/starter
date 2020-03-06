class HomeState {

  String test = 'no';

  setTest() => test = test == 'no' ? 'yes' : 'no';

  setTest2() async {
    await Future.delayed(Duration(seconds: 1));
    test = test == 'no' ? 'yes' : 'no';
  } 

}