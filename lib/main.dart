import 'package:flutter/material.dart';

import 'HomePage1.dart';
import 'IntroductionScreen.dart';
import 'LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: 'introductionSlider',
      routes: {
        'introductionSlider' : (context) => IntroductionScreen(),
        'homepage1': (context) => HomePage1(),
        'login': (context) => LoginPage()
      }
    );
  }
}
