import 'package:capex/components/drawer.dart';
import 'package:flutter/material.dart';

class GoLoan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff3d5a96),
        title: Text(
          'Go Loan',
        ),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/IndHomeCurvedNavigationBar',
                  );
                },
                child: Image.asset(
                  'assets/images/individual.png',
                  fit: BoxFit.cover,
                  width: 150,
                  height: 150,
                ),
              )
            ),
            Container(
              padding: EdgeInsets.only(bottom: 50),
              child: Text(
                  'Individual',
                style: TextStyle(
                  color: Color(0xff3d5a96)
                ),
              )
            ),
            Container(
                child: InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(
                      context,
                      '/CorpHomeCurvedNavigationBar',
                    );
                  },
                  child: Image.asset(
                    'assets/images/corporation.png',
                    fit: BoxFit.cover,
                    width: 170,
                    height: 150,
                  ),
                )
            ),
            Container(
                child: Text(
                    'Corporation',
                  style: TextStyle(
                      color: Color(0xff3d5a96)
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}


