import 'package:flutter/material.dart';

import 'package:capex/screens/splash.dart';
import 'package:capex/screens/log_in.dart';
import 'package:capex/screens/home/home.dart';
import 'package:capex/screens/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: 'SplashScreen',
      routes: {
        'SplashScreen': (context) => SplashScreen(),
        'LogIn': (context) => LogIn(),
        'SignUp': (context) => SignUp(),
        'Home': (context) => Home(),
      },
    );
  }
}