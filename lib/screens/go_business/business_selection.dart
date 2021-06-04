import 'package:capex/components/drawer.dart';
import 'package:flutter/material.dart';

class BusinessSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff3d5a96),
        title: Text(
          'Select',
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 20,),
          onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, '/CompanyType', (route) => false);
          },
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
                        '/HomeGoBusiness',
                    );
                  },
                  child: Image.asset(
                    'assets/images/auditor.png',
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  ),
                )
            ),
            Container(
                padding: EdgeInsets.only(bottom: 50),
                child: Text(
                  'Auditor Adviser Selection',
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
                        '/HomeGoBusiness',
                    );
                  },
                  child: Image.asset(
                    'assets/images/legal.png',
                    fit: BoxFit.cover,
                    width: 170,
                    height: 150,
                  ),
                )
            ),
            Container(
                child: Text(
                  'Legal Adviser Selection',
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
