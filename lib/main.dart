import 'Core/Screens/BookmarkScreen.dart';
import 'Core/Screens/LandingPage.dart';
import 'package:flutter/material.dart';

import 'Core/Screens/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
//        '/': (BuildContext context) => SplashScreen(),
//        '/': (BuildContext context) => MyStatefulWidget(),
        '/': (BuildContext context) => BookmarkScreen(),

      },
    );
  }
}


