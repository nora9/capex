import 'package:capex/components/drawer.dart';
import 'package:flutter/material.dart';
class CorpHomeGoLoan extends StatefulWidget {
  @override
  _CorpHomeGoLoanState createState() => _CorpHomeGoLoanState();
}


class _CorpHomeGoLoanState extends State<CorpHomeGoLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff3d5a96),
        title: Text(
          'Home',
        ),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/CorpNewLoanCurvedNavigationBar',
                  );
                },
                child : _buildCard('assets/images/NEWLOAN.png','New Loan'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/CorpStatusCurvedNavigationBar',
                  );
                },
                child : _buildCard('assets/images/STATUS.png','Status'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/CorpMyProfileCurvedNavigationBar',
                  );
                },
                child : _buildCard('assets/images/PROFILE.png','Profile'),
              )
            ],
          ),
        ),

      ),
    );
  }
}

Widget _buildCard(String image , String text) {
  return Container(
    height: 150,
    width: double.infinity,
    margin: EdgeInsets.fromLTRB(5, 10, 5, 3),
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
    child: Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Positioned(
              top: 5,
              right: 20,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: 150,
                height: 120,
              )
          ),
          Positioned(
            top: 55,
            left: 25,
            child: Text(
              text,
              style: TextStyle(
                color: Color(0xff3d5a96),
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
