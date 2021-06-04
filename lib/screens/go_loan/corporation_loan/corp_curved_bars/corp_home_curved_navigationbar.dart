import 'package:capex/screens/go_loan/corporation_loan/corp_home_go_loan.dart';
import 'package:capex/screens/go_loan/corporation_loan/first_corporation_loan_form.dart';
import 'package:capex/screens/log_in.dart';
import 'package:capex/screens/my_profile.dart';
import 'package:capex/screens/status.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CorpHomeCurvedNavigationBar extends StatefulWidget {
  @override
  _CorpHomeCurvedNavigationBarState createState() => _CorpHomeCurvedNavigationBarState();
}

class _CorpHomeCurvedNavigationBarState extends State<CorpHomeCurvedNavigationBar> {
  int _currentIndex=2;
  List _pages = [
    FirstCorporationLoanForm(),
    Status(),
    CorpHomeGoLoan(),
    MyProfile(),
    LogIn()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          items: [
            Icon(Icons.add, size: 30 , color: Color(0xff8dbe5d),),
            Icon(Icons.zoom_out_outlined, size: 30 , color: Color(0xff8dbe5d),),
            Icon(Icons.home, size: 30 , color: Color(0xff8dbe5d),),
            Icon(Icons.person, size: 30 , color: Color(0xff8dbe5d),),
            Icon(Icons.logout, size: 30 , color: Color(0xff8dbe5d),),
          ],
          index: 2,
          onTap: (index) {
            setState(() {
              if(index==4){
                Navigator.pushNamedAndRemoveUntil(context, '/LogIn', (route) => false);
              }
              _currentIndex = index;
            });
          },
          height: 60,
          color: Color(0xff3d5a96),
          buttonBackgroundColor: Color(0xff3d5a96),
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
        )
    );
  }
}
