import 'package:capex/screens/log_in.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = Duration(seconds: 3);
    // delayed 3 seconds to next page
    Future.delayed(d, () {
      // to next page and close this page
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LogIn();
          },
        ),
            (route) => false,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white
            /*image: DecorationImage(
                image: AssetImage("assets/images/splash_background.jpg"),
                fit: BoxFit.cover)*/
        ),
        child: Center(
          child: Image.asset(
            'assets/images/splash1.jpg',
            width: 600,
          ),
        ),
      ),
    );
  }
}
