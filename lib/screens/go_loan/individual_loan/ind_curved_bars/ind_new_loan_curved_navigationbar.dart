import 'package:capex/screens/go_loan/individual_loan/first_individual_loan_form.dart';
import 'package:capex/screens/go_loan/individual_loan/ind_home_go_loan.dart';
import 'package:capex/screens/log_in.dart';
import 'package:capex/screens/my_profile.dart';
import 'package:capex/screens/status.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class IndNewLoanCurvedNavigationBar extends StatefulWidget {
  @override
  _IndNewLoanCurvedNavigationBarState createState() => _IndNewLoanCurvedNavigationBarState();
}

class _IndNewLoanCurvedNavigationBarState extends State<IndNewLoanCurvedNavigationBar> {
  int _currentIndex=0;
  List _pages = [
    FirstIndividualLoanForm(),
    Status(),
    IndHomeGoLoan(),
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
          index: 0,
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
